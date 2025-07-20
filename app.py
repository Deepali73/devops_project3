import socket
from flask import Flask
app = Flask(__name__)

@app.route("/home")
def lwhome():
    hostname = socket.gethostname()
    ip_address = socket.gethostbyname(hostname)
    return f"Welcome to LW{hostname}, {ip_address}<br/> my hostname{hostname}<br/> my ip{ip_address}"

app.run(host: "0.0.0.0" port=5000)
