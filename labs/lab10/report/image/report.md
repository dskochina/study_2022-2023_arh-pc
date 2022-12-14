---
## Front matter
title: "Отчёт по лабораторной работе №10"
subtitle: "Понятие подпрограммы. Отладчик GDB."
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

Целью данной лабораторной работы является приобретение навыков написания программ с использованием подпрограмм. А также знакомство с методами отладки при помощи GDB и его основными возможностями.

# Задание

Приобрести навыки написания программ с использованием подпрограмм. А также ознакомиться с методами отладки при помощи GDB и его основными возможностями.

# Теоретическое введение

**Отладка** — это процесс поиска и исправления ошибок в программе. В общем случае его можно разделить на четыре этапа:

1. обнаружение ошибки;

2. поиск её местонахождения;

3. определение причины ошибки;

4. исправление ошибки.

Можно выделить следующие типы ошибок:

*синтаксические ошибки* — обнаруживаются во время трансляции исходного кода и вызваны нарушением ожидаемой формы или структуры языка;

*семантические ошибки* — являются логическими и приводят к тому, что программа запускается, отрабатывает, но не даёт желаемого результата;

*ошибки в процессе выполнения* — не обнаруживаются при трансляции и вызывают прерывание выполнения программы.

Наиболее часто применяют следующие методы отладки:

1. Создание точек контроля значений на входе и выходе участка программы;

2. Использование специальных программ-отладчиков.

**Пошаговое выполнение** — это выполнение программы с остановкой после каждой строчки, чтобы программист мог проверить значения переменных и выполнить другие действия.

**Точки останова** — это специально отмеченные места в программе, в которых программа-отладчик приостанавливает выполнение программы и ждёт команд.

Наиболее популярные виды точек останова:

1. Breakpoint — точка останова (остановка происходит, когда выполнение доходит до определённой строки, адреса или процедуры, отмеченной программистом);

2. Watchpoint — точка просмотра (выполнение программы приостанавливается, если программа обратилась к определённой переменной: либо считала её значение, либо изменила его).

GDB (GNU Debugger — отладчик проекта GNU) работает на многих UNIX-подобных системах и умеет производить отладку многих языков программирования.

GDB может выполнять следующие действия:

1. Начать выполнение программы, задав всё, что может повлиять на её поведение;

2. Остановить программу при указанных условиях;

3. Исследовать, что случилось, когда программа остановилась;

4. Изменить программу так, чтобы можно было поэкспериментировать с устранением эффектов одной ошибки и продолжить выявление других.

**Подпрограмма** — это, как правило, функционально законченный участок кода, который можно многократно вызывать из разных мест программы. В отличие от простых переходов из подпрограмм существует возврат на команду, следующую за вызовом.

# Выполнение лабораторной работы

1. Я создала каталог для выполнения лабораторной работы №10, перешла в него и создала файл lab10-1.asm. (рис. [-@fig:001])

![Создание файла lab10-1.asm](image/Рис.1.png){ #fig:001 width=70% }

2. Я ввела в файл lab10-1.asm текст программы из листинга (пример программы с использованием вызова подпрограммы), создала исполняемый файл и проверила его работу. (рис. [-@fig:002], [-@fig:003])

![Текст программы из листинга](image/Рис.2.png){ #fig:002 width=70% }

![Результат работы программы](image/Рис.3.png){ #fig:003 width=70% }

3. Я изменила текст программы, добавив подпрограмму _subcalcul в подпрограмму _calcul, для вычисления выражения f(g(x)), где x вводится с клавиатуры, f(x) = 2x+7, g(x) = 3x − 1. Т.е. x передается в подпрограмму _calcul из неё в подпрограмму _subcalcul, где вычисляется выражение g(x), результат возвращается в _calcul и вычисляется выражение f(g(x)). Результат возвращается в основную программу для вывода результата на экран. (рис. [-@fig:004], [-@fig:005])

![Изменённый текст программы](image/Рис.4.png){ #fig:004 width=70% }

![Изменённый текст программы](image/Рис.5.png){ #fig:005 width=70% }

4. Я создала исполняемый файл и проверила его работу. (рис. [-@fig:006])

![Результат работы программы](image/Рис.6.png){ #fig:006 width=70% }

5. Я создала файл lab10-2.asm с текстом программы из листинга (Программа печати сообщения Hello world!). (рис. [-@fig:007], [-@fig:008])

![Создание файла lab10-2.asm](image/Рис.7.png){ #fig:007 width=70% }

![Текст программы из листинга](image/Рис.8.png){ #fig:008 width=70% }

6. Я получила исполняемый файл. Для работы с GDB в исполняемый файл необходимо добавить отладочную информацию, для этого трансляцию программ необходимо проводить с ключом ‘-g’. Я загрузила исполняемый файл в отладчик gdb. (рис. [-@fig:009])

![Загрузка исполняемого файла в отладчик gdb](image/Рис.9.png){ #fig:009 width=70% }

7. Я проверила работу программы, запустив ее в оболочке GDB с помощью команды run (сокращённо r). (рис. [-@fig:010])

![Команда run](image/Рис.10.png){ #fig:010 width=70% }

8. Для более подробного анализа программы я установила брейкпоинт на метку _start, с которой начинается выполнение любой ассемблерной программы, и запустила её. (рис. [-@fig:011])

![Запуск программы](image/Рис.11.png){ #fig:011 width=70% }

9. Я посмотрела дисассимилированный код программы с помощью команды disassemble начиная с метки _start. (рис. [-@fig:012], [-@fig:013])

![Дисассимилированный код программы](image/Рис.12.png){ #fig:012 width=70% }

![Команда disassemble](image/Рис.13.png){ #fig:013 width=70% }

10. Я переключилась на отображение команд с Intel’овским синтаксисом, введя команду set disassembly-flavor intel. (рис. [-@fig:014])

![Команда set disassembly-flavor intel](image/Рис.14.png){ #fig:014 width=70% }

11. Различия отображения синтаксиса машинных команд в режимах ATT и Intel.

12. Я включила режим псевдографики для более удобного анализа программы. (рис. [-@fig:015], [-@fig:016])

![Команда layout asm](image/Рис.15.png){ #fig:015 width=70% }

![Команда layout regs](image/Рис.16.png){ #fig:016 width=70% }

13. На предыдущих шагах была установлена точка останова по имени метки (_start). Я проверила это с помощью команды info breakpoints (кратко i b). (рис. [-@fig:017])

![Команда info breakpoints](image/Рис.17.png){ #fig:017 width=70% }

14. Я установила ещё одну точку останова по адресу инструкции. Адрес инструкции можно увидеть в средней части экрана в левом столбце соответствующей инструкции. Я определила адрес предпоследней инструкции (mov ebx,0x0) и установила точку останова. (рис. [-@fig:018])

![Установка точки останова](image/Рис.18.png){ #fig:018 width=70% }

15. Я выполнила 5 инструкций с помощью команды stepi (или si) и проследила за изменением значений регистров.

16. Я посмотрела содержимое регистров с помощью команды info registers (или i r).

17. Я посмотрела значение переменной msg1 по имени. (рис. [-@fig:019])

![Значение переменной msg1 по имени](image/Рис.19.png){ #fig:019 width=70% }

18. Я посмотрела значение переменной msg2 по адресу. Адрес переменной можно определить по дисассемблированной инструкции. Также я посмотрела инструкцию mov ecx,msg2 которая записывает в регистр ecx адрес перемененной msg2.

19. Я изменила значение для регистра или ячейки памяти с помощью команды set. Также я изменила первый символ переменной msg1. (рис. [-@fig:020], [-@fig:021])

![Команда set](image/Рис.20.png){ #fig:020 width=70% }

![Команда set](image/Рис.21.png){ #fig:021 width=70% }

20. Я заменила символ во второй переменной msg2. (рис. [-@fig:022])

![Замена символа](image/Рис.22.png){ #fig:022 width=70% }

21. Я вывела в различных форматах (в шестнадцатеричном формате, в двоичном формате и в символьном виде) значение регистра edx.

22. С помощью команды set я изменила значение регистра ebx. (рис. [-@fig:023], [-@fig:024])

![Изменение значения регистра ebx](image/Рис.23.png){ #fig:023 width=70% }

![Изменение значения регистра ebx](image/Рис.24.png){ #fig:024 width=70% }

23. Разница вывода команд p/s $ebx.

24. Я завершила выполнение программы с помощью команды continue (сокращенно c) и вышла из GDB с помощью команды quit (сокращенно q). (рис. [-@fig:025])

![Выход из GDB](image/Рис.25.png){ #fig:025 width=70% }

25. Я скопировала файл lab9-2.asm, созданный при выполнении лабораторной работы №9, с программой, выводящей на экран аргументы командной строки в файл с именем lab10-3.asm. (рис. [-@fig:026])

![Копирование](image/Рис.26.png){ #fig:026 width=70% }

26. Я создала исполняемый файл. (рис. [-@fig:027])

![Создание исполняемого файла](image/Рис.27.png){ #fig:027 width=70% }

27. Для загрузки в gdb программы с аргументами необходимо использовать ключ --args. Я загрузила исполняемый файл в отладчик, указав аргументы.

28. Как отмечалось в предыдущей лабораторной работе, при запуске программы аргументы командной строки загружаются в стек. Исследуем расположение аргументов командной строки в стеке после запуска программы с помощью gdb. Для начала установим точку останова перед первой инструкцией в программе и запустим её. (рис. [-@fig:028])

![Установка и запуск точки останова](image/Рис.28.png){ #fig:028 width=70% }

29. Адрес вершины стека хранится в регистре esp и по этому адресу располагается число, равное количеству аргументов командной строки (включая имя программы). (рис. [-@fig:029])

![Адрес вершины стека](image/Рис.29.png){ #fig:029 width=70% }

30. Как видно, число аргументов равно 4 – это имя программы lab10-3 и непосредственно аргументы: аргумент1, аргумент, 2 и 'аргумент 3'. Я посмотрела остальные позиции стека. (рис. [-@fig:030])

![Просмотр позиций стека](image/Рис.30.png){ #fig:030 width=70% }


**Самостоятельная работа**

1. Я преобразовала программу из лабораторной работы №9 (задание №1 для самостоятельной работы), реализовав вычисление значения функции f(x) как подпрограмму.

![Преобразование программы](image/Рис.31.png){ #fig:031 width=70% }

![Проверка работы программы](image/Рис.32.png){ #fig:032 width=70% }

2. В листинге приведена программа вычисления выражения (3+2)*4+5. При запуске данная программа даёт неверный результат. С помощью отладчика GDB, анализируя изменения значений регистров, я определила ошибку и исправила её. (рис. [-@fig:033], [-@fig:034], [-@fig:035], [-@fig:036])

![Текст программы из листинга](image/Рис.33.png){ #fig:033 width=70% }

![Проверка программы](image/Рис.34.png){ #fig:034 width=70% }

![Изменённый текст программы](image/Рис.35.png){ #fig:035 width=70% }

![Результат работы программы](image/Рис.36.png){ #fig:036 width=70% }

# Выводы

В ходе выполнения данной лабораторной работы я приобрела навыки написания программ с использованием подпрограмм. Ознакомилась с методами отладки при помощи GDB и его основными возможностями.

