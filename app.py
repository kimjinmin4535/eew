from flask import Flask,render_template
app = Flask(__name__)

@app.route('/') #루트값 : http://www.hh.co.kr(첫페이지)
def hello_world():
    return 'Hello World23123!'

@app.route('/home')
def my_hell():
    return render_template('home.jsp')



if __name__ == '__main__':
    app.run()