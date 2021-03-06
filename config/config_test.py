import os

BASE = os.path.join(os.path.dirname(os.path.realpath(__file__)), '..', 'frt_server')

ADMIN_USER_PASSWORD = None
POPULATE_SAMPLE_DATA = False

SECRET_KEY = 'insert_secret_key_here'
PORT = 8000
HOST = "127.0.0.1"
DEBUG = True
REQUEST_DEBUG = False
RESPONSE_DEBUG = False
DATA_PRINT_LIMIT = 500
TOKEN_EXPIRATION = 24*60*60
OPLOG = False #change to True to enable logging to a file
OPLOG_NAME = 'oplog' #name of log-collection in the database

# empty database path means in-memory
DATABASE_PATH = 'sqlite://'

UPLOAD_FOLDER = os.path.join(BASE, 'test_uploads')
ATTACHMENT_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'attachment')
FONT_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'font')
FAMILY_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'family')
AVATAR_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'user_avatar')
MEDIA_FOLDER = os.path.join(BASE, 'media')
FEEDBACK_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'feedback')
