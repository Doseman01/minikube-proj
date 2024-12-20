from flask import Flask, render_template

app = Flask(__name__)

# Route for the homepage
@app.route('/')
def home():
    return "DevOps solves your problem with ease"

# Run the application
if __name__ == '__main__':
    app.run(debug=True)

