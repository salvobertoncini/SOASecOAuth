import MySQLdb



def selectCredentialAndToken(username, password, token):
    db = MySQLdb.connect("localhost", "berto", "berto", "gateway")
    cursor = db.cursor()
    cursor.execute("SELECT username, password, token FROM auth WHERE username = '"+username+"' and password = '"+password+"' and token = '"+token+"'")
    data = cursor.fetchone()

    print data

    if data[2]:
        return "ok"
    else:
        return "ko"


def insertCredentialAndToken(username, password, token):
    db = MySQLdb.connect("localhost", "berto", "berto", "gateway")
    cursor = db.cursor()
    query = "INSERT INTO `auth` (`username`, `password`, `token`) VALUES ('"+username+"', '"+password+"', '"+token+"' )"
    affected_count = cursor.execute(query)
    db.commit()
    print affected_count

    return "ok"


def updateCredentialAndTokenGateway(username, password, token):
    db = MySQLdb.connect("localhost", "berto", "berto", "gateway")
    cursor = db.cursor()
    query = "UPDATE `auth` SET `token`='" + token + "' WHERE `username` = '"+username+"' AND `password` ='"+password+"'"
    affected_count = cursor.execute(query)
    db.commit()
    print affected_count

    return "ok"



def updateCredentialAndTokenApp(token):
    db = MySQLdb.connect("localhost", "berto", "berto", "applicazione1")
    cursor = db.cursor()
    query = "UPDATE `auth` SET `token`='" + token + "' WHERE `id` = 1"
    affected_count = cursor.execute(query)
    db.commit()
    print affected_count

    return "ok"



def closeDB():
    db.close()
