#!/usr/bin/env python3

"""
Un programme pour illustrer la notion de "structure" en python.

Nous n'utilisons pas de classe volontairement ici alors que celles-ci
pourraient également être utilisées. En effet, python est un langage
impératif qui supporte la programmation orientée objet mais l'objectif
de ce cours concerne seulement l'impératif.
"""

# On importe seulement la fonction namedtuple depuis le module collections
from collections import namedtuple

def affiche_triangle(triangle):
    """affiche les trois points de triangle sur la sortie standard"""
    print("triangle = (" + str(triangle.p1.x) + "," + str(triangle.p1.y) + ") ("
          + str(triangle.p2.x) + "," + str(triangle.p2.y) + ") ("
          + str(triangle.p3.x) + "," + str(triangle.p3.y) + ")")

# Definition de la structure Point composée de deux attributs x et y
Point = namedtuple("Point", "x y")

# Definition de la structure Triangle composée de trois attributs p1, p2 et p3
Triangle = namedtuple("Triangle", "p1 p2 p3")

# Création de trois points
point1 = Point(50, 0)
point2 = Point(0, 50)
point3 = Point(50, 50)

# Création et affichage d'un triangle
tri = Triangle(point1, point2, point3)
affiche_triangle(tri)