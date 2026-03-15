#import "@local/bmstu:0.3.0": *
#import "@local/gost732-2017:0.4.2": *

#metadata(true) <gost732-2017-feature-table-head-small-spacing>
#let c(content) = {
  text(size: 12pt, hyphenate: false)[#block(breakable: false)[#content]]
}
