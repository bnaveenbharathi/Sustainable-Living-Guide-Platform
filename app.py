from flask import Flask,render_template as render,redirect,url_for,request,session
from flask_mysqldb import MySQL
from flask_bcrypt import Bcrypt
app=Flask(__name__)
app.secret_key="123ecox"
bcrypt = Bcrypt(app)
appname="EcoX"
app.config["MYSQL_HOST"]='localhost'
app.config["MYSQL_USER"]="root"
app.config["MYSQL_PASSWORD"]=''
app.config["MYSQL_DB"]="ecox"
app.config["MYSQL_CURSORCLASS"]='DictCursor'
mysql=MySQL(app)

#database fetch
class Database:
    def __init__(self, mysql):
        self.mysql = mysql
    def fetch_all_detail(self,email):
        con = self.mysql.connection.cursor()
        con.execute('SELECT * FROM users where email=%s',(email,))
        result = con.fetchone()
        self.mysql.connection.commit()
        con.close()
        return result
db = Database(mysql)

@app.route('/signup',methods=["GET","POST"])
def signup():
    if request.method=='POST':
        email=request.form["email"]
        password=request.form["password"]
        hashpassword=bcrypt.generate_password_hash(password).decode('utf-8')
        con=mysql.connection.cursor()
        sql = "INSERT INTO users (email, password) VALUES (%s, %s)"
        con.execute(sql, (email, hashpassword))
        mysql.connection.commit()
        con.close()
        return redirect(url_for('login'))
    return render('signup.html')

@app.route('/login',methods=["GET","POST"])
def login():
    if request.method=="POST":
        email=request.form["email"]
        password=request.form["password"]
        con=mysql.connection.cursor()
        sql="SELECT password from users where email=%s"
        con.execute(sql,(email,))
        res=con.fetchone()
        con.close()
        checkpassword=bcrypt.check_password_hash(res['password'],password)
        if res and checkpassword:
            session["loggedin"]=True
            session["email"]=email
            return redirect(url_for('home'))
    return render('login.html')


@app.route('/',methods=['GET','POST'])
def home():
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        return render('index.html',info=detail,name=appname)
    else:
        return redirect(url_for('login'))
    
@app.route('/settings',methods=["GET","POST"])
def settings():
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        return render('settings.html',info=detail,name=appname)
    else:
        return redirect(url_for('login'))
    
@app.route('/update-info',methods=["GET","POST"])
def updateinfo():
    if 'email' in session:
        email=session['email']
        detail=db.fetch_all_detail(email)
        if request.method=="POST":
            name=request.form["name"]
            agegroup=request.form['age-group']
            occupation=request.form['occupation']
            new_email=request.form['email']
            password=request.form['password']
            hashedpassword=bcrypt.generate_password_hash(password).decode('utf-8')
            con=mysql.connection.cursor()
            sql = "UPDATE users SET name=%s, age_group=%s, occupation=%s, email=%s, password=%s WHERE email=%s"
            con.execute(sql, (name, agegroup, occupation, new_email, hashedpassword, email))
            mysql.connection.commit()
            session['email']=new_email
            return redirect(url_for('updateinfo'))
        return render('infoupdate.html',info=detail,name=appname)
        
    else:
        return redirect(url_for('login'))
   
# logout
@app.route('/logout')
def logout():
    session.pop('loggedin',None)
    session.pop('email',None)
    return redirect(url_for('login'))




if __name__=="__main__":
    app.run(debug=True)