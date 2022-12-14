---
## Front matter
title: "Отчёт по лабораторной работе №3"
subtitle: "*дисциплина: Архитектура компьютера*"
author: "Дарья Сергеевна Кочина"

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
lot: true # List of tables
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
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной лабораторной работы является изучение идеологии и применение средств системы контроля версий Git, а также приобретение практических навыков работы с ней.

# Задание

Изучить идеологию и применение мредств системы контроля версий Git, а также оформить отчёт по выполнению данной лабортаторной работы.

# Теоретическое введение

Системы контроля версий применяются при работе нескольких человек над одним проектом, основное дерево хранится в локальном или удалённом репозитории, к которому настроен доступ для участников прокта. При внесении изменений в содержание проекта система контроля версий позволяет их фиксировать, совмещать изменения. 

Репозиторий - это место, где хранятся и поддерживаются какие-либо данные.

Система контроля версий Git - это набор программ командной строки, доступ к которым можно получить из терминала при помощи ввода команды git с разными опциями.

# Выполнение лабораторной работы

1. Я создала учётную запись на сайте github.com и заполнила основные данные. (рис. [-@fig:001], [-@fig:002]) 

![Создание учётной записи на github](image/Снимок экрана от 2022-10-12 14-07-26.png){ #fig:001 width=70% }

![Профиль на github](image/Снимок экрана от 2022-10-12 14-13-33.png){ #fig:002 width=70% }

2. Я сделала предварительную конфигурацию git. Для этого открыла терминал и ввела следующие команды. (рис. [-@fig:003], [-@fig:004], [-@fig:005], [-@fig:006], [-@fig:007])

![Имя и email владельца репозитория](image/Снимок экрана от 2022-10-26 17-13-57.png){ #fig:003 width=70% }

![Настройка utf-8 в выводе сообщений git (false)](image/Снимок экрана от 2022-10-26 17-17-35.png){ #fig:004 width=70% }

![Имя начальной ветки (master)](image/Снимок экрана от 2022-10-26 17-21-05.png){ #fig:005 width=70% }

![Параметр autocrlf (input)](image/Снимок экрана от 2022-10-26 17-23-03.png){ #fig:006 width=70% }

![Параметр safecrlf (warn)](image/Снимок экрана от 2022-10-26 17-24-30.png){ #fig:007 width=70% }

3. Для последующей идентификации пользователя на сервере репозиториев я сгенерировала пару ключей, перейдя в каталог ~/.ssh. (рис. [-@fig:008])

![Генерация пары ключей (открытый и приватный)](image/Снимок экрана от 2022-10-12 15-19-13.png){ #fig:008 width=70% }

4. Я сгенерировала открытый ключ из локальной консоли в буфер обмена, используя следующую команду. (рис. [-@fig:009])

![Копирование ключа](image/Снимок экрана от 2022-10-12 15-26-14.png){ #fig:009 width=70% }

5. Я загрузила сгенерированный открытый ключ. Для этого на сайте github.com я перешла в меню "setting", выбрала в боковом меню "SSH and GPG keys" и нажала кнопку "New SSH key". Указала имя ключа и вставила ключ в поле. (рис. [-@fig:010], [-@fig:011])

![Окно добавления нового SSH ключа](image/Снимок экрана от 2022-10-12 15-24-44.png){ #fig:010 width=70% }

![Ключ "dk"](image/Снимок экрана от 2022-10-12 15-31-35.png){ #fig:011 width=70% }

6. Я создала рабочее пространство со следующей иерархией. (рис. [-@fig:012])

![Создание рабочего пространства](image/Снимок экрана от 2022-10-12 15-41-58.png){ #fig:012 width=70% }

7. Я создала репозиторий на основе шаблона. (рис. [-@fig:013], [-@fig:014])

![Создание репозитория на основе шаблона](image/Снимок экрана от 2022-10-13 11-04-03.png){ #fig:013 width=70% }

![Создание репозитория на основе шаблона](image/Снимок экрана от 2022-10-13 11-05-14.png){ #fig:014 width=70% }

8. Я открыла терминал и перешла в каталог курса, клонировала созданный репозиторий на локальную машину, предварительно скопировав ссылку для его клонирования. (рис. [-@fig:015], [-@fig:016])

![Ссылка для клонирования репозитория](image/Снимок экрана от 2022-10-13 11-05-57.png){ #fig:015 width=70% }

![Клонирование репозитория](image/Снимок экрана от 2022-10-13 11-21-41.png){ #fig:016 width=70% }

9. Я перешла в каталог с репозиторием и посмотрела его содержимое. (рис. [-@fig:017])

![Содержимое каталога с репозиторием](image/Снимок экрана от 2022-10-13 11-22-31.png){ #fig:017 width=70% }

10. Я удалила файл package.json и создала файл COURSE, содержащий текст "arch-pc". (рис. [-@fig:018])

![Удаление package.json и создание COURSE](image/Снимок экрана от 2022-10-13 11-34-59.png){ #fig:018 width=70% }

11. Я воспользовалась командой make, чтобы выполнить команды из Makefile. (рис. [-@fig:019])

![Команда make](image/Снимок экрана от 2022-10-13 11-37-18.png){ #fig:019 width=70% }

12. Я добавила изменения командой git add, закоммитила их и отправила на сервер.(риc. [-@fig:020])

![Команды git add и git commit](image/Снимок экрана от 2022-10-13 11-47-05.png){ #fig:020 width=70% }

13. Я запушила изменения. (рис. [-@fig:021])

![Команда git push](image/Снимок экрана от 2022-10-13 11-47-50.png){ #fig:021 width=70% }

14. Я посмотрела список коммитов в моём профиле на сайте github.com. (рис. [-@fig:022], [-@fig:023])

![Список коммитов](image/Снимок экрана от 2022-10-13 11-45-33.png){ #fig:022 width=70% }

![Список коммитов](image/Снимок экрана от 2022-10-13 14-08-46.png){ #fig:023 width=70% }

**Самостоятельная работа**

1. Я создала отчёт по выполнению лабораторной работы в соответствующем каталоге рабочего пространства. (рис. [-@fig:024])

![Создание отчёта в каталоге рабочего пространства](image/Снимок экрана от 2022-10-14 15-17-45.png){ #fig:024 width=70% }

2. Я загрузила на Linux файлы с предыдущими лабораторными работами скопировала отчёты по выполнению предыдущих лабораторных работ в соответствующие каталоги созданного рабочего пространства, а затем загрузила эти файлы на github. (рис. [-@fig:025], [-@fig:026])

![Загрузка файлов на github](image/Снимок экрана от 2022-10-14 15-28-33.png){ #fig:025 width=70% }

![Загрузка файлов на github](image/Снимок экрана от 2022-10-14 15-29-38.png){ #fig:026 width=70% }

3. Я проверила загруженные на github файлы. (рис. [-@fig:027])

![Просмотр загруженных файлов](image/Снимок экрана от 2022-10-14 15-33-16.png){ #fig:027 width=70% }


# Выводы

В ходе выполнения данной лабораторной работы я изучила идеологию и применение средств системы контроля версий Git, а также приобрела практические навыки работы с ней.

# Список литературы{.unnumbered}

::: {#refs}
:::
