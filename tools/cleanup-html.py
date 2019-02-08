#!/usr/bin/python
# -*- coding: utf-8 -*-
import re

sanitize_values ={
    'Ñ&#x02DC;N' : '&Ntilde;',
    'ñ&#x02DC;n' : '&ntilde;',

    'á´a'        : '&aacute;',
    'é´e'        : '&eacute;',
    'í´i'        : '&iacute;',
    'ó´o'        : '&oacute;',
    'ú´u'        : '&uacute;',

    'Á´A'        : '&Aacute;',
    'É´E'        : '&Eacute;',
    'Í´I'        : '&Iacute;',
    'Ó´O'        : '&Oacute;',
    'Ú´U'        : '&Uacute;',
}

with open('build/html/ApuntesIO.html', 'r', encoding='iso-8859-1') as f:
    current_buffer = f.read()

current_buffer = re.sub(r"<span[\s\S]+class=\"cmr-12\">([A-Za-z]+)</span>", '\\1', current_buffer, 0, re.MULTILINE)

for bad_value, sanitize_value in sanitize_values.items():
    current_buffer = current_buffer.replace(bad_value, sanitize_value)
    
with open('build/html/ApuntesIO.html', 'w', encoding='iso-8859-1') as f:
    f.write(current_buffer)
