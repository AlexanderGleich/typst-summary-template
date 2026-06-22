#let gutter = 4mm

#set page(
  paper: "a4",
  flipped: true,
  margin: (
    top: 8mm,
    bottom: 5mm,
    left: 5mm,
    right: 5mm,
  ),
  columns: 4,
  header: [
    #block(
      width: 100%,
      height: 8mm,
      inset: (x: 1mm, y: 1mm),
      stroke: (bottom: 1pt),
    )[
      #grid(
        columns: (1fr, auto, 1fr),
        align(left)[Topic],
        align(center)[Material Summary],
        align(right)[Page #context counter(page).display("1 / 1", both: true)],
      )
    ]
  ],
  foreground: context [
    #let content-width = page.width - (5mm + 5mm)
    #let column-width = content-width / 3
    #place(
      horizon + left,
      dx: 5mm + column-width + gutter,
      dy: 40mm,
      line(
        angle: 90deg,
        length: page.height - (14mm + 5mm),
        stroke: 0.7pt,
      )    
    )
    #place(
      horizon + left,
      dx: 5mm + 2*column-width + gutter*2.5,
      dy: 40mm,
      line(
        angle: 90deg,
        length: page.height - (14mm + 5mm),
        stroke: 0.7pt,
      )
    )
    #place(
      horizon + left,
      dx: 5mm + 3*column-width + gutter*4,
      dy: 40mm,
      line(
        angle: 90deg,
        length: page.height - (14mm + 5mm),
        stroke: 0.7pt,
      )
    )
  ],
)

#set columns(gutter: gutter)

#set text(
  size: 8.5pt,
)

#set par(
  leading: 0.95em,
  justify: true,
)

#show heading.where(level: 1): it => block(
  below: 0.4em,
  text(weight: "bold", size: 12pt)[#it.body]
)

#show heading.where(level: 2): it => block(
  above: 0.4em,
  below: 0.2em,
  text(weight: "bold", size: 9pt)[#it.body]
)

= Material Summary

== Topic 1
Short, dense summary for your notes. Using four columns in landscape format lets you use the page very efficiently. For the last page, you can manually balance columns if needed with `#colbreak()`. [page:1]

== Topic 2
- Definition 1
- Definition 2
- Definition 3

== Formulas
\(a^2 + b^2 = c^2\)

== Key Phrases
Compactly note important points.