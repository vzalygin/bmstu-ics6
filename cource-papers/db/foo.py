#!/bin/python3
import json

# print("orders start")
a = ""
with open("./~insert/assemblings.json", "r") as f:
    assems = json.loads(f.read())[0:200_000]
    # print(assems)
for i in range(0, len(assems), 500):
    j = ", ".join(f"({ass[0]}, {ass[1]}, {ass[2]})" for ass in assems[i:i+500])
    a += f"""
        INSERT INTO assembling (product_id, order_id, product_amount)
        VALUES {j};
    """
print(a)