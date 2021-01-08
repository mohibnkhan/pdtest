from flask import Flask, render_template, flash, redirect, url_for, session, request, logging
from flask_mysqldb import MySQL
from wtforms import Form, StringField, TextAreaField, PasswordField, validators
from passlib.hash import sha256_crypt
from functools import wraps
#import mysql.connector


app = Flask(__name__)

# Config MySQL
app.config['MYSQL_HOST'] = '192.168.0.105'
app.config['MYSQL_USER'] = 'mysqluser'
app.config['MYSQL_PASSWORD'] = 'i8910HD!'
app.config['MYSQL_DB'] = 'myflaskapp'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'

# init MYSQL
mysql = MySQL(app)

# mysql = mysql.connector.connect(
#   host="mysql",
#   user="mysqluser",
#   password="i8910HD!",
#   database='myflaskapp'
# )

from webapp.routes import *