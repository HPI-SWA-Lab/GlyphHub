from eve import Eve
from eve.auth import TokenAuth
from eve_sqlalchemy import SQL

import tables
from views import register_views


class TokenAuth2(TokenAuth):
    def check_auth(self, token, allowed_roles, resource, method):
        """First we are verifying if the token is valid. Next
        we are checking if user is authorized for given roles.
        """

        login_name = tables.User.verify_auth_token(token)
        if login_name:
            users = app.data.driver.session.query(tables.User).filter_by(user_name = login_name).all()
            if not users:
                return False
            user = users[0]
            return user.isAuthorized(allowed_roles)
        else:
            return False

app = Eve(data = SQL, auth=TokenAuth2)

db = app.data.driver
tables.Base.metadata.bind = db.engine
db.Model = tables.Base
db.create_all()

if not db.session.query(tables.User).count():
    from seed import entities
    for entity in entities:
        db.session.add(entity)
    db.session.commit()

if __name__ == '__main__':
    register_views(app)
    app.run(debug = True, port = 8000)