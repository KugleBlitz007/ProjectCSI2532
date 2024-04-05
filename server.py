import psycopg2
from flask import Flask, render_template, request
from flask import Flask, render_template, request, redirect, url_for
from flask import render_template
from flask import flash
import uuid
from datetime import datetime
from flask import session

# Connection parameters

# les dates (début, fin) de réservation ou de location, la capacité des chambres,
#la superficie, la chaîne hôtelière, la catégorie de l’hôtel,
#le nombre total de chambres dans l’hôtel, le prix des chambres

app = Flask(__name__)

db_params = {
    'host': 'localhost',
    'port': '5432',
    'database': 'csi 2532',
    'user': 'postgres',
    'password': 'Ricola31'
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
        guests = int(request.form.get('guests'))  # Convert guests to int
        prix = float(request.form.get('prix'))  # Convert prix to float

        session['checkInDate'] = checkInDate
        session['checkOutDate'] = checkOutDate

    # Exécution de la requête SQL (remplacez la requête par la vôtre)
        query = "SELECT NomHotel, Prix, Capacite, IDChambre FROM Chambres WHERE NomChaineHotel = %s and Prix < %s;"
        cursor.execute(query, (hotelchaine, prix))
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

    id_chambre = request.args.get('id_chambre')
    session['id_chambre'] = id_chambre

    return render_template('reservation_form.html')

from datetime import datetime  # Assurez-vous que cette importation est présente en haut du fichier

@app.route('/confirm_reservation', methods=['POST'])
def confirm_reservation():
    if request.method == 'POST':
        # Récupérer les données du formulaire
        nom_complet = request.form.get('NomComplet')
        adresse = request.form.get('Adresse')
        numero_secu_sociale = request.form.get('NumeroSecuriteSociale')
        checkInDate = session.get('checkInDate')
        checkOutDate = session.get('checkOutDate')
        room_type = request.form.get('room-type')
        chaine_hoteliere = request.form.get('chaine_hoteliere')  # Change variable name
        guests = request.form.get('guests')
        id_chambre = session.get('id_chambre')

        # Connexion à la base de données
        connection = psycopg2.connect(**db_params)
        cursor = connection.cursor()

        try:
            # Générer un ID client aléatoire
            id_client = int(uuid.uuid4().int % (10 ** 8))

            # Insérer les données du client dans la table "Clients"
            insert_client_query = """
            INSERT INTO Clients (IDClient, NomComplet, Adresse, NumeroSecuriteSociale, DateEnregistrement)
            VALUES (%s, %s, %s, %s, %s)
            """
            cursor.execute(insert_client_query, (id_client, nom_complet, adresse, numero_secu_sociale, datetime.now()))
            connection.commit()

            # Générer un ID de réservation aléatoire
            id_reservation = int(uuid.uuid4().int % (10 ** 8))

            # Insérer les données de réservation dans la table "Reservations"
            insert_reservation_query = """
            INSERT INTO Reservations (IDReservation, IDClient, IDchambre, DateReservation, DateDebut, DateFin)
            VALUES (%s, %s, %s, %s, %s, %s)
            """
            cursor.execute(insert_reservation_query, (id_reservation, id_client, id_chambre, datetime.now(), checkInDate, checkOutDate))
            connection.commit()

            # Fermer la connexion à la base de données
            cursor.close()
            connection.close()

            # Afficher le numéro de réservation
            return render_template('reservation_confirmed.html', reservation_id=id_reservation)

        except Exception as e:
            # En cas d'erreur, effectuer un rollback et renvoyer un message d'erreur
            connection.rollback()
            cursor.close()
            connection.close()
            return "An error occurred: {}".format(str(e))



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
def toggle_client_arrival():
    reservation_id = request.form.get('reservation_id')

    try:
        # Connect to the database
        connection = psycopg2.connect(**db_params)
        cursor = connection.cursor()

        # Toggle the client_arrived status in the database
        update_query = """
        UPDATE Reservations
        SET client_arrived = TRUE
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
