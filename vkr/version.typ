#import "@local/bmstu:0.4.0": *
#import "@local/gost732-2017:0.5.2": *

#let c(content) = {
  text(size: 12pt, hyphenate: false)[#block(breakable: false)[#content]]
}

#let cc(content) = {
  text(size: 10pt, hyphenate: false)[#block(breakable: false)[#content]]
}

#let cl(content) = align(left)[#c[#content]]

#let ccl(content) = align(left)[#cc[#content]]
