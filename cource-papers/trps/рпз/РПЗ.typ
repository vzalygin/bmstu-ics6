#import "@docs/gost732-2017:0.1.1": *
#import "@docs/bmstu:0.1.1": *

#show: гост732-2017

#страница(image("материалы/титул.svg", fit: "stretch"))

// TODO задание на курсовую

#include "разделы/реферат.typ"

#содержание()

#include "разделы/введение.typ"

#include "разделы/1_анализ.typ"

#include "разделы/2_проектирование.typ"

#include "разделы/3_тестирование.typ"

#include "разделы/заключение.typ"

#include "разделы/приложения.typ"
