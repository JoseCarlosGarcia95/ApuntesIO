#!/usr/bin/python

with open('tools/resources/main.css', 'r') as f1:
    with open('build/html/main.css', 'w+') as f2:
        f2.write(f1.read())
