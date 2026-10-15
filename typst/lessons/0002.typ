#import "../course.typ": *
#show: lesson.with((n: 2, week: 1, day: 2, title: [Sons e leitura], lead: [Алфавит, правила ударения, редукция безударных гласных, носовые, #pt[lh / nh / ç / ch], чтение #pt[s / z / x], «Как это пишется?» и числа 21–100.]))

== Сессия 1 — язык и форма  #pill("30 минут")

=== 1. Диалог — в секретариате IADE

#duo(card("Результат урока", [
#checklist-items(([назвать буквы по-португальски и продиктовать своё имя и фамилию;], [определить ударный слог в незнакомом слове по правилу;], [читать #pt[s, z, x, ç, ch, lh, nh] и носовые #pt[ão / ões / ãe] по модели PT-PT;], [сказать и понять на слух числа 21–100;], [записать под диктовку номер телефона.],))
#strong[Режим:] три блока по 30 минут. Между ними можно сделать перерыв.

]), [#audio-ref("0002-dialogue")
#dialogue((
  ("Marta", "Bom dia. Como se chama?"),
  ("Alex", "Chamo-me Alex Volkov. Sou o novo professor."),
  ("Marta", "Como se escreve o apelido?"),
  ("Alex", "Vê, ó, ele, capa, ó, vê. Volkov."),
  ("Marta", "Com capa? Obrigada. Qual é o número de telemóvel?"),
  ("Alex", "É o nove, um, dois, três, quatro, cinco, seis, sete, oito."),
  ("Marta", "Muito bem. Já está. Até logo, professor."),
  ("Alex", "Até logo. Obrigado."),
))])

+ Послушайте без текста. Запишите фамилию по буквам и номер телефона цифрами.
+ Послушайте с текстом. Обратите внимание: секретарь говорит формально (#pt[Como se chama?], а не #pt[Como te chamas?]).
+ Повторите реплики Alex, копируя ритм. Буквы произносятся отдельно, с паузой.

=== 2. Алфавит — названия букв

#table(columns: 2,
  table.header([Буквы], [Названия (PT-PT)]),
  [A B C D E F G], [a, bê, cê, dê, é, efe, gê],
  [H I J K L M N], [agá, i, jota, capa, ele, eme, ene],
  [O P Q R S T U], [ó, pê, quê, erre, esse, tê, u],
  [V W X Y Z], [vê, dâblio, xis, ípsilon, zê],
)

#table(columns: 2,
  table.header([Português], [Значение]),
  [Como se escreve?], [Как это пишется?],
  [Escreve-se com dois erres. / com acento. / com til. / com cedilha. / com hífen.], [Пишется с двумя r / с акцентом / с тильдой / с седилью / через дефис.],
  [Letra maiúscula / minúscula.], [Заглавная / строчная буква.],
  [Pode repetir, por favor? Mais devagar.], [Повторите, пожалуйста. Медленнее.],
  [Qual é o número de telemóvel?], [Какой номер мобильного?],
)

#strong[PT-PT:] #pt[K = capa], #pt[W = dâblio], #pt[Y = ípsilon]. В Бразилии эти буквы называют иначе — не копируйте бразильские видео. Мобильный — #pt[telemóvel], а не #emph[celular].


=== 3. Ударение — три правила

#table(columns: 3,
  table.header([Слово оканчивается на], [Ударение], [Примеры]),
  [-a, -e, -o, -am, -em (и с -s)], [предпоследний слог], [ca#strong[sa], estu#strong[dan]te, #strong[li]vro, #strong[fa]lam, #strong[jo]vem, #strong[li]vros],
  [-i, -u, -l, -r, -z, -ão, -im, -um], [последний слог], [a#strong[qui], Portu#strong[gal], profes#strong[sor], ra#strong[paz], ir#strong[mão], jar#strong[dim]],
  [есть знак #pt[´ ^ \~]], [там, где знак], [#strong[mú]sica, portu#strong[guês], tele#strong[mó]vel, ca#strong[fé], a#strong[vô]],
)

Правило важно не само по себе: от ударения зависит, какие гласные «сжимаются».


=== 4. Безударные гласные — главный секрет PT-PT

- Безударное #pt[e] почти исчезает: #pt[telefone] звучит как «тлфóн», #pt[noite, tarde, nove] — конечное #pt[e] едва слышно.
- Безударное #pt[o] → \[u\]: #pt[professor] «пруфсóр», #pt[obrigado] «убригáду», артикль #pt[o] = \[u\].
- Безударное #pt[a] → короткое закрытое \[ɐ\]: #pt[casa] «кáзɐ».
- Ударные #pt[é / ó] открытые, #pt[ê / ô] закрытые: #pt[avó] (бабушка) / #pt[avô] (дедушка).

=== 5. Носовые и диграфы

#table(columns: 3,
  table.header([Написание], [Звук], [Примеры]),
  [ão], [носовой «ãу», ударный, если в слове нет другого акцента], [não, mão, pão, irmão, lição],
  [ões / ãe], [носовые дифтонги], [lições, informações, mãe, pães, alemães],
  [-m, -n в конце слога], [носовой гласный, губы не смыкаются], [bem, bom, um, sim, com, também],
  [lh], [мягкое «ль» \[ʎ\]], [trabalho, filho, mulher, olho],
  [nh], [мягкое «нь» \[ɲ\]], [senhor, amanhã, dinheiro, vinho],
  [ch], [\[ʃ\] «ш»], [chamo, chave, chá, chegar],
  [ç ; c + e/i], [\[s\]], [começar, informação, cinco, cedo],
  [j ; g + e/i], [\[ʒ\] «ж»], [jogo, hoje, gente, giro],
  [r- / rr ; -r-], [картавое \[ʁ\] ; одноударное \[ɾ\]], [Rui, carro, rua ; caro, Maria, bateria],
)

=== 6. #pt[s / z / x]

#table(columns: 3,
  table.header([Позиция], [Звук], [Примеры]),
  [#pt[s-] в начале; #pt[ss, ç]], [\[s\]], [sou, Sofia, professor, começar],
  [#pt[-s-] между гласными; #pt[z-] в начале], [\[z\]], [casa, música, zero, fazer],
  [#pt[-s / -z] в конце слова или перед глухой], [\[ʃ\] «ш»], [estudante, português, dez, faz, baquetas],
  [#pt[-s] перед звонкой согласной], [\[ʒ\] «ж»], [Lisboa, mesmo, desde],
  [x], [\[ʃ\] обычно; \[ks\] в #pt[táxi, tóxico]; \[z\] в #pt[exame, exemplo]; \[s\] в #pt[próximo, máximo]], [xis, baixo, peixe, deixar],
)

=== 7. Числа 21–100

21 vinte e um, 22 vinte e dois, 23 vinte e três … 30 trinta, 40 quarenta, 50 cinquenta, 60 sessenta, 70 setenta, 80 oitenta, 90 noventa, 100 cem.


Схема: десяток + #pt[e] + единица: #pt[34 trinta e quatro, 58 cinquenta e oito, 99 noventa e nove]. Перед женским родом — #pt[vinte e uma alunas, trinta e duas salas]. #pt[Cem] — ровно сто; повторите из урока 1: #pt[catorze, dezasseis, dezassete, dezanove].


#exercise([Упражнение A — подчеркните ударный слог], [
+ telemóvel
+ professor
+ estudante
+ Portugal
+ música
+ catorze
+ amanhã
+ cidade
])

#exercise([Упражнение B — какой звук: \[s\], \[z\], \[ʃ\], \[ʒ\] или \[ks\]?], [
+ ca#strong[s]a
+ e#strong[s]tudante
+ #strong[s]ábado
+ de#strong[z]
+ Li#strong[s]boa
+ e#strong[x]ame
+ bai#strong[x]o
+ tá#strong[x]i
+ me#strong[s]mo
+ #strong[z]ero
])

#exercise([Упражнение C — напишите числа словами], [
+ 21
+ 34
+ 45
+ 58
+ 67
+ 76
+ 83
+ 99
+ 100
+ 40
])

#exercise([Упражнение D — продиктуйте по буквам (напишите названия букв)], [
+ IADE
+ Lisboa
+ Rui
+ Moscovo
+ Unity
+ Godot
+ Yamaha
+ Volkov
])

== Сессия 2 — слух и произношение  #pill("30 минут")

=== 1. Диктант чисел

Послушайте один раз и запишите десять чисел цифрами. Потом послушайте второй раз и проверьте.


#audio-ref("0002-audio2")

#dialogue((
  ("Rui", "Vinte e três."),
  ("Rui", "Trinta e sete."),
  ("Rui", "Quarenta e um."),
  ("Rui", "Cinquenta e nove."),
  ("Rui", "Sessenta e dois."),
  ("Rui", "Setenta e quatro."),
  ("Rui", "Oitenta e oito."),
  ("Rui", "Noventa e cinco."),
  ("Rui", "Cem."),
  ("Rui", "Dezasseis."),
))

=== 2. Чтение вслух

+ Прочитайте по правилам, затем сравните с диалогом: #pt[professor, telemóvel, obrigado, Lisboa, estudante, português, bateria, baquetas, computador, programação, jogo, universidade].
+ Минимальные пары — произнесите каждую три раза: #pt[avó / avô · sé / sê · não / nau · vem / vê · som / só · pão / pau].
+ Носовые: #pt[não, irmão, lição, lições, mãe, alemães, bem, também, um, bom]. Проверка: губы не смыкаются в конце.
+ Запишите себя: диалог целиком, потом чтение списка из п. 1. Слушайте, исчезают ли безударные #pt[e] и #pt[o].

#card([Наблюдения PT-PT], [
- Португальская речь звучит «сжато» именно из-за редукции; если произносить все гласные, вас поймут, но звучать будет по-бразильски.
- Конечное #pt[-s] перед паузой или глухой согласной — «ш»: #pt[dois, três, seis, dez, alunos]; перед гласной следующего слова — \[z\] (#pt[os alunos] = «уз алýнуш»), перед звонкой согласной — «ж» (#pt[os dois]).
- Русское «л» слишком твёрдое перед гласными; в #pt[Lisboa, ele] язык мягче, а в конце слова (#pt[Portugal]) — наоборот, тёмное «л».
])

#exercise([Проверка понимания диалога], [
+ Кто говорит формально и почему?
+ С какой буквы секретарь переспрашивает фамилию?
+ Сколько цифр в номере телефона?
+ Что означает #pt[Já está]?
])

== Сессия 3 — речь и письмо  #pill("30 минут")

=== 1. Подстановочная речь

Произнесите каждую модель минимум три раза, меняя выделенную часть:


- Chamo-me #strong[Alex Volkov]. Escreve-se #strong[vê, ó, ele, capa, ó, vê].
- O meu número de telemóvel é o #strong[nove, um, dois, …]
- A sala é a #strong[trinta e dois]. O autocarro é o #strong[vinte e oito].
- Como se escreve #strong[o seu apelido]?
- Escreve-se com #strong[acento / cedilha / dois erres].

=== 2. Мини-роль

Вы регистрируетесь в секретариате: назовите имя и фамилию, продиктуйте их по буквам, назовите номер телефона и номер кабинета, попросите повторить. Запишите 60–90 секунд одним дублем.


=== 3. Письмо

Напишите восемь фраз с числами 21–100 о своём дне в IADE и о музыке: номер аудитории, автобуса, темп метронома (#pt[O tempo é de noventa]), число студентов, страница учебника. Числа пишите словами.


=== 4. Drops — 5 минут дополнительно

+ Одна короткая сессия по теме «числа».
+ Выберите 5 слов и прочитайте их вслух по правилам ударения и редукции.
+ С каждым словом произнесите полную фразу с числом.

#duo(card([Контроль без подсказок  #pill("5–7 минут")], [
Закройте урок и выполните:

+ Продиктуйте по буквам своё имя, фамилию и слово #pt[Lisboa].
+ Назовите десятки от 20 до 100 и три числа между ними.
+ Скажите, где ударение: #pt[professor, música, cidade, Portugal].
+ Прочитайте вслух: #pt[casa, estudante, Lisboa, exame, baixo] — с правильным #pt[s / x].
+ Назовите свой номер телефона на португальском.
#strong[Урок завершён], если удалось выполнить 4 из 5 пунктов без чтения. Ошибки — материал следующего повтора, а не провал.

], breakable: true), card([Повтор завтра  #pill("10 минут")], [
- алфавит вслух без таблицы;
- диктант чисел ещё раз без ответов;
- диалог один раз без текста;
- формы #pt[ser] из урока 1;
- пять слов Drops в полных фразах.
], breakable: true))

#block(above: 1em)[#set text(size: 7.6pt, fill: muted)
*Источники:* #link("https://www.lidel.pt/pt/catalogo/portugues-europeu-lingua-estrangeira/metodos/passaporte-para-portugues-1-edicao-atualizada-pack-livro-do-aluno-caderno-de-exercicios/")[Passaporte para Português 1 — Edição Atualizada] · #link("https://www.practiceportuguese.com/")[Practice Portuguese — European Portuguese]]

#answers((
  ([Упражнение A — подчеркните ударный слог], [
tele#strong[mó]vel; profes#strong[sor]; estu#strong[dan]te; Portu#strong[gal]; #strong[mú]sica; ca#strong[tor]ze; ama#strong[nhã]; ci#strong[da]de.

]),
  ([Упражнение B — какой звук: \[s\], \[z\], \[ʃ\], \[ʒ\] или \[ks\]?], [
\[z\]; \[ʃ\]; \[s\]; \[ʃ\]; \[ʒ\]; \[z\]; \[ʃ\]; \[ks\]; \[ʒ\]; \[z\].

]),
  ([Упражнение C — напишите числа словами], [
vinte e um; trinta e quatro; quarenta e cinco; cinquenta e oito; sessenta e sete; setenta e seis; oitenta e três; noventa e nove; cem; quarenta.

]),
  ([Упражнение D — продиктуйте по буквам (напишите названия букв)], [
i, a, dê, é; ele, i, esse, bê, ó, a; erre, u, i; eme, ó, esse, cê, ó, vê, ó; u, ene, i, tê, ípsilon; gê, ó, dê, ó, tê; ípsilon, a, eme, a, agá, a; vê, ó, ele, capa, ó, vê.

]),
  ([Ответы], [
23; 37; 41; 59; 62; 74; 88; 95; 100; 16.

]),
  ([Проверка понимания диалога], [
Marta — секретариат, незнакомый человек; #pt[capa] (K); девять; «готово».

]),
  ([Опора — открыть только если застряли], [
A minha sala no IADE é a trinta e dois. O autocarro é o setenta e três. Na aula são vinte e cinco alunos. O tempo da música é de noventa. A página é a quarenta e seis. O meu gabinete é o cinquenta e um. O elétrico é o vinte e oito. O meu número é o nove, um, dois…

]),

))
