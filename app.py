from flask import Flask, render_template as render, redirect, url_for, request, session
from flask_mysqldb import MySQL
from flask_bcrypt import Bcrypt
from datetime import datetime
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
        name = request.form["name"]
        age_group= request.form["age_group"]
        password = request.form["password"]
        hashpassword = bcrypt.generate_password_hash(password).decode('utf-8')
        con = mysql.connection.cursor()
        sql = "INSERT INTO users (email, password,name,age_group) VALUES (%s, %s,%s,%s)"
        con.execute(sql, (email, hashpassword,name,age_group))
        mysql.connection.commit()
        con.close()
        return redirect(url_for('personalinfoinsert'))
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

@app.route('/carboncalculator',methods=["GET","POST"])
def carboncalculator():
    if 'email' in session:
        email = session['email']
        detail = db.fetch_all_detail(email)
        user_id=detail['id']
        if request.method=="POST":
            electricity = float(request.form['electricity'])
            gas = float(request.form['gas'])
            mileage = float(request.form['mileage'])
            flight = float(request.form['flight'])
            #default value
            electricity_emission_factor = 0.82
            gas_emission_factor = 2.93
            mileage_emission_factor = 0.180
            flight_emission_factor = 190
            #calculation
            total_footprint = (electricity * electricity_emission_factor +
                               gas * gas_emission_factor +
                               mileage * mileage_emission_factor +
                               flight * flight_emission_factor)
            calculation_date = datetime.now()
            con=mysql.connection.cursor()
            sql="""INSERT INTO carbon_footprints (user_id, electricity_usage, gas_usage, mileage, flight_hours, total_footprint, calculation_date)
                   VALUES (%s, %s, %s, %s, %s, %s, %s)"""
            con.execute(sql,(user_id, electricity, gas, mileage, flight, total_footprint, calculation_date))
            mysql.connection.commit()
            con.close()
            return render('carbonfootprintresult.html',footprint=total_footprint,name=appname,info=detail)
        return render('carbonfootprint.html', name=appname, info=detail)
    else:
        return redirect(url_for('login'))
    
@app.route('/footprint_history')
def footprint_history():
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        user_id=detail['id']
        con=mysql.connection.cursor()
        con.execute("SELECT * FROM carbon_footprints WHERE user_id = %s", (user_id,))
        footprints=con.fetchall()
        con.close()
        return render('carbonfootprinthistory.html', footprints=footprints,info=detail,name=appname)
    return redirect(url_for('login'))
    

#tipssection routes
@app.route('/tips')
def tipssection():
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        return render('tips.html',name=appname,info=detail)
    else:
        return redirect('login')
@app.route('/commontips')
def commontips():
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        con=mysql.connection.cursor()
        sql="SELECT * from articles1 "
        con.execute(sql)
        article=con.fetchall()
        mysql.connection.commit()
        con.close()
        return render('commontips.html',name=appname,info=detail,article=article)
    else:
        return redirect(url_for('login'))
@app.route('/articles/<string:id>')
def commontipsarticles(id):
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        con=mysql.connection.cursor()
        sql="SELECT * from articles1 where id=%s"
        con.execute(sql,(id,))
        article=con.fetchall()
        mysql.connection.commit()
        con.close()
        return render('commonarticle.html',name=appname,info=detail,article=article)

#personalize tips logic
@app.route('/personalized-tips')
def personalized_tips():
    if 'email' in session:
        email = session['email']
        detail=db.fetch_all_detail(email)
        con = mysql.connection.cursor()
        sql = "SELECT * FROM users WHERE email = %s"
        con.execute(sql, (email,))
        user = con.fetchone()
        preferences = [
            ('energy_reduction', user['energy_reduction']),
            ('sustainable_transport', user['sustainable_transport']),
            ('recycle_frequency', user['recycle_frequency']),
            ('composting_interest', user['composting_interest']),
            ('local_organic_food', user['local_organic_food']),
            ('diet_restrictions', user['diet_restrictions']),
            ('home_ownership', user['home_ownership']),
            ('water_reduction_interest', user['water_reduction_interest']),
            ('purchase_impact', user['purchase_impact'])
        ]
        
        tips_by_category = {}
        for preference, value in preferences:
            if value in ['yes', 'always', 'sometimes', True, 'vegan', 'vegetarian', 'own']:
                sql = """
                SELECT a.category, a.title, a.content,a.description,a.id
                FROM articles2 a
                JOIN user_preferences_articles upa ON a.id = upa.article_id
                WHERE upa.preference = %s
                """
                con.execute(sql, (preference,))
                articles = con.fetchall()
                
                for article in articles:
                    category = article['category']
                    if category not in tips_by_category:
                        tips_by_category[category] = []
                    tips_by_category[category].append({
                        'id': article['id'],
                        'title': article['title'],
                        'content': article['content'],
                        'description': article['description']
                    })
        
        con.close()
        
        return render('personalized_tips.html',name=appname, info=detail, tips_by_category=tips_by_category)
    else:
        return redirect(url_for('login'))
    

@app.route('/personalized-tips/<string:id>')
def personalized_tips_article(id):
    if 'email' in session:
        email = session['email']
        detail=db.fetch_all_detail(email)
        con = mysql.connection.cursor()
        sql = "SELECT * FROM users WHERE email = %s"
        con.execute(sql, (email,))
        user = con.fetchone()
        preferences = [
            ('energy_reduction', user['energy_reduction']),
            ('sustainable_transport', user['sustainable_transport']),
            ('recycle_frequency', user['recycle_frequency']),
            ('composting_interest', user['composting_interest']),
            ('local_organic_food', user['local_organic_food']),
            ('diet_restrictions', user['diet_restrictions']),
            ('home_ownership', user['home_ownership']),
            ('water_reduction_interest', user['water_reduction_interest']),
            ('purchase_impact', user['purchase_impact'])
        ]
        
        tips_by_category = {}
        for preference, value in preferences:
            if value in ['yes', 'always', 'sometimes', True, 'vegan', 'vegetarian', 'own']:
                sql = """
                SELECT a.category, a.title, a.content,a.description
                FROM articles2 a
                JOIN user_preferences_articles upa ON a.id = upa.article_id
                WHERE upa.preference = %s and a.id=%s
                """
                con.execute(sql, (preference,id))
                articles = con.fetchall()
                
                for article in articles:
                    category = article['category']
                    if category not in tips_by_category:
                        tips_by_category[category] = []
                    tips_by_category[category].append({
                        'title': article['title'],
                        'content': article['content'],
                        'description': article['description']
                    })
        
        con.close()
        
        return render('personalized_tips_article.html',name=appname, info=detail, tips_by_category=tips_by_category)
    else:
        return redirect(url_for('login'))

@app.route('/localresources')
def localresources():
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        return render('localresources.html',name=appname,info=detail)
    else:
        return redirect('login')
@app.route('/personalinfoupdate', methods=["GET", "POST"])
def personalinfoupdate():
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

#view the personalinfo
@app.route('/personalinfo')
def personalinfo():
    if 'email' in session:
        email = session['email']
        details = db.fetch_all_detail(email)
        return render('infoprofileread.html', name=appname, info=details)
    else:
        return redirect(url_for('login'))

#insert the personal information
@app.route('/personalinfoinsert', methods=["GET", "POST"])
def personalinfoinsert():
    if request.method == 'POST':
        email = request.form['email']
        occupation = request.form['occupation']
        lifestyle = request.form['lifestyle']
        residence = request.form['residence']
        household_size = request.form['household_size']
        home_ownership = request.form['home_ownership']
        garden_access = request.form['garden']
        transport_mode = request.form['transport_mode']
        transport_frequency = request.form['transport_frequency']
        sustainable_transport = request.form['sustainable_transport']
        home_heating = request.form['home_heating']
        energy_reduction = request.form['energy_reduction']
        water_usage = request.form['water_usage']
        water_reduction_interest = request.form['water_reduction_interest']
        cook_frequency = request.form['cook_frequency']
        local_organic_food = request.form['local_organic_food']
        diet_restrictions = request.form['diet_restrictions']
        food_waste_interest = request.form['food_waste_interest']
        recycle_frequency = request.form['recycle_frequency']
        recycle_materials = request.form['recycle_materials']
        composting_interest = request.form['composting_interest']
        clothing_purchase_frequency = request.form['clothing_purchase_frequency']
        purchase_impact = request.form['purchase_impact']
        sustainable_brands_interest = request.form['sustainable_brands_interest']
        sustainability_reasons = request.form['sustainability_reasons']
        sustainability_interests = request.form['sustainability_interests']
        sustainability_challenges = request.form['sustainability_challenges']
        local_events_interest = request.form['local_events_interest']
        community_forum_interest = request.form['community_forum_interest']
        tips_preference = request.form['tips_preference']
        platform_feedback = request.form['platform_feedback']

        con = mysql.connection.cursor()
        update_sql = """
                UPDATE users SET occupation = %s, lifestyle = %s, residence = %s, household_size = %s, 
                home_ownership = %s,garden_access = %s, transport_mode = %s, transport_frequency = %s, 
                sustainable_transport = %s, home_heating = %s, energy_reduction = %s, water_usage = %s, 
                water_reduction_interest = %s, cook_frequency = %s, local_organic_food = %s, diet_restrictions = %s, 
                food_waste_interest = %s, recycle_frequency = %s, recycle_materials = %s, composting_interest = %s, 
                clothing_purchase_frequency = %s, purchase_impact = %s, sustainable_brands_interest = %s, 
                sustainability_reasons = %s, sustainability_interests = %s, sustainability_challenges = %s, 
                local_events_interest = %s, community_forum_interest = %s, tips_preference = %s, platform_feedback = %s 
                WHERE email = %s
            """
        update_data = (occupation, lifestyle, residence, household_size, home_ownership,
                           garden_access, transport_mode, transport_frequency, sustainable_transport,
                           home_heating, energy_reduction, water_usage, water_reduction_interest,
                           cook_frequency, local_organic_food, diet_restrictions, food_waste_interest,
                           recycle_frequency, recycle_materials, composting_interest,
                           clothing_purchase_frequency, purchase_impact, sustainable_brands_interest,
                           sustainability_reasons, sustainability_interests, sustainability_challenges,
                           local_events_interest, community_forum_interest, tips_preference, platform_feedback, email)
            
        con.execute(update_sql, update_data)
        
        
        mysql.connection.commit()
        con.close()
        
        return redirect(url_for('login'))
    else:
        return render('infoprofileinsert.html', name=appname)

    
#delete personal information
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

#community section
@app.route('/viewcommuntiy')
def viewcommunity():
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        con=mysql.connection.cursor()
        sql1="SELECT * FROM ideas ORDER BY created_at DESC"
        con.execute(sql1)
        ideas=con.fetchall()
        sql2="SELECT * FROM events ORDER BY created_at DESC"
        con.execute(sql2)
        events=con.fetchall()
        sql3="SELECT * from eco_incidents ORDER BY date_posted DESC"
        con.execute(sql3)
        eco_incidents=con.fetchall()
        mysql.connection.commit()
        con.close()
        return render('community.html',name=appname,info=detail,ideas=ideas,events=events,incidents=eco_incidents)
    else:
        return redirect(url_for('login'))

@app.route('/sharetocommunity',methods=['GET',"POST"])
def sharetocommunity():
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        return render('communityinsert.html',name=appname,info=detail)
    else:
        return redirect(url_for('login'))

@app.route('/eventinsert',methods=["GET",'POST'])
def eventinsert():
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        if request.method == "POST":
            title = request.form['title']
            description = request.form['description']
            event_type = request.form.get('event_type')
            event_start = request.form.get('event_start')
            event_end = request.form.get('event_end')
            location = request.form['location']
            user_id = detail['id']
            user_name = detail['name']
            con=mysql.connection.cursor()
            sql = """INSERT INTO events (user_id, title, description, event_type, event_start, event_end, location, created_at,user_name)
                     VALUES (%s, %s, %s, %s, %s, %s, %s, CURRENT_TIMESTAMP,%s)"""
            con.execute(sql, (user_id, title, description, event_type, event_start, event_end, location,user_name))
            mysql.connection.commit()
            con.close()
        return render('communityinsert.html',name=appname,info=detail)
    else:
        return redirect(url_for('sharetocommunity'))

@app.route('/incidentinsert',methods=["GET","POST"])
def incidenetinsert():
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        if request.method=="POST":
            title = request.form['title']
            description = request.form['description']
            location = request.form['location']
            media_url = request.form['media_url']
            user_id = detail['id']
            user_name = detail['name']
            con=mysql.connection.cursor()
            sql = """INSERT INTO eco_incidents (user_id, title, description, location, media_url,user_name)
                     VALUES (%s, %s, %s, %s, %s,%s)"""
            con.execute(sql, (user_id, title, description, location, media_url,user_name))
            mysql.connection.commit()
            con.close()
        return render('communityinsert.html',name=appname,info=detail)
    else:
        return redirect(url_for('sharetocommunity'))

@app.route('/ideainsert',methods=["GET","POST"])
def ideainsert():
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        if request.method=="POST":
            title = request.form['title']
            description = request.form['description']
            category = request.form['category']
            status = request.form['status']
            user_id = detail['id']
            user_name = detail['name']
            con=mysql.connection.cursor()
            sql = """INSERT INTO ideas (user_id, title, description, status,category,user_name)
                     VALUES (%s, %s, %s, %s,%s,%s)"""
            con.execute(sql, (user_id, title, description, status, category,user_name))
            mysql.connection.commit()
            con.close()
        return render('communityinsert.html',name=appname,info=detail)
    else:
        return redirect(url_for('sharetocommunity'))


#logout
@app.route('/logout')
def logout():
    session.pop('loggedin', None)
    session.pop('email', None)
    return redirect(url_for('login'))

if __name__ == "__main__":
    app.run(debug=True)
