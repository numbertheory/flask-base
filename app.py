'''Main Function'''
from flask import Flask


APP = Flask(__name__)


@APP.route('/')
def hello_world():
    '''
    Default Route
    '''
    return 'Hello, World!'
