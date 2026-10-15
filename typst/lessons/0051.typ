#import "../course.typ": *
#show: lesson.with((n: 51, week: 9, day: 3, title: [Opinião: game frameworks], lead: [Лексика игровых движков (#pt[motor de jogo, biblioteca, desempenho, código aberto, curva de aprendizagem]), сравнения #pt[mais … do que, tão … como, melhor / pior] и спор в духе Unity vs Godot.]))

== Сессия 1 — язык и форма  #pill("30 минут")

=== 1. Диалог

#card("Результат урока", [
#checklist-items(([назвать 20 терминов игровой разработки по-португальски;], [сравнить два инструмента четырьмя конструкциями сравнения;], [использовать #pt[melhor / pior / maior / mais pequeno] без ошибок;], [отстоять выбор движка: мнение + два аргумента + пример, 3 минуты;], [написать 100–120 слов сравнения двух инструментов.],))
#strong[Режим:] три блока по 30 минут. Связки урока 49 и #pt[embora] урока 50 — обязательны в речи и тексте.

])

#audio-ref("0051-dialogue")

#dialogue((
  ("Alex", "Sofia, este semestre estou a pensar em mudar do Unity para o Godot nas aulas."),
  ("Sofia", "A sério? Porquê? O Unity é o motor mais usado na indústria."),
  ("Alex", "Sim, mas o Godot é código aberto e gratuito. Os alunos não precisam de licença."),
  ("Sofia", "Concordo, mas o desempenho do Unity é melhor em projetos grandes."),
  ("Alex", "Para um protótipo de dez semanas, o desempenho não é o problema. A curva de aprendizagem é mais importante."),
  ("Sofia", "E qual é mais fácil?"),
  ("Alex", "Na minha opinião, o Godot é tão fácil como o Unity, e o editor é mais leve."),
  ("Sofia", "Tão fácil? O Unity tem mais tutoriais e uma comunidade maior."),
  ("Alex", "É verdade. Embora a documentação do Godot seja mais curta, é mais clara."),
  ("Sofia", "Então fazes uma aula com cada motor e os alunos escolhem?"),
  ("Alex", "Boa ideia. Assim comparam as ferramentas e decidem."),
  ("Sofia", "Para mim, é a melhor solução. Depois conta-me o que escolheram."),
))

+ Без текста: какие два аргумента за Godot, какие два за Unity, чем всё кончилось?
+ С текстом: выпишите все сравнения. Их не меньше семи.
+ Без текста: реплики Alex.

=== 2. Лексика

#table(columns: 4,
  table.header([Português], [Значение], [Português], [Значение]),
  [o motor de jogo], [игровой движок], [a biblioteca], [библиотека],
  [o desempenho], [производительность], [o código aberto], [открытый код],
  [a curva de aprendizagem], [кривая обучения], [as ferramentas], [инструменты],
  [o protótipo], [прототип], [a licença], [лицензия],
  [gratuito / pago], [бесплатный / платный], [o editor], [редактор],
  [a documentação], [документация], [a comunidade], [сообщество],
  [o tutorial], [туториал], [a linguagem de programação], [язык программирования],
  [multiplataforma], [кроссплатформенный], [a atualização / a versão], [обновление / версия],
  [o erro (bug)], [ошибка, баг], [compilar / exportar para], [компилировать / экспортировать на],
  [a cena / o objeto], [сцена / объект], [a física / a animação], [физика / анимация],
  [leve / pesado], [лёгкий / тяжёлый (о программе)], [o principiante], [новичок],
)

#strong[PT-PT:] #pt[o ecrã, o rato, o teclado, o computador portátil, o telemóvel]. Слово #pt[framework] в речи оставляют по-английски (#pt[a framework], ж. р.), но в учебном контексте безопаснее #pt[o motor] для движка и #pt[a biblioteca] для библиотеки.


=== 3. Сравнение

#table(columns: 3,
  table.header([Конструкция], [Значение], [Пример]),
  [mais + прил. + do que], [более … чем], [O Unity é mais pesado do que o Godot.],
  [menos + прил. + do que], [менее … чем], [O Godot é menos conhecido do que o Unity.],
  [tão + прил. + como], [такой же … как], [O Godot é tão fácil como o Unity.],
  [tanto(s)/tanta(s) + сущ. + como], [столько же … сколько], [Não tem tantos tutoriais como o Unity.],
  [verbo + mais / menos do que], [глагол + больше / меньше], [O Godot pesa menos do que o Unity.],
  [o / a mais + прил.], [самый …], [É o motor mais usado na indústria.],
)

#strong[Неправильные:] #pt[bom → melhor, mau → pior, grande → maior, pequeno → mais pequeno]. PT-PT говорит #pt[mais pequeno]; бразильское #pt[menor] в PT-PT звучит формально. Никогда #pt[\*mais bom, \*mais grande]. Наречия: #pt[bem → melhor, mal → pior]: #pt[O Godot exporta melhor para a web.]


#pt[do que] и #pt[que] оба верны; в PT-PT чаще #pt[do que]. После #pt[tão … como] — только #pt[como], не #pt[\*do que].


#exercise([Упражнение B — вставьте слово из таблицы лексики], [
+ O Godot é \_\_\_: qualquer pessoa pode ler e mudar o código.
+ Os alunos fazem um \_\_\_ em dez semanas, não um jogo completo.
+ Com um computador fraco, o \_\_\_ do editor é mau.
+ A \_\_\_ do Unreal é muito difícil para principiantes.
+ Para usar o Unity numa empresa, é preciso pagar uma \_\_\_.
+ Quando o jogo está pronto, \_\_\_ para Windows e para a web.
+ Não percebo esta função. Vou ler a \_\_\_.
+ Há um \_\_\_ na física: o objeto atravessa a parede.
])

#exercise([Упражнение C — исправьте ошибку в сравнении], [
+ O Unity é mais bom do que o Godot para 3D.
+ O editor do Godot é menor do que o do Unity.
+ O Godot é tão leve do que o Unity.
+ A comunidade do Unity é mais grande.
+ O Godot tem tanto tutoriais como o Unity.
+ O Unreal exporta mais bem para consolas.
])

#exercise([Упражнение D — мнение о движке: закончите фразу с аргументом], [
+ Na minha opinião, o Godot é melhor para principiantes porque …
+ Para mim, o Unity continua a ser a melhor escolha para …
+ Embora o Unreal tenha o melhor desempenho, …
+ Concordo que o código aberto é importante, mas …
+ Uma biblioteca é mais leve do que um motor, por isso …
+ Se o computador do aluno é fraco, …
])

== Сессия 2 — слух и произношение  #pill("30 минут")

+ Диалог без текста: запишите все услышанные сравнения.
+ С текстом: слушайте #pt[melhor] — «мильóр», с мягким #emph[lh]; #pt[pior] — «пиóр», один слог после #emph[p].
+ Shadowing реплик Sofia — она задаёт вопросы и возражает: копируйте восходящую интонацию.
+ Монолог ниже — без текста: какой инструмент выбирает Inês и почему.

=== Монолог — Inês о выборе инструмента для веб-игры

#audio-ref("0051-audio2")

#dialogue((
  ("Inês", "Para o projeto da game jam, escolhi uma biblioteca em vez de um motor. Na minha opinião, para um jogo pequeno em 2D no browser, uma biblioteca é mais leve e mais rápida do que o Godot ou o Unity. Não tem editor, é verdade, e a curva de aprendizagem é um pouco maior no início, porque tudo é código. Mas o desempenho na web é melhor e o ficheiro final é muito mais pequeno. Além disso, é código aberto e tem uma documentação tão boa como a dos motores grandes. Embora a minha equipa prefira o Godot, acho que, para quarenta e oito horas, esta é a escolha certa. Se o jogo crescer, mudamos de ferramenta."),
))

#card([Наблюдения PT-PT], [
- #pt[do que] в потоке — «дук»: #emph[o] редуцируется до «у», конечное #emph[e] почти исчезает.
- #pt[tão … como]: #pt[tão] носовой, #pt[como] с редуцированным конечным «у».
- #pt[desempenho] — ударение на #emph[pe], #emph[nh] мягкое: «дезэмпéню».
])

#exercise([Проверка понимания — монолог], [
+ Что выбрала Inês: движок или библиотеку?
+ Для какого типа игры?
+ Два минуса библиотеки?
+ Два плюса?
+ Что предпочитает её команда?
+ Сколько длится game jam?
+ Что будет, если игра вырастет?
])

== Сессия 3 — речь и письмо  #pill("30 минут")

=== 1. Подстановочная речь

- O #strong[Godot] é mais #strong[leve] do que o #strong[Unity].
- O #strong[Unity] tem mais #strong[tutoriais] do que o #strong[Godot].
- O #strong[Godot] é tão #strong[fácil] como o #strong[Unity].
- O desempenho do #strong[Unreal] é melhor, mas a curva de aprendizagem é pior.
- Embora o #strong[Unity] seja #strong[mais usado], prefiro o #strong[Godot] porque #strong[é gratuito].
- Para #strong[um protótipo], o melhor é #strong[uma biblioteca].

=== 2. Мнение 3 минуты

Тема: #pt[«Qual é o melhor motor para principiantes?»] Структура: мнение (1 фраза) → аргумент 1 со сравнением → аргумент 2 со сравнением → конкретный пример из ваших занятий → вывод с #pt[por isso]. Запишите одним дублем, затем посчитайте сравнения (минимум четыре) и связки (минимум четыре).


=== 3. Письмо

100–120 слов: сравните два инструмента, которые вы реально используете (движок, библиотека, редактор, даже DAW для музыки). Обязательно: #pt[mais … do que, tão … como, melhor] или #pt[pior], одно #pt[embora], одно #pt[por isso].


=== 4. Drops — 5 минут дополнительно

+ Тема «технологии» или «компьютер».
+ С каждым из 5 слов — фраза со сравнением.

#duo(card([Контроль без подсказок  #pill("5–7 минут")], [
Закройте урок и выполните:

+ Назовите 15 слов из таблицы лексики с артиклями.
+ Четыре конструкции сравнения с примером на каждую.
+ Четыре неправильные формы (#pt[melhor, pior, maior, mais pequeno]) в фразах.
+ Два аргумента за Godot и два за Unity, каждый с #pt[porque].
+ Одна фраза с #pt[embora] + сравнение.
#strong[Урок завершён], если удалось выполнить 4 из 5 пунктов без чтения. Ошибки — в журнал.

], breakable: true), card([Повтор завтра  #pill("10 минут")], [
- лексика: закрыть русскую колонку, назвать все слова;
- упражнение C заново вслух;
- диалог без текста, роль Alex;
- мнение 3 минуты на новую тему: #pt[«2D ou 3D no primeiro semestre?»]
], breakable: true))

#block(above: 1em)[#set text(size: 7.6pt, fill: muted)
*Источники:* #link("https://www.lidel.pt/pt/catalogo/portugues-europeu-lingua-estrangeira/metodos/passaporte-para-portugues-1-edicao-atualizada-pack-livro-do-aluno-caderno-de-exercicios/")[Passaporte para Português 1 — Edição Atualizada] · #link("https://www.practiceportuguese.com/")[Practice Portuguese — European Portuguese]]

#answers((
  ([Упражнение A — постройте сравнение из подсказки], [
#h(0pt)1. O Godot é mais leve do que o Unity. 2. A documentação do Godot é menos longa do que a documentação do Unity. 3. A curva de aprendizagem do Unreal é tão difícil como a curva do Unity. 4. A comunidade do Unity é maior do que a comunidade do Godot. 5. O desempenho do Godot em 3D é pior do que o desempenho do Unity. 6. O editor do Godot é mais pequeno do que o editor do Unity. 7. O Godot não tem tantos tutoriais como o Unity. 8. Um protótipo em 2D é mais rápido do que um protótipo em 3D.

]),
  ([Упражнение A — постройте сравнение из подсказки], [
Пример: #pt[Unity / pesado / + / Godot → O Unity é mais pesado do que o Godot.]

+ Godot / leve / + / Unity
+ documentação do Godot / longa / − / documentação do Unity
+ curva de aprendizagem do Unreal / difícil / = / curva do Unity
+ comunidade do Unity / grande / + / comunidade do Godot
+ desempenho do Godot em 3D / bom / − / desempenho do Unity (pior)
+ editor do Godot / pequeno / + / editor do Unity
+ Godot / tutoriais / = / Unity (não)
+ protótipo em 2D / rápido / + / protótipo em 3D
]),
  ([Упражнение B — вставьте слово из таблицы лексики], [
código aberto; protótipo; desempenho; curva de aprendizagem; licença; exportamos; documentação; erro (bug).

]),
  ([Упражнение C — исправьте ошибку в сравнении], [
#h(0pt)1. mais bom → melhor. 2. menor → mais pequeno (PT-PT). 3. tão leve do que → tão leve como. 4. mais grande → maior. 5. tanto tutoriais → tantos tutoriais. 6. mais bem → melhor.

]),
  ([Упражнение D — мнение о движке: закончите фразу с аргументом], [
#h(0pt)1. … é gratuito e o editor é leve. 2. … quem quer trabalhar na indústria. 3. … a curva de aprendizagem é muito difícil para dez semanas. 4. … a comunidade também conta. 5. … é melhor para um jogo pequeno em 2D. 6. … o Godot funciona melhor do que o Unity.

]),
  ([Проверка понимания — монолог], [
библиотеку; маленькая 2D-игра в браузере; нет редактора, кривая обучения в начале круче; лучше производительность в вебе, файл намного меньше (плюс открытый код и хорошая документация); Godot; 48 часов; сменят инструмент.

]),
  ([Опора — открыть только если застряли], [
Nas minhas aulas uso o Unity e o Godot, e para mim cada um tem o seu lugar. O Unity é mais conhecido e tem uma comunidade maior, por isso os alunos encontram tutoriais para tudo. No entanto, é mais pesado do que o Godot e precisa de licença nas empresas. O Godot é gratuito e de código aberto; o editor é mais leve e a documentação é tão clara como a do Unity, embora seja mais curta. Para 3D, o desempenho do Unity é melhor. Para um protótipo em 2D de dez semanas, o Godot é a melhor escolha, porque os alunos começam a programar no primeiro dia.

]),

))
