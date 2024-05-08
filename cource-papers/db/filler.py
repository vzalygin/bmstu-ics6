#!/bin/python3

from faker import Faker
import psycopg2
import random
import json

CLIENT_AMOUNT = 150
SHIPMENT_AMOUNT = 150

random.seed(42)
Faker.seed(42)
fake = Faker(locale="ru_RU")
conn = psycopg2.connect(
    dbname="postgres",
    user="postgres",
    password="12345678",
    host="localhost",
    port="5433",
)
cur = conn.cursor()


# static data
def clients():
    data = []
    for _ in range(CLIENT_AMOUNT):
        lastname, name = fake.name().split()[0:2]
        saved_addresses = [fake.address() for _ in range(fake.random_int(0, 5))]
        phone_number = fake.phone_number()
        email = fake.email()
        data.append((name, lastname, saved_addresses, phone_number, email))
    cur.executemany(
        """
                        INSERT INTO client (\"name\", lastname, saved_addresses, phone_number, email)
                        VALUES (%s, %s, %s, %s, %s)
                    """,
        data,
    )
    conn.commit()
    print(f"client records {CLIENT_AMOUNT}")


clients()


def products():
    pass


products()


def stores():
    pass


stores()


def employees():
    pass


employees()


def product_location():
    pass


product_location

# dynamic data
# shift
# shipment (для всех дернуть разгрузку)
# assortment
# order + assembling
# delivery (для заказов дернуть назначение курьеров)
