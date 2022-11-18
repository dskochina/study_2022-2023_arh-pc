---
## Front matter
title: "Отчёт по лабораторной работе №6"
subtitle: "Основы работы с Midnight Commander. Структура программы на языке ассемблера NASM. Системные вызовы в ОС GNU Linux"
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

Целью данной лабораторной работы является приобретение практических навыков работы в Midnight Commander. Освоение инструкций языка ассемблера mov и int.

# Задание

Приобрести практичкеские навыки работы в Midhight Commander. А также освоить инструкции языка ассемблера mov и int.

# Теоретическое введение

**Midnight Commander (или просто mc)** — это программа, которая позволяет просматривать структуру каталогов и выполнять основные операции по управлению файловой системой, т.е. mc является файловым менеджером. Midnight Commander позволяет сделать работу с файлами более удобной и наглядной. Для активации оболочки Midnight Commander достаточно ввести в командной строке mc и нажать клавишу Enter.

Программа на языке ассемблера NASM, как правило, состоит из трёх секций: секция кода программы (SECTION .text), секция инициированных (известных во время компиляции) данных (SECTION .data) и секция неинициализированных данных (тех, под которые во время компиляции только отводится память, а значение присваивается в ходе выполнения программы) (SECTION .bss).

# Выполнение лабораторной работы

1. Я открыла Midnight Commander. Я перешла в каталог, созданный при выполнении лабораторной работы N5. (рис. [-@fig:001])

![Окно Midnight Commander. Смена текущего каталога](image/Рис.1.png){ #fig:001 width=70% }

2. С помощью функциональной клавиши F7 я создала папку lab06 и перешла в созданный каталог. (рис. [-@fig:002])

![Окно Midnight Commander. Создание каталога](image/Рис.2.png){ #fig:002 width=70% }

3. Пользуясь строкой ввода и командой touch, я создала файл lab6-1.asm. (рис. [-@fig:003])

![Окно Midnight Commander. Создание файла](image/Рис.3.png){ #fig:003 width=70% }

4. С помощью функциональной клавиши F4 я открыла файл lab6-1.asm для редактирования во встроенном редакторе. Я ввела текст программы из листинга, сохранила изменения и закрыла файл. (рис. [-@fig:004])

![Окно Midnight Commander. Редактор mcedit](image/Рис.4.png){ #fig:004 width=70% }

5. С помощью функциональной клавиши F3 я открыла файл lab6-1.asm для просмотра. А также убедилась, что файл содержит текст программы. (рис. [-@fig:005])

![Файл lab6-1.asm](image/Рис.5.png){ #fig:005 width=70% }

6. Я оттранслировала текст программы lab6-1.asm в объектный файл. Выполнила компоновку объектного файла и запустила получившийся исполняемый файл. Программа выводит строку 'Введите строку:' и ожидает ввода с клавиатуры. На запрос я ввела ФИО. (рис. [-@fig:006])

![Ввод команд и вывод ФИО](image/Рис.6.png){ #fig:006 width=70% }

7. Я скачайте файл in_out.asm со страницы курса в ТУИС. Подключаемый файл in_out.asm должен лежать в том же каталоге, что и файл с программой, в которой он используется.Для этого в одной из панелей mc я открыла каталог с файлом lab6-1.asm. В другой панели - каталог со скаченным файлом in_out.asm. Я скопировала файл in_out.asm в каталог с файлом lab6-1.asm с помощью функциональной клавиши F5. (рис. [-@fig:007])

![Копирование файла lab6-1.asm](image/Рис.7.png){ #fig:007 width=70% }

8. Я создала копию файла lab6-1.asm с именем lab6-2.asm. (рис. [-@fig:008], [-@fig:009])

![Создании копии файла lab6-1.asm](image/Рис.8.png){ #fig:008 width=70% }

![Копия файла с названием lab6-2.asm](image/Рис.9.png){ #fig:009 width=70% }

9. Я исправила текст программы в файле lab6-2.asm с использование подпрограмм из внешнего файла in_out.asm в соответствии с листингом. Я создала исполняемый файл и проверила его работу. (рис. [-@fig:010], [-@fig:011])

![Текст файла из листинга](image/Рис.10.png){ #fig:010 width=70% }

![Проверка файла](image/Рис.11.png){ #fig:011 width=70% }

10. В файле lab6-2.asm я заменила подпрограмму sprintLF на sprint. Я создала исполняемый файл и проверила его работу. (рис. [-@fig:012], [-@fig:013])

![Изменённый текст файла из листинга](image/Рис.12.png){ #fig:012 width=70% }

![Проверка изменённого файла](image/Рис.13.png){ #fig:013 width=70% }

**Выполнение самостоятельной работы**

11. Я создала копию файла lab6-1.asm. Внесла изменения в программу (без использования внешнего файла in_out.asm), так чтобы она работала по алгоритму. (рис. [-@fig:014])

![Изменённый файл lab6-3.asm](image/Рис.14.png){ #fig:014 width=70% }

12. Я получила исполняемый файл и проверила его работу. На приглашение ввести строку я ввела свою фамилию. (рис. [-@fig:015]) 

![Проверка изменённого файла lab6-3.asm](image/Рис.15.png){ #fig:015 width=70% }

13. Я создала копию файла lab6-2.asm. Исправила текст программы с использованием подпрограмм из внешнего файла in_out.asm, так чтобы она работала по алгоритму. (рис. [-@fig:016])

![Изменённый файл lab6-4.asm](image/Рис.16.png){ #fig:016 width=70% }

14. Я создала исполняемый файл и проверила его работу. (рис. [-@fig:017])

![Проверка изменённого файла lab6-4.asm](image/Рис.17.png){ #fig:017 width=70% }

# Выводы

В ходе выполнения данной лабораторной работы я приобрела практические навыки работы в Midnight Commander. А также освоила инструкции языка ассемблера mov и int.

