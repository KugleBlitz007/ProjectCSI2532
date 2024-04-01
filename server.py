import psycopg2
from flask import Flask, render_template, request
from flask import Flask, render_template, request, redirect, url_for
from flask import render_template
from flask import flash
import uuid
from datetime import datetime

# Connection parameters

# les dates (début, fin) de réservation ou de location, la capacité des chambres,
#la superficie, la chaîne hôtelière, la catégorie de l’hôtel,
#le nombre total de chambres dans l’hôtel, le prix des chambres

app = Flask(__name__)

db_params = {
    'host': 'localhost',
    'port': '5432',
    'database': 'postgres', 
    'user': 'postgres',
    'password': 'piment'
}

# Establishing a connection
connection = psycopg2.connect(**db_params)
cursor = connection.cursor()

# Add index to Chambres table if it doesn't already exist
cursor.execute("CREATE INDEX IF NOT EXISTS idx_chambres_nom_chaine_hotel ON Chambres (NomChaineHotel);")
cursor.execute("CREATE INDEX IF NOT EXISTS idx_chambres_prix ON Chambres (Prix);")
connection.commit()

# Add index to Clients table if it doesn't already exist
cursor.execute("CREATE INDEX IF NOT EXISTS idx_clients_nom_complet ON Clients (NomComplet);")
cursor.execute("CREATE INDEX IF NOT EXISTS idx_clients_numero_ss ON Clients (NumeroSecuriteSociale);")
connection.commit()

# Add index to Reservations table if it doesn't already exist
cursor.execute("CREATE INDEX IF NOT EXISTS idx_reservations_id_client ON Reservations (IDClient);")
cursor.execute("CREATE INDEX IF NOT EXISTS idx_reservations_id_chambre ON Reservations (IDChambre);")
connection.commit()

# Close cursor and connection
cursor.close()
connection.close()

# Page d'accueil
@app.route('/')
def home():
    return render_template('index.html')

# Exécute la requête SQL lorsqu'un formulaire est soumis

@app.route('/execute_query', methods=['POST'])
def execute_query():
    # Connexion à la base de données
    connection = psycopg2.connect(**db_params)
    cursor = connection.cursor()

    if request.method == 'POST':

        hotelchaine = request.form.get('chainehoteliere')
        roomtype = request.form.get('room-type')
        checkInDate = request.form.get('check-in-date')
        checkOutDate = request.form.get('check-out-date')
        guests = request.form.get('guests')
        prix = request.form.get('prix')

        #chain_hoteliere = request.form['chainehoteliere']

    # Exécution de la requête SQL (remplacez la requête par la vôtre)
        query = "SELECT NomHotel, Prix, Capacite FROM Chambres WHERE NomChaineHotel = '" + hotelchaine + "' and Prix < " + prix + " ;"
        cursor.execute(query)
        result = cursor.fetchall()

    # Fermeture de la connexion à la base de données
    cursor.close()
    connection.close()

    # Renvoi des résultats à la page

    return render_template('result.html', result=result)

@app.route('/employee-action')
def create_reservation():
    return render_template('create_reservation.html')

@app.route('/reservation', methods=['GET', 'POST'])
def reservation_form():
    return render_template('reservation_form.html')


@app.route('/confirm_reservation', methods=['POST'])
def confirm_reservation():
    if request.method == 'POST':
        # Récupérer les données du formulaire
        NomComplet = request.form.get('NomComplet')
        Adresse = request.form.get('Adresse')
        NumeroSecuriteSociale = request.form.get('NumeroSecuriteSociale')

        # Générer un ID client aléatoire
        IDClient = int(uuid.uuid4().int % (10 ** 8))

        # Récupérer la date d'enregistrement
        DateEnregistrement = datetime.now()

        # Connexion à la base de données
        connection = psycopg2.connect(**db_params)
        cursor = connection.cursor()

        # Insérer les données du client dans la table "clients"
        insert_query = "INSERT INTO clients (IDClient, NomComplet, Adresse, NumeroSecuriteSociale, DateEnregistrement) VALUES (%s, %s, %s, %s, %s)"
        cursor.execute(insert_query, (IDClient, NomComplet, Adresse, NumeroSecuriteSociale, DateEnregistrement))
        connection.commit()

        # Fermer la connexion à la base de données
        cursor.close()
        connection.close()

    return render_template('reservation_confirmed.html')


@app.route('/employee_page-action', methods=['GET', 'POST'])
def employee_page():
    if request.method == 'GET':
        # Handle GET request (render the employee page)
        return render_template('employeePage.html')
    elif request.method == 'POST':
        # Handle POST request (perform actions based on form submission)
        # Add your code here to handle the form submission
        pass  # Placeholder for handling POST request


def query_reservation_details(reservation_id):
    # Connect to the database
    connection = psycopg2.connect(**db_params)
    cursor = connection.cursor()

    # SQL query to retrieve reservation details including hotel information
    query = """
    SELECT 
        Reservations.IDReservation,
        Reservations.IDClient,
        Reservations.IDChambre,
        Reservations.DateReservation,
        Reservations.DateDebut,
        Reservations.DateFin,
        Clients.NomComplet AS ClientName,
        Clients.Adresse AS ClientAddress,
        Reservations.client_arrived,
        Hotels.NomHotel AS HotelName,
        Hotels.AdresseHotel AS HotelAddress
    FROM 
        Reservations
    INNER JOIN 
        Clients ON Reservations.IDClient = Clients.IDClient
    INNER JOIN
        Chambres ON Reservations.IDChambre = Chambres.IDChambre
    INNER JOIN
        Hotels ON Chambres.IDHotel = Hotels.IDHotel
    WHERE 
        Reservations.IDReservation = %s;
    """

    # Execute the query with the reservation ID parameter
    cursor.execute(query, (reservation_id,))
    
    # Fetch the first row (assuming there's only one reservation per ID)
    reservation_details = cursor.fetchone()

    # Close cursor and connection
    cursor.close()
    connection.close()

    return reservation_details


    
@app.route('/search_reservation', methods=['POST'])
def search_reservation():
    reservation_id = request.form.get('reservation_id')
    
    # Query the database to get reservation details based on ID
    reservation_details = query_reservation_details(reservation_id)
    
    if reservation_details:
        return render_template('reservation_details.html', reservation_details=reservation_details)
    else:
        return render_template('reservation_not_found.html')

@app.route('/delete_reservation', methods=['POST'])
def delete_reservation():
    reservation_id = request.form.get('reservation_id')
    
    # Connect to the database
    connection = psycopg2.connect(**db_params)
    cursor = connection.cursor()

    try:
        # SQL query to delete the reservation
        delete_query = "DELETE FROM Reservations WHERE IDReservation = %s;"
        cursor.execute(delete_query, (reservation_id,))
        connection.commit()
        
        # Close cursor and connection
        cursor.close()
        connection.close()
        
        # Redirect to the homepage or a success page
        return redirect('/')
    except Exception as e:
        # Handle database errors or other exceptions
        # Rollback changes
        connection.rollback()
        # Close cursor and connection
        cursor.close()
        connection.close()
        # Redirect to an error page or display an error message
        return "An error occurred: {}".format(str(e))

@app.route('/toggle_client_arrival', methods=['POST'])
@app.route('/toggle_client_arrival', methods=['POST'])
def toggle_client_arrival():
    reservation_id = request.form.get('reservation_id')
    
    try:
        # Connect to the database
        connection = psycopg2.connect(**db_params)
        cursor = connection.cursor()

        # Toggle the client_arrived status in the database
        update_query = """
        UPDATE Reservations
        SET client_arrived = NOT client_arrived
        WHERE IDReservation = %s;
        """
        cursor.execute(update_query, (reservation_id,))
        connection.commit()
        
        # Close cursor and connection
        cursor.close()
        connection.close()
        
        # Redirect to the homepage or a success page
        return redirect('/')
    except Exception as e:
        # Handle database errors or other exceptions
        # Rollback changes
        connection.rollback()
        # Close cursor and connection
        cursor.close()
        connection.close()
        # Redirect to an error page or display an error message
        return "An error occurred: {}".format(str(e))



app.secret_key = '1234'


if __name__ == '__main__':
    app.run(debug=True)
