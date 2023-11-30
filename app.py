from flask import Flask, request
app = Flask(__name__)

@app.route('/')
def home():
    return "Welcome to the API Server!"



@app.route('/read', methods=['GET'])
def read_file():
    with open('data.txt', 'r') as file:
        data = file.read()
    print(data)
    return data

@app.route('/write', methods=['POST'])
def write_file():
    content = request.data.decode('utf-8')
    print(request.data)
    with open('data.txt', 'w') as file:
        file.write(content)
    return "Data written successfully"

if __name__ == '__main__':
    app.run(debug=True)