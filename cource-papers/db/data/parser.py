#!/bin/python3
import bs4
import re
import unidecode
import json
import os

get_name = lambda x: x.find(
    "div", attrs={"class": re.compile("ProductCard_name.*")}
).get("title")


def parse(str, category):
    arr = []
    soup = bs4.BeautifulSoup(str, features="html.parser")
    for product in sorted(
        set(
            {
                get_name(x): x
                for x in soup.find_all(
                    "div", attrs={"class": re.compile("ProductCard_root.*")}
                )
            }.values()
        ),
        key=get_name,
    ):
        name = product.find(
            "div", attrs={"class": re.compile("ProductCard_name.*")}
        ).get("title")

        img = product.find("img").get("src")
        price = unidecode.unidecode(
            list(
                list(
                    product.find(
                        "div", attrs={"class": re.compile("ProductCardActions_text.*")}
                    ).children
                )[0].children
            )[0].text
        ).split()[0]
        arr.append({"name": name, "img": img, "price": price, "caterogy": category})
    return arr


data = []
for name in os.listdir("./~raw"):
    with open(f"./~raw/{name}", "r") as f:
        print(name)
        data.extend(parse(f.read(), name[:-4]))

with open("./product.json", "bw") as f:
    f.write(json.dumps(data, ensure_ascii=False).encode("utf8"))
print(f"product records: {len(data)}")
