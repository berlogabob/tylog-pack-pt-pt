#import "../course.typ": *
#show: lesson.with((n: 65, week: 11, day: 5, title: [Cinco erros], lead: [Метод журнала ошибок, 12 типичных ошибок русскоязычных в PT-PT, тренировка извлечения на 20 пунктов, шаблон отложенного теста и аудио из 12 правильных фраз для shadowing.]))

== Сессия 1 — язык и форма  #pill("30 минут")

=== 1. Метод журнала ошибок

Формат из PLAN.md: одна строка на ошибку, четыре поля. Не «тема», а конкретная фраза, как вы её сказали.


#sheet("data       | a minha forma              | forma correta                | exemplo novo\n2026-09-02 | *tenho trabalhado com Unity (1 vez) | já trabalhei com Unity | Já usei o Godot num projeto.\n2026-09-02 | *em duas semanas           | daqui a duas semanas         | Daqui a um mês gravamos.\n2026-09-02 | *vou ir ao IADE            | vou ao IADE                  | Amanhã vou à secretaria.")

Правила: 1) записывать в день ошибки, не «потом»; 2) новый пример — свой, не из урока; 3) ошибка считается закрытой после трёх правильных употреблений в речи в разные дни; 4) раз в неделю — отложенный тест по строкам старше семи дней. Ошибки, которые вернулись после закрытия, — «устойчивые»; их у вас должно быть не больше пяти в работе одновременно.


=== 2. Двенадцать типичных ошибок русскоязычных в PT-PT

Прочитайте, отметьте свои. Третью колонку заполните вслух: свой пример на каждую строку.


#table(columns: 4,
  table.header([\#], [Ошибка], [Неправильно → правильно], [Почему]),
  [1], [#pt[ser / estar]], [\*Sou cansado. → Estou cansado. \*O projetor é avariado. → O projetor está avariado. \*Está professor. → É professor.], [Состояние и место — #pt[estar]; постоянный признак, профессия — #pt[ser]. В русском глагола нет, отсюда наугад.],
  [2], [Пропуск артикля], [\*Sofia chegou. → A Sofia chegou. \*Meu projeto está pronto. → O meu projeto está pronto. \*Alunos entregaram. → Os alunos entregaram.], [В PT-PT артикль перед именами людей и перед притяжательными обязателен.],
  [3], [Слияния #pt[no / do / ao]], [\*em o IADE → no IADE; \*de o Rui → do Rui; \*a o laboratório → ao laboratório; \*a a Sofia → à Sofia.], [#pt[em, de, a, por] + артикль всегда сливаются.],
  [4], [Место местоимения], [\*Me chamo Alex. → Chamo-me Alex. \*Não chamo-me… → Não me chamo… \*Já o disse-lhe. → Já lhe disse.], [По умолчанию энклиза; после #pt[não, já, nunca, que, quem, também, só] — проклиза.],
  [5], [Род #pt[-agem / -ção / -ema]], [\*o mensagem → a mensagem; \*o linguagem → a linguagem; \*o programação → a programação; \*a problema → o problema; \*a sistema → o sistema; \*a tema → o tema.], [#pt[-agem, -ção] — женский; #pt[-ema, -ama] греческого происхождения — мужской.],
  [6], [#pt[ter / haver]], [\*Tem um problema com o projetor. (есть проблема) → Há um problema com o projetor. \*Em mim há dois cabos HDMI. (калька с «у меня есть») → Tenho dois cabos HDMI.], [Существование «есть» — #pt[há]; обладание — #pt[ter]. Бразильское #pt[tem] = «есть» в PT-PT звучит чужеродно.],
  [7], [Ложные друзья], [pasta = папка (не паста → massa); esquisito = странный (не изысканный → requintado); propina = плата за обучение (не взятка → suborno); prenda = подарок; aula = занятие, урок (не аудитория → sala de aula).], [Внешнее сходство с русским или английским.],
  [8], [Предлог после глагола], [\*Gosto o Godot. → Gosto do Godot. \*Preciso um cabo. → Preciso de um cabo. \*Cheguei em Lisboa. → Cheguei a Lisboa. Vou ao IADE (и вернусь) / Vou para Lisboa (надолго).], [#pt[gostar de, precisar de, chegar a, ir a / para] — учить глагол вместе с предлогом.],
  [9], [#pt[ter de / ter que]], [\*Tenho a entregar o plano. → Tenho de entregar o plano. \*Devo entregar hoje (= «должен» по расписанию). → Tenho de entregar hoje.], [Обязанность — #pt[ter de] (PT-PT) / #pt[ter que]; #pt[dever] — моральный долг или предположение.],
  [10], [Порядок слов в вопросе], [\*Onde tu moras? → Onde moras? / Onde é que moras? \*Quando a aula é? → Quando é a aula? \*O que tu fazes? → O que fazes? / O que é que fazes?], [Вопросительное слово + глагол; #pt[é que] — нейтральный разговорный вариант PT-PT.],
  [11], [#pt[estar a] + infinitivo, не герундий], [\*Estou trabalhando. → Estou a trabalhar. \*Estamos gravando. → Estamos a gravar.], [Герундий-прогрессив — бразильский; в PT-PT только #pt[estar a + infinitivo].],
  [12], [#pt[muito / bem]], [\*Gosto bem do Godot. → Gosto muito do Godot. \*Ela é muita simpática. → Ela é muito simpática. \*Está muito. → Está bem. \*O jogo funciona muito. → O jogo funciona bem.], [#pt[muito] = «очень, много» (наречие не согласуется); #pt[bem] = «хорошо». Русское «хорошо» = #pt[bem], «очень» = #pt[muito].],
)

#exercise([Упражнение A — свой пример на каждую строку (12 фраз вслух, затем записать)], [
Модель: #pt[1 — Hoje estou cansado, mas sou professor e tenho de dar aula.] Фраза должна быть о вас, IADE, играх или музыке.

])

== Сессия 2 — слух и произношение  #pill("30 минут")

=== 1. Двенадцать правильных фраз — shadowing

Одна фраза на каждую ошибку, в том же порядке. Первый проход: слушать. Второй: повторять за диктором с паузой. Третий: одновременно с диктором, без текста. Цель — чтобы правильная форма звучала в голове «сама».


#card("Результат урока", [
#checklist-items(([выбрать свои пять устойчивых ошибок из журнала и таблицы;], [для каждой из 12 типичных ошибок сказать «неправильно → правильно → свой пример»;], [вести журнал по формату #raw("дата | моя форма | правильная форма | новый пример");], [пройти тренировку извлечения на 20 пунктов не ниже 16/20;], [подготовить отложенный тест для урока 66 по шаблону.],))
#strong[Режим:] три блока по 30 минут. Между ними можно сделать перерыв.

])

#audio-ref("0065-audio1")

#dialogue((
  ("Alex", "Sou professor, mas hoje estou muito cansado."),
  ("Alex", "A Sofia disse que o meu projeto está pronto."),
  ("Alex", "Vou ao laboratório e depois falo com o Rui na secretaria."),
  ("Alex", "Chamo-me Alex e não me esqueço dos nomes dos alunos."),
  ("Alex", "A mensagem explica o problema do sistema."),
  ("Alex", "Há um problema com o projetor, mas tenho um portátil."),
  ("Alex", "Guardei o ficheiro na pasta errada; foi esquisito."),
  ("Alex", "Gosto do Godot, mas preciso de mais tempo para chegar ao fim do projeto."),
  ("Alex", "Tenho de entregar o plano até sexta-feira."),
  ("Alex", "Onde é que fica a sala? Quando é a aula?"),
  ("Alex", "Estou a preparar o enunciado e os alunos estão a trabalhar."),
  ("Alex", "Toco bem, mas ainda ensaio muito."),
))

#card([Наблюдения PT-PT], [
- #pt[Chamo-me] — местоимение безударное, прилипает к глаголу: #pt[\[ˈʃɐmumɨ\]]; в #pt[não me esqueço] оно так же безударно, но стоит перед глаголом.
- #pt[no / do / ao] — один слог; если слышите два (#pt[em o]), это ошибка.
- #pt[Estou a preparar]: #pt[a] почти не слышно, но пауза между #pt[estou] и глаголом есть; не сливайте в #pt[\*estou preparar].
])

=== 2. Аудио-диктант

Четвёртый проход: запишите все 12 фраз на слух, затем сверьте с текстом. Каждая ошибка написания — в журнал, если она из таблицы (артикль, слияние, местоимение).


== Сессия 3 — речь и письмо  #pill("30 минут")

=== 1. Тренировка извлечения — 20 пунктов

Закройте таблицу. Исправьте или переведите вслух, потом запишите. Ответы открывать только после всех 20. Цель — 16/20.


+ Corrige: A aula é cancelada porque o professor é doente.
+ Corrige: Rui e Sofia estão no meu gabinete.
+ Corrige: Vou em o IADE de comboio.
+ Corrige: Não sinto-me bem hoje.
+ Corrige: Recebi um mensagem sobre a problema do horário.
+ Corrige: Tem três salas livres no segundo piso.
+ Переведите: Я положил файл в папку «Aulas».
+ Переведите: Плата за обучение в IADE высокая.
+ Corrige: Gosto muito o Godot, mas preciso o Unity para este projeto.
+ Corrige: Cheguei em Lisboa há dois anos e fui para a secretaria.
+ Corrige: Tenho que a entregar o plano hoje.
+ Corrige: Onde tu guardas os ficheiros?
+ Corrige: Os alunos estão trabalhando no projeto.
+ Corrige: O jogo funciona muito; gosto bem dele.
+ Переведите: Это странный звук из усилителя.
+ Переведите: Я подарил Софии подарок — барабанные палочки.
+ Corrige: Sofia está professora no IADE e é cansada.
+ Corrige: Já disse-lhe que a sistema não funciona.
+ Переведите: Занятие в 14:00, а не аудитория.
+ Corrige: Ela é muita boa baterista e toca muito.

Каждый промах — строка в журнале. Если промахов больше четырёх в одной категории, эта категория входит в ваши «пять устойчивых».


=== 2. Пять устойчивых ошибок

Из журнала (недели 5–11) и сегодняшнего теста выберите пять. Для каждой скажите вслух три новых фразы с правильной формой. Запишите одним дублем: 15 фраз, около двух минут.


=== 3. Шаблон отложенного теста

Заполните сегодня, закройте до урока 66. Для каждой из пяти ошибок — четыре пункта: два «исправь», один «переведи», один «скажи своё». В уроке 66 выполняете без подсказок; проходной балл 80%.


#sheet("Teste diferido — semana 11               дата составления: ________   дата теста: ________\n\nErro 1: ______________________\n  1. Corrige: ____________________________________________   ___ / 1\n  2. Corrige: ____________________________________________   ___ / 1\n  3. Traduz:  ____________________________________________   ___ / 1\n  4. Frase própria com a forma correta: __________________   ___ / 1\nErro 2: ______________________   (пункты 5–8, та же схема)\nErro 3: ______________________   (пункты 9–12)\nErro 4: ______________________   (пункты 13–16)\nErro 5: ______________________   (пункты 17–20)\n\nИтого: ___ / 20     Проход: ≥ 16     Ошибки, которые вернулись: __________________")

=== 4. Drops — 5 минут дополнительно

+ Пройдите одну короткую сессию по любой теме.
+ С пятью словами скажите фразу, в которой сознательно проверяете одну из 12 ошибок (артикль, слияние, предлог).

#duo(card([Контроль без подсказок  #pill("5–7 минут")], [
Закройте урок и выполните:

+ Назовите четыре поля журнала ошибок и правило закрытия ошибки.
+ Перечислите 12 категорий из таблицы.
+ Назовите свои пять устойчивых ошибок с правильной формой каждой.
+ Пять ложных друзей с переводом.
+ Скажите по памяти шесть из 12 фраз аудио.
#strong[Урок завершён], если удалось выполнить 4 из 5 пунктов без чтения. Ошибки — материал следующего повтора, а не провал.

], breakable: true), card([Повтор завтра  #pill("10 минут")], [
- 12 фраз аудио shadowing один раз;
- пять устойчивых ошибок: по одной новой фразе;
- шаблон теста заполнен и закрыт до урока 66;
- диалоги уроков 61–64 один раз без текста подряд — завтра контроль.
], breakable: true))

#block(above: 1em)[#set text(size: 7.6pt, fill: muted)
*Источники:* #link("https://www.lidel.pt/pt/catalogo/portugues-europeu-lingua-estrangeira/metodos/passaporte-para-portugues-1-edicao-atualizada-pack-livro-do-aluno-caderno-de-exercicios/")[Passaporte para Português 1 — Edição Atualizada] · #link("https://www.practiceportuguese.com/")[Practice Portuguese — European Portuguese]]

#answers((
  ([Упражнение A — свой пример на каждую строку (12 фраз вслух, затем записать)], [
2 — O meu portátil está na sala do Rui. 3 — Vou ao laboratório e depois à secretaria. 4 — Levanto-me às sete; não me levanto tarde. 5 — O problema é a mensagem de erro no sistema. 6 — Há um cabo novo; tenho dois cabos velhos. 7 — Guardei o ficheiro na pasta do projeto. 8 — Preciso de um projetor e gosto da sala 2.3. 9 — Tenho de corrigir dez projetos até sexta. 10 — Onde é que fica o laboratório? 11 — Estou a preparar o enunciado. 12 — Toco bem, mas ensaio muito.

]),
  ([Ответы], [
1 A aula está cancelada porque o professor está doente. 2 O Rui e a Sofia estão no meu gabinete. 3 Vou ao IADE de comboio. 4 Não me sinto bem hoje. 5 Recebi uma mensagem sobre o problema do horário. 6 Há três salas livres no segundo piso. 7 Pus o ficheiro na pasta «Aulas». 8 A propina no IADE é alta. 9 Gosto muito do Godot, mas preciso do Unity para este projeto. 10 Cheguei a Lisboa há dois anos e fui à secretaria. 11 Tenho de entregar o plano hoje. 12 Onde guardas os ficheiros? / Onde é que guardas os ficheiros? 13 Os alunos estão a trabalhar no projeto. 14 O jogo funciona bem; gosto muito dele. 15 É um som esquisito do amplificador. 16 Dei uma prenda à Sofia: umas baquetas. 17 A Sofia é professora no IADE e está cansada. 18 Já lhe disse que o sistema não funciona. 19 A aula é às catorze, não a sala de aula. 20 Ela é muito boa baterista e toca bem.

]),

))
