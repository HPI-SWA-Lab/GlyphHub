import os

BASE = os.path.dirname(os.path.realpath(__file__))

# empty database path means in-memory
DATABASE_PATH = '' 
UPLOAD_FOLDER = os.path.join(BASE, 'test_uploads')
ATTACHMENT_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'attachment')
FONT_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'font')
FAMILY_UPLOAD_FOLDER = os.path.join(UPLOAD_FOLDER, 'family')
SECRET_KEY = 'insert_secret_key_here'
DEBUG = False
REQUEST_DEBUG = True
RESPONSE_DEBUG = True