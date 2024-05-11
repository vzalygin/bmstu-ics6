#!/bin/pypy

from faker import Faker

try:
    import psycopg2 as ps
    from psycopg2.extras import execute_batch
except:
    import psycopg2cffi as ps
    from psycopg2cffi.extras import execute_batch
from itertools import groupby
import random
import json
from datetime import datetime, timezone, timedelta
import sys

CLIENT_AMOUNT = 150
PRODUCT_AMOUNT = 931
STORE_AMOUNT = 1000
ORDER_AMOUNT = 1_000_000
OWNER_IDS = range(STORE_AMOUNT * 0 + 1, STORE_AMOUNT * 1 + 1)
MANAGER_IDS = range(STORE_AMOUNT * 1 + 1, STORE_AMOUNT * 2 + 1)
COURIER_IDS = range(STORE_AMOUNT * 2 + 1, STORE_AMOUNT * 3 + 1)
ASSEMBER_IDS = range(STORE_AMOUNT * 3 + 1, STORE_AMOUNT * 4 + 1)

random.seed(40)
Faker.seed(42)
fake = Faker(locale="ru_RU")
conn = ps.connect(
    dbname="postgres",
    user="postgres",
    password="12345678",
    host="localhost",
    port="5434",
)
cur = conn.cursor()


def ignore_on_fail(f):
    def g(*args):
        try:
            return f(*args)
        except Exception as e:
            print(f"continue on err: {e}", file=sys.stderr)

    return g


@ignore_on_fail
def clients():
    data = []
    for _ in range(CLIENT_AMOUNT):
        name = fake.first_name()
        lastname = fake.last_name()
        saved_addresses = [fake.address() for _ in range(fake.random_int(0, 5))]
        phone_number = fake.phone_number()
        email = fake.email()
        data.append((name, lastname, saved_addresses, phone_number, email))
    execute_batch(
        cur,
        """
            INSERT INTO client (\"name\", lastname, saved_addresses, phone_number, email)
            VALUES (%s, %s, %s, %s, %s)
        """,
        data,
    )
    print(f"clients records {len(data)}")
    with open(
        "/home/vzalygin/repos/bmstu-ics6/cource-papers/db/~insert/clients.json", "w"
    ) as f:
        json.dump(data, f)
    return data


@ignore_on_fail
def products():
    with open(
        "/home/vzalygin/repos/bmstu-ics6/cource-papers/db/data/product.json", "r"
    ) as f:
        data = json.load(f)
    data = [(p["name"], p["name"], p["caterogy"], p["img"], p["price"]) for p in data]
    print("insert into db")
    execute_batch(
        cur,
        """
            INSERT INTO product ("name", "description", category, image_url, price)
            VALUES (%s, %s, %s::PRODUCT_CATEGORY_ENUM, %s, %s)
        """,
        data,
    )
    print(f"product records {len(data)}")
    return data


@ignore_on_fail
def stores():
    data = []
    for i in range(1, STORE_AMOUNT + 1):
        address = fake.address()
        owner_id = i
        name = fake.nic_handle()
        data.append((address, name, owner_id))
    print("insert into db")
    execute_batch(
        cur,
        """
            INSERT INTO store ("address", "name", "owner_id")
            VALUES (%s, %s, %s)
        """,
        data,
    )
    print(f"store records {len(data)}")
    with open(
        "/home/vzalygin/repos/bmstu-ics6/cource-papers/db/~insert/stores.json", "w"
    ) as f:
        json.dump(data, f)
    return data


@ignore_on_fail
def employees():
    data = []
    for _ in OWNER_IDS:  # owner
        name = fake.first_name()
        lastname = fake.last_name()
        role = "manager"
        data.append((name, lastname, role))
    for _ in OWNER_IDS:  # managers
        name = fake.first_name()
        lastname = fake.last_name()
        role = "manager"
        data.append((name, lastname, role))
    for _ in COURIER_IDS:  # couriers
        name = fake.first_name()
        lastname = fake.last_name()
        role = "courier"
        data.append((name, lastname, role))
    for _ in ASSEMBER_IDS:  # assemblers
        name = fake.first_name()
        lastname = fake.last_name()
        role = "assembler"
        data.append((name, lastname, role))
    print("insert into db")
    execute_batch(
        cur,
        """
            INSERT INTO employee ("name", lastname, "role")
            VALUES (%s, %s, %s::EMPLOYEE_ROLE_ENUM)
        """,
        data,
    )
    print(f"employee records {len(data)}")
    with open(
        "/home/vzalygin/repos/bmstu-ics6/cource-papers/db/~insert/employees.json", "w"
    ) as f:
        json.dump(data, f)
    return data


@ignore_on_fail
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
            desc = descs[product_id]
            data.append((product_id, store_id, desc))
    with open(
        "/home/vzalygin/repos/bmstu-ics6/cource-papers/db/~insert/product_locations.json",
        "w",
    ) as f:
        json.dump(data, f)
    print("insert into db")
    execute_batch(
        cur,
        """
            INSERT INTO product_location (product_id, store_id, "description")
            VALUES (%s, %s, %s)
        """,
        data,
    )
    print(f"product_location records {len(data)}")
    return data


@ignore_on_fail
def shifts():
    store_id = lambda x: (x - 1) % STORE_AMOUNT + 1
    data = []
    start = datetime.now(timezone(timedelta(hours=3)))
    end = start + timedelta(hours=12)
    for employee_id in MANAGER_IDS:
        data.append((employee_id, store_id(employee_id), start, end))
    for employee_id in COURIER_IDS:
        data.append((employee_id, store_id(employee_id), start, end))
    for employee_id in ASSEMBER_IDS:
        data.append((employee_id, store_id(employee_id), start, end))
    with open(
        "/home/vzalygin/repos/bmstu-ics6/cource-papers/db/~insert/shifts.json", "w"
    ) as f:
        json.dump(data, f, default=str)
    print("insert into db")
    execute_batch(
        cur,
        """
            INSERT INTO shift (employee_id, store_id, begin_date, end_date)
            VALUES (%s, %s, %s, %s)
        """,
        data,
    )
    print(f"shift records {len(data)}")
    return data


@ignore_on_fail
def shipments():
    data = []
    exp_data = []
    exp_shipments = [
        *[(random.randint(1, 931), -1) for _ in range(200)],  # expired
    ]
    shipments = [
        *[
            [random.randint(1, 90), random.randint(30, 60)] for _ in range(50)
        ],  # lemonade
        *[
            [random.randint(91, 167), random.randint(20, 40)] for _ in range(50)
        ],  # cheese
        *[[random.randint(890, 931), random.randint(1, 4)] for _ in range(50)],  # bread
        *[
            [random.randint(493, 536), random.randint(10, 20)] for _ in range(50)
        ],  # meat
        *[
            [random.randint(537, 663), random.randint(5, 20)] for _ in range(50)
        ],  # yogurt
        *[
            [random.randint(810, 889), random.randint(10, 30)] for _ in range(50)
        ],  # fruit
        *[
            [random.randint(810, 889), random.randint(10, 30)] for _ in range(50)
        ],  # fruit
        *[
            [random.randint(664, 743), random.randint(360, 720)] for _ in range(50)
        ],  # alcohol
    ]
    for store_id in range(1, STORE_AMOUNT + 1):
        for product_id, exp in shipments:
            product_amount = random.randint(200, 1000)
            expiration_date = datetime.now(timezone(timedelta(hours=-3))) + timedelta(
                days=exp
            )
            data.append([store_id, product_id, expiration_date, product_amount])
        for product_id, exp in exp_shipments:
            product_amount = random.randint(10, 100)
            expiration_date = datetime.now(timezone(timedelta(hours=-3))) + timedelta(
                days=exp
            )
            exp_data.append((store_id, product_id, expiration_date, product_amount))
    with open(
        "/home/vzalygin/repos/bmstu-ics6/cource-papers/db/~insert/shipments.json", "w"
    ) as f:
        json.dump(data, f, default=str)
    print("insert into db")
    execute_batch(
        cur,
        """
            INSERT INTO shipment (store_id, product_id, expiration_date, product_amount)
            VALUES (%s, %s, %s, %s)
        """,
        data,
    )
    execute_batch(
        cur,
        """
            INSERT INTO shipment (store_id, product_id, expiration_date, product_amount)
            VALUES (%s, %s, %s, %s)
        """,
        exp_data,
    )
    cur.execute(
        """
            UPDATE shipment
            SET "status" = 'accepted'
            WHERE shipment.id < %s
        """,
        (str(int(len(data) * 0.99)),),
    )
    cur.execute(
        """
            SELECT check_and_mark_expired_shipments()
        """
    )
    print(f"shipment records {len(data)+len(exp_data)}")
    return list(map(lambda x: [x[0] + 1, *x[1]], enumerate(data)))


@ignore_on_fail
def orders(shipments):
    assems = []
    orders = []

    def dec(x, i, y):
        x[i] -= y
        return y

    for order_id in range(1, ORDER_AMOUNT + 1):
        client_id = random.randint(1, CLIENT_AMOUNT)
        address = fake.address()
        shs = []
        while len(shs) < 2:
            store_id = random.randint(1, STORE_AMOUNT + 1)
            shs = list(filter(lambda x: x[1] == store_id and x[4] > 5, shipments))
        assemblings = [
            (p, order_id, sum(x[2] for x in s))
            for p, s in groupby(
                (
                    (shipment[2], order_id, dec(shipment, 4, random.randint(1, 3)))
                    for shipment in random.sample(
                        shs, k=random.randint(1, min(len(shs), 3))
                    )
                ),
                key=lambda x: x[0],
            )
        ]
        assems += assemblings
        orders.append((client_id, address, store_id))
    assems = list(set({(x[0], x[1]): x for x in assems}.values()))
    with open(
        "/home/vzalygin/repos/bmstu-ics6/cource-papers/db/~insert/orders.json", "w"
    ) as f:
        json.dump(orders, f, default=str)
    with open(
        "/home/vzalygin/repos/bmstu-ics6/cource-papers/db/~insert/assemblings.json", "w"
    ) as f:
        json.dump(assems, f, default=str)
    print("insert into db")
    execute_batch(
        cur,
        """
            INSERT INTO "order" (client_id, "address", store_id)
            VALUES (%s, %s, %s)
        """,
        orders,
    )
    execute_batch(
        cur,
        """
            INSERT INTO assembling (product_id, order_id, product_amount)
            VALUES (%s, %s, %s)
        """,
        assems,
    )
    print("insert into db")
    cur.execute(
        """
            UPDATE assembling
            SET close_date = CURRENT_TIMESTAMP
            WHERE assembling.order_id in (SELECT assembling.order_id FROM assembling LIMIT %s)
        """,
        (str(int(len(assems) * 0.70)),),
    )
    print("insert into db")
    cur.execute(
        """
            UPDATE "order"
            SET "status" = 'cancelled'
            WHERE "order".id < %s
        """,
        (str(int(ORDER_AMOUNT * 0.05)),),
    )

    print(f"order records {ORDER_AMOUNT}")
    print(f"assembling records {len(assems)}")


@ignore_on_fail
def deliveries():
    cur.execute(
        """
            SELECT check_ready_to_delivery_orders_and_assign_couriers();
        """
    )
    cur.execute(
        """
           SELECT count(*) FROM delivery
        """
    )
    (delivery_amount,) = cur.fetchone()
    cur.execute(
        """
            UPDATE delivery
            SET "status" = 'on_the_way'
            WHERE delivery.id < %s
        """,
        (str(int(delivery_amount * 0.70)),),
    )
    cur.execute(
        """
            UPDATE delivery
            SET "status" = 'closed'
            WHERE delivery.id < %s
        """,
        (str(int(delivery_amount * 0.50)),),
    )
    print(f"delivery records {delivery_amount}")


# static
clients()
conn.commit()
products()
conn.commit()
stores()
employees()
conn.commit()
product_locations()
conn.commit()
# dynamic
shifts()
s = shipments()
conn.commit()
orders(s)
conn.commit()
deliveries()
conn.commit()
print("db filled successfully")
