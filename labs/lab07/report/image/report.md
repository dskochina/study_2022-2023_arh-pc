---
## Front matter
title: "Отчёт по лабораторной работе №7"
subtitle: "Арифметические операции в NASM"
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

Целью данной лабораторной работы является освоение арифметических инструкций языка ассемблера NASM.

# Задание

Освоить арифметические инструкции языка ассемблера NASM.

# Теоретическое введение

Большинство инструкций на языке ассемблера требуют обработки операндов. Адрес операнда предоставляет место, где хранятся данные, подлежащие обработке. Это могут быть данные, хранящиеся в регистре или в ячейке памяти. Далее рассмотрены все существующие способы задания адреса хранения операндов – способы адресации.
Существует три основных способа адресации:
**Регистровая адресация** – операнды хранятся в регистрах и в команде используются имена этих регистров, например: mov ax,bx.
**Непосредственная адресация** – значение операнда задается непосредственно в команде, Например: mov ax,2.
**Адресация памяти** – операнд задает адрес в памяти. В команде указывается символическое обозначение ячейки памяти, над содержимым которой требуется выполнить операцию.

# Выполнение лабораторной работы

1. Я создала каталог для программам лабораторной работы № 7, перешла в него и создала файл lab7-1.asm. (рис. [-@fig:001])

![Создание файла lab7-1.asm](image/Рис1.png){ #fig:001 width=70% }

2. Я ввела нужный текст в файле lab7-1.asm, создала файл и проверила его. Программа вывела "j". (рис. [-@fig:002], [-@fig:003])

![Текст в файле lab7-1.asm](image/Рис.2.png){ #fig:002 width=70% }

![Создание файла и проверка работы](image/Рис.3.png){ #fig:003 width=70% }

3. Я изменила текст программы и вместо символов записала в регистры числа. Я создала исполняемый файл и запустила его. Программа вывела невидимый символ. (рис. [-@fig:004], [-@fig:005])

![Изменения в программе lab6-1.asm](image/Рис.4.png){ #fig:004 width=70% }

![Проверка программы](image/Рис.5.png){ #fig:005 width=70% }

4. Я создала файл lab7-2.asm и ввела в него текст программы. (рис. [-@fig:006], [-@fig:007])

![Создание файла lab7-2.asm](image/Рис.6.png){ #fig:006 width=70% }

![Текст программы из листинга](image/Рис.7.png){ #fig:007 width=70% }

5. Я создала исполняемый файл и запустила его. В результате работы программы я получила число 106. (рис. [-@fig:008])

![Запуск программы lab7-2.asm](image/Рис.8.png){ #fig:008 width=70% }

6. Я изменила текст программы lab7-2.asm и запустила её. Она вывела число 10. (рис. [-@fig:009], [-@fig:010])

![Изменения в программе lab6-2.asm](image/Рис.9.png){ #fig:009 width=70% }

![Проверка программы](image/Рис.10.png){ #fig:010 width=70% }

7. Я заменила функцию iprintLF на iprint. Создала исполняемый файл и запустила его. Отличие вывода функций iprintLF от iprint заключается в том, что при использовании команды iprintLF мы начинаем вводить команду на следующей строке, а при использовании команды iprint мы вводим следующие данные на той же строке. (рис. [-@fig:011], [-@fig:012])

![Замена iprintLF на iprint](image/Рис.11.png){ #fig:011 width=70% }

![Запуск программы с изменениями](image/Рис.12.png){ #fig:012 width=70% }

8. Я создала файл lab7-3.asm и ввела текст программы из листинга. Создала исполняемый файл и запустила его. (рис. [-@fig:013], [-@fig:014], [-@fig:015])

![Создание файла lab7-3.asm](image/Рис.13.png){ #fig:013 width=70% }

![Текст программы из листинга](image/Рис.14.png){ #fig:014 width=70% }

![Запуск программы lab7-3.asm](image/Рис.15.png){ #fig:015 width=70% }

9. Я изменила текст программы для вычисления выражения f(x)=(4*6+2)/5. Создала исполняемый файл и проверила его работу. (рис. [-@fig:016], [-@fig:017])

![Изменения в программе lab7-3.asm](image/Рис.16.png){ #fig:016 width=70% }

![Запуск программы](image/Рис.17.png){ #fig:017 width=70% }

10. Я создала файл variant.asm. Ввела текст программы из листинга в файл. (рис. [-@fig:018], [-@fig:019])

![Создание файла variant.asm](image/Рис.18.png){ #fig:018 width=70% }

![Текст программы из листинга](image/Рис.19.png){ #fig:019 width=70% }

11. Я создала исполняемый файл и запустила его. Проверила работу программы, вычислив номер варианта аналитически. Результат совпал. (рис. [-@fig:020])

![Запуск программы variant.asm](image/Рис.20.png){ #fig:020 width=70% }

**Вопросы**

1. Какие строки листинга 7.4 отвечают за вывод на экран сообщения ‘Ваш
вариант:’?

Строки mov eax,rem call sprint.

2. Для чего используется следующие инструкции nasm: mov ecx,x, mov edx,80, call sread?

Инструкция mov ecx,x записывает адресы выводимого соообщения в EAX.
Инструкция mov edx,80 записывает длину вводимого сообщения в EBX.
Инструкция call sread выполняет вызов программы ввода сообщения.

3. Для чего используется инструкция “call atoi”?

Эта инструкция используется для преобразования кода переменной ASCII в число.

4. Какие строки листинга 7.4 отвечают за вычисления варианта?

xor edx,edx mov ebx,20 div ebx inc edx.

5. В какой регистр записывается остаток от деления при выполнении инструкции “div ebx”?

Остаток от деления при выполнении инструкции "div ebx" записывается в в регистр EBX.

6. Для чего используется инструкция “inc edx”?

Эта инструкция используется для увеличения значения edx на единицу.

7. Какие строки листинга 7.4 отвечают за вывод на экран результата вычис-
лений?

mov eax,edx call iprintLF

**Самостоятельная работа**

1. Я создала файл lab7-4.asm для выполнения самостоятельной работы. (рис. [-@fig:021])

![Создание файла lab7-4.asm](image/Рис.21.png){ #fig:021 width=70% }

2. Я написала программу вычисления выражения f(x)=(x/2+8)3. Программа вывела выражение для вычисления, вывела запрос на ввод значения x, вычислила заданное выражение в зависимости от введённого x, вывела результат вычислений. Вид функции f(x) я выбрала из таблицы вариантов заданий в соответствии с номером полученным при выполнении лабораторной работы. Я создала исполняемый файл и проверила его работу. Для этого я вводила значения для x, равные 1 и 4. Результаты работы программы были верными. При вводе 1 программа вывела ответ 24, т.к. учитывалась только целая часть от деления. При вводе 4 ответ оказался 30, что является верным. (рис. [-@fig:022], [-@fig:023], [-@fig:024])

![Программа для вычисления в файле lab7-4.asm](image/Рис.22.png){ #fig:022 width=70% }

![Программа для вычисления в файле lab7-4.asm](image/Рис.23.png){ #fig:023 width=70% }

![Результаты работы программы](image/Рис.24.png){ #fig:024 width=70% }

# Выводы

В ходе выполнения данной лабораторной работы я освоила арифметические инструкции языка ассемблера NASM.
