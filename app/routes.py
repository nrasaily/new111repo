from flask import Flask
# OOP-object orianted paradigm
app = Flask(__name__)

@app.get("/")
def profile():
    
    me = {
        "first_name": "Rafael",
        "last_name": "GPL",
        "hobbies": "DIY stuff",
        "is_online": True
    }
    
    return me