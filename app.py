from flask import Flask, render_template, request, url_for, redirect, flash
import pandas as pd
import sqlite3

app = Flask(__name__)

@app.route('/')
def home():

    conn = sqlite3.connect('Resources/evstations.sqlite')
    data = pd.read_sql('SELECT * FROM evstations', conn)
    data = data.drop('index', axis=1)
    #print(data.dtypes)

    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)