import psycopg2
from flask import Flask, render_template, request
from flask import Flask, render_template, request, redirect, url_for
from flask import render_template
from flask import flash

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

    # SQL query to retrieve reservation details
    query = """
    SELECT 
        Reservations.IDReservation,
        Reservations.IDClient,
        Reservations.IDChambre,
        Reservations.DateReservation,
        Reservations.DateDebut,
        Reservations.DateFin,
        Clients.NomComplet AS ClientName,
        Clients.Adresse AS ClientAddress
    FROM 
        Reservations
    INNER JOIN 
        Clients ON Reservations.IDClient = Clients.IDClient
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




app.secret_key = '1234'


if __name__ == '__main__':
    app.run(debug=True)
