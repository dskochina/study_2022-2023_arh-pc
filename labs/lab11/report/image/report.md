---
## Front matter
title: "Отчёт по лабораторной работе №11"
subtitle: "Работа с файлами средствами NASM"
author: "Кочина Дарья Сергеевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной лабораторной работы является приобретение навыков написания программ для работы с файлами.

# Задание

Приобрести навыки написания программ для работы с файлами.

# Теоретическое введение

ОС GNU/Linux является многопользовательской операционной системой. И для обеспечения защиты данных одного пользователя от действий других пользователей существуют специальные механизмы разграничения доступа к файлам. Кроме ограничения доступа, данный механизм позволяет разрешить другим пользователям доступ данным для совместной работы. Права доступа определяют набор действий (чтение, запись, выполнение), разрешённых для выполнения пользователям системы над файлами. Для каждого файла пользователь может входить в одну из трех групп: владелец, член группы владельца, все остальные. Для каждой из этих групп может быть установлен свой набор прав доступа. Владельцем файла является его создатель.

# Выполнение лабораторной работы

1. Я создала каталог для программам лабораторной работы №11, перешла в него и создала файл lab11-1.asm и readme.txt. (рис. [-@fig:001])

![Создание файла lab11-1.asm и readme.txt](image/Рис.1.png){ #fig:001 width=70% }

2. Я ввела в файл lab11-1.asm текст программы из листинга (Программа записи в файл сообщения). Создала исполняемый файл и проверила его работу. (рис. [-@fig:002], [-@fig:003])

![Текст программы из листинга](image/Рис.2.png){ #fig:002 width=70% }

![Результат работы программы](image/Рис.3.png){ #fig:003 width=70% }

3. С помощью команды chmod я изменила права доступа к исполняемому файлу lab11-1, запретив его выполнение. Я попыталась выполнить файл. Программа выдала отказ в доступе, поскольку я запретил запускать программу для владельца, то есть для себя. (рис. [-@fig:004])

![Запрет на выполнение программы](image/Рис.4.png){ #fig:004 width=70% }

4. С помощью команды chmod я изменила права доступа к файлу lab11-1.asm с исходным текстом программы, добавив права на исполнение. Я попыталась выполнить его. Программа начала работать, поскольку файл был со всеми разрешениями. (рис. [-@fig:005])

![Разрешение для исходного файла](image/Рис.5.png){ #fig:005 width=70% }

5. Я предоставила права доступа к файлу readme.txt в соответствии со своим вариантом в таблице (вариант 14). Я проверила правильность выполнения с помощью команды ls -l. (рис. [-@fig:006])

![Разрешение для файла readme.txt](image/Рис.6.png){ #fig:006 width=70% }

**Самостоятельная работа**

1. Я написала программу, которая запрашивает имя и выводит его в созданном файле. Файл создаёт сама программа. (рис. [-@fig:007], [-@fig:008], [-@fig:009])

![Текст программы](image/Рис.7.png){ #fig:007 width=70% }

![Текст программы](image/Рис.8.png){ #fig:008 width=70% }

![Результат работы программы](image/Рис.9.png){ #fig:009 width=70% }

# Выводы

В ходе выполнения данной лабораторной работы я приобрела практические навыки написания программ для работы с файлами.

