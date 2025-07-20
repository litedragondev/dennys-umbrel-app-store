from marimo import Marimo

app = Marimo()

@app.route("/")
def hello():
    return "Hello from Marimo!"

if __name__ == "__main__":
    app.run()
