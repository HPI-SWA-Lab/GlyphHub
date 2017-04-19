import os

BASE = os.path.join(os.path.dirname(os.path.realpath(__file__)), '..', 'frt_server')

SECRET_KEY = 'this-is-my-super-secret-key'
PORT = 8000
DEBUG = False
REQUEST_DEBUG = True
RESPONSE_DEBUG = True
TOKEN_EXPIRATION = 24*60*60
OPLOG = False #change to True to enable logging to a file
OPLOG_NAME = 'oplog' #name of log-collection in the database

# empty database path means in-memory
DATABASE_PATH = '//tmp/frt_server.db'

UPLOAD_FOLDER = os.path.join(BASE, 'uploads')
ATTACHMENT_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'attachment')
FONT_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'font')
FAMILY_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'family')
