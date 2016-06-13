# -*- coding: utf-8 -*-
from __future__ import print_function
import io

word = u'13 июня'
with io.open('cal_primet.txt', encoding='utf-8') as file:
    for line in file:
        if word in line:
            print(line, end='')
