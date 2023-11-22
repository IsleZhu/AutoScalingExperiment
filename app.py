from flask import Flask

app = Flask(__name__)


@app.route('/')
def home():  # put application's code here
    big_list = [0] * (10 ** 4)
    return "<center><h3>Welcome to Cloud Book Store!</h3></center>"


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
