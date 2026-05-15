#import "@local/bmstu:0.3.0": *
#import "@local/gost732-2017:0.1.0": *

#let гост-ненумерованный_заголовок = ненумерованный_заголовок

#metadata(true) <gost732-2017-feature-table-head-small-spacing>
#let c(content) = {
  text(size: 12pt, hyphenate: false)[#block(breakable: false)[#content]]
}

#let cc(content) = {
  text(size: 10pt, hyphenate: false)[#block(breakable: false)[#content]]
}

#let страница(изображение, номер: true, содержимое: [], формат: "a4", повернуто: false) = context {
  if номер {
    page(
      margin: (left: 30mm, right: 15mm, top: 20mm, bottom: 20mm),
      footer-descent: 10mm,
      background: изображение,
      paper: формат,
      flipped: повернуто,
    )[#par[#содержимое]]
  } else {
    page(
      margin: (left: 0mm, right: 0mm, top: 0mm, bottom: 0mm),
      footer: none,
      background: изображение,
      paper: формат,
      flipped: повернуто,
    )[#par[#содержимое]]
  }
}

#let ненумерованный_заголовок(содержание: по-умолчанию, номер: по-умолчанию, content) = {
  if содержание == нет {
    align(center)[
      #block(above: 1em, below: 1em, sticky: true, width: 100%)[
        #set par(first-line-indent: 0em)
        #content
      ]
    ]
  } else {
    гост-ненумерованный_заголовок(
      содержание: содержание,
      номер: номер,
      content,
    )
  }
}
