# -*- coding: utf-8 -*-
from __future__ import print_function
import time  # Подключаем модуль time
# import re
import io

d = ["понедельник", "вторник", "среда", "четверг", "пятница", "суббота", "воскресенье"]

m = ["", "января", "февраля", "марта", "апреля", "мая", "июня", "июля", "августа", "сентября", "октября", "ноября", "декабря"]

t = time.localtime()  # Получаем текущее время

word = str(t[2])+str(" ")+str(m[t[1]])
word = word.decode('utf-8')

with io.open('cal_primet.txt', encoding='utf-8') as file:
    for line in file:
        if word in line:
            print(line, end='')

print ("Сегодня:\n%s %s %s %s %02d:%02d:%02d\n%02d.%02d.%02d" %
       (d[t[6]], t[2], m[t[1]], t[0], t[3], t[4], t[5], t[2], t[1], t[0]))








