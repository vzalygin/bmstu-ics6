#import "@docs/gost732-2017:0.1.1": *
#import "@docs/bmstu:0.1.1": *

#show: гост732-2017

#страница(image("материалы/титул.svg", fit: "stretch"), номер: нет)

#страница(image("материалы/приватно/ТРПС задание на курсовую работы.jpg", height: 100%), номер: нет)

#include "разделы/реферат.typ"

#содержание()

#include "разделы/определения_сокращения_обозначения.typ"

#include "разделы/введение.typ"

#include "разделы/1_анализ.typ"

#include "разделы/2_проектирование.typ"

#include "разделы/3_тестирование.typ"

#include "разделы/заключение.typ"

#bibliography("bibliography.yml")

#include "разделы/приложение_а.typ"

#include "разделы/приложение_б.typ"

#include "разделы/приложение_в.typ"
