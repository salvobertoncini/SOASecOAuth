import MySQLdb

def selectCredential():
    db = MySQLdb.connect("localhost", "berto", "berto", "ws1")
    cursor = db.cursor()

    cursor.execute("SELECT * FROM auth")
    data = cursor.fetchone()


    if data[0]:
        print data[0]
        return "ok"
    else:
        return "ko"

def closeDB():
    db.close()
