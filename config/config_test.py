import os

BASE = os.path.join(os.path.dirname(os.path.realpath(__file__)), '..', 'frt_server')

SECRET_KEY = 'insert_secret_key_here'
PORT = 8000
HOST = "127.0.0.1"
DEBUG = False
REQUEST_DEBUG = True
RESPONSE_DEBUG = True
TOKEN_EXPIRATION = 24*60*60
OPLOG = False #change to True to enable logging to a file
OPLOG_NAME = 'oplog' #name of log-collection in the database

# empty database path means in-memory
DATABASE_PATH = 'sqlite://'

UPLOAD_FOLDER = os.path.join(BASE, 'test_uploads')
ATTACHMENT_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'attachment')
FONT_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'font')
FAMILY_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'family')
