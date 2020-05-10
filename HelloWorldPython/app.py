from flask import Flask
import os
import socket
import sys
app = Flask(__name__)
host = socket.gethostname()

@app.route('/')
def hello():
    return '\nHello World!\nI have been seen %s times.\nMy Host name is %s\n\n'

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
