#!/user/bin/env python
#-*- coding:utf8 -*-
#@TIME   :1/30/2020 7:22 AM
#@Author :weige
#@File :split_meta.py
N = 0.8
lines = open('meta.txt', 'r').readlines()
lines_for_train = int(len(lines) * N)
open('weijunlin_train.txt','w').write(''.join(lines[:lines_for_train]))
open('weijunlin_test.txt','w').write(''.join(lines[lines_for_train:]))