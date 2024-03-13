#!/bin/bash
# Задание 11. Сохранить в файл все переменные окружения, а затем из этого файла в другой отфильтровать только те, 
#что содержат имя текущего пользователя

#Выводим все переменные окружения в файл env_full.txt 
env | tee env_full.txt

#Фильтруем файл env_full.txt по содержанию в строках имени пользователя и выводим результат в файл env_filtred.txt
grep "$(whoami)" ./env_full.txt | tee env_filtred.txt
