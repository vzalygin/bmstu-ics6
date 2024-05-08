#!/bin/python3

from faker import Faker
import psycopg2
import random
import json
import sys

CLIENT_AMOUNT = 150
SHIPMENT_AMOUNT = 150
PRODUCT_AMOUNT = 931
STORE_AMOUNT = 150

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
    print(f"clients records {len(data)}")


clients()
conn.commit()


def products():
    with open(
        "/home/vzalygin/repos/bmstu-ics6/cource-papers/db/data/product.json", "r"
    ) as f:
        data = json.load(f)
    data = [(p["name"], p["name"], p["caterogy"], p["img"], p["price"]) for p in data]
    cur.executemany(
        """
            INSERT INTO product ("name", "description", category, image_url, price)
            VALUES (%s, %s, %s::PRODUCT_CATEGORY_ENUM, %s, %s)
        """,
        data,
    )
    print(f"product records {len(data)}")


products()
conn.commit()


def stores():
    data = []
    for i in range(1, STORE_AMOUNT + 1):
        address = fake.address()
        owner_id = i
        name = fake.domain_word()
        data.append((address, name, owner_id))
    cur.executemany(
        """
            INSERT INTO store ("address", "name", "owner_id")
            VALUES (%s, %s, %s)
        """,
        data,
    )
    print(f"store records {len(data)}")


stores()


def employees():
    data = []
    for _ in range(STORE_AMOUNT * 3):  # owner and managers
        lastname, name = fake.name().split()[0:2]
        role = "manager"
        data.append((name, lastname, role))
    for _ in range(STORE_AMOUNT * 3):  # couriers
        lastname, name = fake.name().split()[0:2]
        role = "courier"
        data.append((name, lastname, role))
    for _ in range(STORE_AMOUNT * 3):  # assemblers
        lastname, name = fake.name().split()[0:2]
        role = "assembler"
        data.append((name, lastname, role))
    cur.executemany(
        """
            INSERT INTO employee ("name", lastname, "role")
            VALUES (%s, %s, %s::EMPLOYEE_ROLE_ENUM)
        """,
        data,
    )
    print(f"employee records {len(data)}")


employees()
conn.commit()


def product_locations():
    data = []
    descs = [
        "".join(chr(x) + chr(y) + chr(z))
        for x in range(ord("a"), ord("z") + 1)
        for y in range(ord("a"), ord("z") + 1)
        for z in range(ord("1"), ord("9") + 1)
    ]
    for store_id in range(1, STORE_AMOUNT + 1):
        for product_id in range(1, PRODUCT_AMOUNT + 1):
            desc =descs[product_id]
            data.append((product_id, store_id, desc))

    cur.executemany(
        """
            INSERT INTO product_location (product_id, store_id, "description")
            VALUES (%s, %s, %s)
        """,
        data,
    )
    print(f"product_location records {len(data)}")


product_locations()
conn.commit()

# dynamic data
# shift
# shipment (для всех дернуть разгрузку)
# assortment
# order + assembling
# delivery (для заказов дернуть назначение курьеров)
