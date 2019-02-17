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

with open('build/html/ApuntesIO.html', 'r') as f:
    current_buffer = f.read()

current_buffer = current_buffer.replace("\n", "").replace("\r", "")
current_buffer = current_buffer.strip()

current_buffer = current_buffer.replace('ı', 'i')
current_buffer = current_buffer.replace('ﬀ', 'fi')

current_buffer = re.sub(r"<span class=\"cmr-12\">([A-Za-z'\d\s´]+)</span>", '\\1', current_buffer, 0, re.MULTILINE)
for bad_value, sanitize_value in sanitize_values.items():
    current_buffer = current_buffer.replace(bad_value, sanitize_value)
    
with open('build/html/ApuntesIO.html', 'w') as f:
    f.write(current_buffer)
