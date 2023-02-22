#!/usr/bin/r

# familiar statistical methods, such as regression analysis, principal components
# analysis, analysis of variance, multidimensional scaling, and so on.
# There are other types of structures based on graphs that are useful in
# representing data. A graph is a structure consisting of two components: a
# set of points, called vertices or nodes and a set of pairs of the points, called
# edges. (Note that this usage of the word “graph” is distinctly diﬀerent from
# the more common one that refers to lines, curves, bars, and so on to represent
# data pictorially. The phrase “graph theory” is often used, or overused, to em-
# phasize the present meaning of the word.) A graph G = (V, E) with vertices
# V = {v1 , . . . , vn } is distinguished primarily by the nature of the edge elements
# (vi , vj ) in E. Graphs are identiﬁed as complete graphs, directed graphs, trees,
# and so on, depending on E and its relationship with V . A tree may be used
# for data that are naturally aggregated in a hierarchy, such as political unit,
# subunit, household, and individual. Trees are also useful for representing clus-
#   tering of data at diﬀerent levels of association. In this type of representation,
# the individual data elements are the terminal nodes, or “leaves”, of the tree.


old <- par("col" = "black")

# This will be in red
c(list(col = "red", pch = 19),
         plot(mtcars$hp, mtcars$wt)
)

# This will still be in black
plot(mtcars$hp, mtcars$wt)

par(old)
