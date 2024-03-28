import psycopg2
from flask import Flask, render_template, request
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
    'password': 'jack'
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
def employee_page():
    return render_template('employee.html')



if __name__ == '__main__':
    app.run(debug=True)
