#import "@preview/tablem:0.3.0": tablem, three-line-table
#import "@preview/dashy-todo:0.1.3": todo

#let todo-outline() = context {
  block(fill: rgb(255, 0, 0, 40%), outset: 1em)[
    = Todos 
    #outline(title: none, target: figure.where(kind: "todo"))
  ]
}
