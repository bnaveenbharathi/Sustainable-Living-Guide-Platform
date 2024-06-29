import MySQLdb
from flask import Flask, render_template as render, redirect, url_for, request, session
from flask_mysqldb import MySQL
from flask_bcrypt import Bcrypt
# Database fetch
class Database:
    def __init__(self, mysql):
        self.mysql = mysql

    def fetch_all_detail(self, email):
        con = self.mysql.connection.cursor()
        con.execute('SELECT * FROM users WHERE email=%s', (email,))
        result = con.fetchone()
        con.close()
        return result

    def update_user_details(self, email, details):
        query = """
        UPDATE users
        SET 
            lifestyle = %s,
            residence = %s,
            household_size = %s,
            home_ownership = %s,
            garden_access = %s,
            transport_mode = %s,
            transport_frequency = %s,
            sustainable_transport = %s,
            home_heating = %s,
            energy_reduction = %s,
            water_usage = %s,
            water_reduction_interest = %s,
            cook_frequency = %s,
            local_organic_food = %s,
            diet_restrictions = %s,
            food_waste_interest = %s,
            recycle_frequency = %s,
            recycle_materials = %s,
            composting_interest = %s,
            clothing_purchase_frequency = %s,
            purchase_impact = %s,
            sustainable_brands_interest = %s,
            sustainability_reasons = %s,
            sustainability_interests = %s,
            sustainability_challenges = %s,
            local_events_interest = %s,
            community_forum_interest = %s,
            tips_preference = %s,
            platform_feedback = %s
        WHERE email = %s;
        """
        values = (
            details['lifestyle'],
            details['residence'],
            details['household_size'],
            details['home_ownership'],
            details['garden_access'],
            details['transport_mode'],
            details['transport_frequency'],
            details['sustainable_transport'],
            details['home_heating'],
            details['energy_reduction'],
            details['water_usage'],
            details['water_reduction_interest'],
            details['cook_frequency'],
            details['local_organic_food'],
            details['diet_restrictions'],
            details['food_waste_interest'],
            details['recycle_frequency'],
            details['recycle_materials'],
            details['composting_interest'],
            details['clothing_purchase_frequency'],
            details['purchase_impact'],
            details['sustainable_brands_interest'],
            details['sustainability_reasons'],
            details['sustainability_interests'],
            details['sustainability_challenges'],
            details['local_events_interest'],
            details['community_forum_interest'],
            details['tips_preference'],
            details['platform_feedback'],
            email
        )
        con = self.mysql.connection.cursor()
        con.execute(query, values)
        self.mysql.connection.commit()
        con.close()

# DB Connection
app = Flask(__name__)
app.secret_key = "123ecox"
bcrypt = Bcrypt(app)
appname = "EcoX"
app.config["MYSQL_HOST"] = 'localhost'
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ''
app.config["MYSQL_DB"] = "ecox"
app.config["MYSQL_CURSORCLASS"] = 'DictCursor'
mysql = MySQL(app)

db = Database(mysql)

@app.route('/signup', methods=["GET", "POST"])
def signup():
    if request.method == 'POST':
        email = request.form["email"]
        password = request.form["password"]
        hashpassword = bcrypt.generate_password_hash(password).decode('utf-8')
        con = mysql.connection.cursor()
        sql = "INSERT INTO users (email, password) VALUES (%s, %s)"
        con.execute(sql, (email, hashpassword))
        mysql.connection.commit()
        con.close()
        return redirect(url_for('login'))
    return render('signup.html')

@app.route('/login', methods=["GET", "POST"])
def login():
    if request.method == "POST":
        email = request.form["email"]
        password = request.form["password"]
        con = mysql.connection.cursor()
        sql = "SELECT password FROM users WHERE email=%s"
        con.execute(sql, (email,))
        res = con.fetchone()
        con.close()
        if res and bcrypt.check_password_hash(res['password'], password):
            session["loggedin"] = True
            session["email"] = email
            return redirect(url_for('home'))
    return render('login.html')

@app.route('/', methods=['GET', 'POST'])
def home():
    if 'email' in session:
        email = session['email']
        detail = db.fetch_all_detail(email)
        return render('index.html', info=detail, name=appname)
    else:
        return redirect(url_for('login'))

@app.route('/settings', methods=["GET", "POST"])
def settings():
    if 'email' in session:
        email = session['email']
        detail = db.fetch_all_detail(email)
        return render('settings.html', info=detail, name=appname)
    else:
        return redirect(url_for('login'))

@app.route('/update-info', methods=["GET", "POST"])
def updateinfo():
    if 'email' in session:
        email = session['email']
        detail = db.fetch_all_detail(email)
        if request.method == "POST":
            name = request.form["name"]
            agegroup = request.form['age-group']
            occupation = request.form['occupation']
            new_email = request.form['email']
            password = request.form['password']
            hashedpassword = bcrypt.generate_password_hash(password).decode('utf-8')
            con = mysql.connection.cursor()
            sql = "UPDATE users SET name=%s, age_group=%s, occupation=%s, email=%s, password=%s WHERE email=%s"
            con.execute(sql, (name, agegroup, occupation, new_email, hashedpassword, email))
            mysql.connection.commit()
            session['email'] = new_email
            return redirect(url_for('updateinfo'))
        return render('infoupdate.html', info=detail, name=appname)
    else:
        return redirect(url_for('login'))

@app.route('/recycle_centers', methods=["GET", "POST"])
def recyclecenters():
    if 'email' in session:
        email = session['email']
        detail = db.fetch_all_detail(email)
        if request.method == "POST":
            city = request.form["city"]
            zip_code = request.form["postal_code"]
            con = mysql.connection.cursor()
            sql = "SELECT * FROM recycling_centers WHERE city = %s OR zip_code = %s"
            con.execute(sql, (city, zip_code))
            centers = con.fetchall()
            con.close()
            return render('recyclingcenters.html', info=detail, name=appname, centers=centers)
        return render('recyclingcenters.html', info=detail, name=appname) 
    else:
        return redirect(url_for('login'))

@app.route('/carboncalculator')
def carboncalculator():
    if 'email' in session:
        email = session['email']
        detail = db.fetch_all_detail(email)
        return render('carbonfootprint.html', name=appname, info=detail)
    else:
        return redirect(url_for('login'))

@app.route('/personalinfo', methods=["GET", "POST"])
def personalinfo():
    if 'email' in session:
        email = session["email"]
        detail = db.fetch_all_detail(email)
        if request.method == "POST":
            updated_details = {
                'lifestyle': request.form['lifestyle'],
                'residence': request.form['residence'],
                'household_size': request.form['household_size'],
                'home_ownership': request.form['home_ownership'],
                'garden_access': request.form['garden_access'],
                'transport_mode': request.form['transport_mode'],
                'transport_frequency': request.form['transport_frequency'],
                'sustainable_transport': request.form['sustainable_transport'],
                'home_heating': request.form['home_heating'],
                'energy_reduction': request.form['energy_reduction'],
                'water_usage': request.form['water_usage'],
                'water_reduction_interest': request.form['water_reduction_interest'],
                'cook_frequency': request.form['cook_frequency'],
                'local_organic_food': request.form['local_organic_food'],
                'diet_restrictions': request.form['diet_restrictions'],
                'food_waste_interest': request.form['food_waste_interest'],
                'recycle_frequency': request.form['recycle_frequency'],
                'recycle_materials': request.form['recycle_materials'],
                'composting_interest': request.form['composting_interest'],
                'clothing_purchase_frequency': request.form['clothing_purchase_frequency'],
                'purchase_impact': request.form['purchase_impact'],
                'sustainable_brands_interest': request.form['sustainable_brands_interest'],
                'sustainability_reasons': request.form['sustainability_reasons'],
                'sustainability_interests': request.form['sustainability_interests'],
                'sustainability_challenges': request.form['sustainability_challenges'],
                'local_events_interest': request.form['local_events_interest'],
                'community_forum_interest': request.form['community_forum_interest'],
                'tips_preference': request.form['tips_preference'],
                'platform_feedback': request.form['platform_feedback']
            }
            db.update_user_details(email, updated_details)
            return redirect(url_for('personalinfo'))
        return render('infoprofile.html', name=appname, info=detail)
    else:
        return redirect(url_for('login'))

@app.route('/deleteinfor')
def deleteinfo():
    if 'email' in session:
        email = session['email']
        con = mysql.connection.cursor()
        sql = """
        UPDATE users
        SET 
            lifestyle = NULL,
            residence = NULL,
            household_size = NULL,
            home_ownership = NULL,
            garden_access = NULL,
            transport_mode = NULL,
            transport_frequency = NULL,
            sustainable_transport = NULL,
            home_heating = NULL,
            energy_reduction = NULL,
            water_usage = NULL,
            water_reduction_interest = NULL,
            cook_frequency = NULL,
            local_organic_food = NULL,
            diet_restrictions = NULL,
            food_waste_interest = NULL,
            recycle_frequency = NULL,
            recycle_materials = NULL,
            composting_interest = NULL,
            clothing_purchase_frequency = NULL,
            purchase_impact = NULL,
            sustainable_brands_interest = NULL,
            sustainability_reasons = NULL,
            sustainability_interests = NULL,
            sustainability_challenges = NULL,
            local_events_interest = NULL,
            community_forum_interest = NULL,
            tips_preference = NULL,
            platform_feedback = NULL
        WHERE 
            email = %s;
        """
        con.execute(sql, (email,))
        mysql.connection.commit()
        con.close()
    return redirect(url_for('personalinfo'))


    
@app.route('/logout')
def logout():
    session.pop('loggedin', None)
    session.pop('email', None)
    return redirect(url_for('login'))

if __name__ == "__main__":
    app.run(debug=True)
