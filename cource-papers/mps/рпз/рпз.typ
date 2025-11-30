#import "version.typ": *

#show: гост732-2017

#страница(image("материалы/титульник.jpg", height: 100%), номер: нет)

#страница(image("материалы/задание.jpg", height: 100%), номер: нет)

#include "разделы/0-реферат.typ"

#содержание()

#include "разделы/1-сокращения.typ"

#include "разделы/2-введение.typ"

#include "разделы/3-конструкторская.typ"

#include "разделы/4-технологическая.typ"

#include "разделы/5-заключение.typ"

// Костыль, чтобы убрать отступы в списке использованных источников
#set bibliography(style: "bib.csl")
#show bibliography: it_bib => {
  set block(inset: 0pt)
  show block: it_block => {
    par(it_block.body)
  }
  it_bib
}
#bibliography("bibliography.yml")

#include "разделы/прил-а-исходный-текст.typ"

#include "разделы/прил-б-спецификация.typ"
