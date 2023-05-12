from flask import Flask
app = Flask(__name__)

@app.route('/') #루트값 : http://www.hh.co.kr(첫페이지)
def hello_world():
    return 'Hello World23123!'





if __name__ == '__main__':
    app.run()