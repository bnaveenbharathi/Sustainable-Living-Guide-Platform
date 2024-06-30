# EcoX - Prasunethon 🌍♻️✨

EcoX is your go-to platform for sustainable living. Get personalized tips, find local resources, engage with the community, and track your progress towards reducing your environmental footprint. Join us for a greener future! ♻️✨

## Description

EcoX is a comprehensive platform designed to guide users towards a more sustainable lifestyle. By providing personalized tips, local resources, community engagement opportunities, EcoX helps users reduce their environmental footprint in a practical and community-supported manner.

## Features

- **Personalized Tips**: Get customized advice based on your lifestyle and preferences.
- **Local Resources**: Discover nearby recycling centers, composting facilities, eco-friendly stores, and community initiatives.
- **Community Engagement**: Join events, workshops, and forums to connect with others passionate about sustainability.
- **Account Management**: Manage your profile, preferences, and feedback easily through an intuitive interface.


## Install Necessary Modules

```bash

pip install Flask
pip install Flask-MySQLdb
pip install Flask-Bcrypt

```

## DB Connection

```bash
app.config["MYSQL_HOST"] = 'localhost'
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ''
app.config["MYSQL_DB"] = "ecox"
app.config["MYSQL_CURSORCLASS"] = 'DictCursor'

```

## Set up the database :
   - Make sure you have MySQL installed and running.
   - Create a database named `ecox`.
   - Update the database connection settings in `app.py` if necessary.

## Run the application :

```bash
python app.py
```

      The application will be accessible at `http://127.0.0.1:5000`.

## Directory Struture (Sample)
```bash
├── app.py
├── config.py
├── requirements.txt
├── .env
├── .gitignore
├── README.md
├── static/
│   ├── css/
│   └── js/
└── templates/
├── base.html
├── index.html
├── login.html
└── dashboard.html

```

## Demo Video
https://www.youtube.com/watch?v=92NmLFQ8U4Q

## Demo Images

![image](https://github.com/bnaveenbharathi/ecox-Prasunethon/assets/144258519/54e55deb-b8be-417c-8559-c3edabc0da5c)
![image](https://github.com/bnaveenbharathi/ecox-Prasunethon/assets/144258519/6a029ca9-01a9-4427-b8ac-0f990ae31432)
![image](https://github.com/bnaveenbharathi/ecox-Prasunethon/assets/144258519/c3034f43-e9d7-411b-adc0-69addc049119)
![image](https://github.com/bnaveenbharathi/ecox-Prasunethon/assets/144258519/a5e5b86c-5eb9-427c-853d-a738e0e89495)
![image](https://github.com/bnaveenbharathi/ecox-Prasunethon/assets/144258519/3c2ca5b1-2b9b-4d0b-a435-90849285a5dd)
![image](https://github.com/bnaveenbharathi/ecox-Prasunethon/assets/144258519/ed6451ba-9983-4d91-ab77-d3a69e3cd71c)
![image](https://github.com/bnaveenbharathi/ecox-Prasunethon/assets/144258519/85f67d1e-ec62-46ba-87d8-bf75cd48ac1a)







