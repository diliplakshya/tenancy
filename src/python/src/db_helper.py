#!/usr/bin/env python3


import pymysql


def db_function(username, password):
    con = pymysql.connect('localhost', 'local', 'local.', 'tenancy')

    with con:
        cur = con.cursor()

        sql = "INSERT INTO login (username, password) VALUES (%s, %s)"

        val = (username, password)

        cur.execute(sql, val)
