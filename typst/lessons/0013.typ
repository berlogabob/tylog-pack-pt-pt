#import "../course.typ": *
#show: lesson.with((n: 13, week: 3, day: 1, title: [Presente: verbos em -ar], lead: [Настоящее время правильных глаголов на #pt[-ar]: #pt[trabalhar, tocar, jogar, estudar, ensinar]. Что я делаю каждую неделю.]))

== Сессия 1 — язык и форма  #pill("30 минут")

=== 1. Диалог

#card("Результат урока", [
#checklist-items(([спрягать любой глагол на #pt[-ar] во всех лицах без таблицы;], [знать 20 частотных глаголов на #pt[-ar] с их дополнениями;], [сказать, что вы делаете утром, днём и вечером;], [задать вопрос с #pt[é que] и ответить кратко;], [рассказать в 8–10 фразах о своей рабочей неделе.],))
#strong[Режим:] три блока по 30 минут. Между ними можно сделать перерыв.

])

#audio-ref("0013-dialogue")

#dialogue((
  ("Sofia", "Olá, Alex! Trabalhas hoje?"),
  ("Alex", "Sim, trabalho de manhã. Ensino programação no IADE, das nove ao meio-dia."),
  ("Sofia", "E à tarde? Também trabalhas?"),
  ("Alex", "Não. À tarde estudo português e toco bateria."),
  ("Sofia", "Tocas bateria? Onde é que ensaias?"),
  ("Alex", "Ensaio numa sala em Alvalade com dois amigos. Eles tocam guitarra e baixo."),
  ("Sofia", "Ensaiam todas as semanas?"),
  ("Alex", "Sim, ensaiamos à quarta-feira, à noite."),
  ("Sofia", "Que giro! E jogas videojogos?"),
  ("Alex", "Jogo pouco, mas uso motores de jogo nas aulas. Os alunos criam jogos pequenos."),
  ("Sofia", "Eu também gosto de jogos. Almoçamos juntos amanhã e falamos disso?"),
  ("Alex", "Combinado. Até amanhã!"),
))

+ Послушайте без текста. Запишите все глаголы, которые услышали.
+ Послушайте с текстом. Подчеркните окончания: #pt[-as, -o, -a, -amos, -am].
+ Послушайте без текста ещё раз и воспроизведите реплики Alex.

=== 2. Основные фразы

#table(columns: 2,
  table.header([Português], [Значение]),
  [Trabalhas hoje?], [Ты сегодня работаешь?],
  [Ensino programação no IADE.], [Я преподаю программирование в IADE.],
  [Toco bateria. / Tocas guitarra?], [Я играю на барабанах. / Ты играешь на гитаре?],
  [Onde é que ensaias?], [Где ты репетируешь?],
  [Ensaiamos à quarta-feira.], [Мы репетируем по средам.],
  [Jogo pouco.], [Я мало играю (в игры).],
  [Gosto de jogos.], [Мне нравятся игры.],
  [Almoçamos juntos amanhã?], [Пообедаем вместе завтра?],
  [Que giro! / Combinado.], [Здорово! / Договорились.],
)

=== 3. Спряжение: #pt[trabalhar]

Основа = инфинитив без #pt[-ar]: #pt[trabalh-]. К основе добавляется окончание. Ударение на основе во всех формах, кроме #pt[nós].


#table(columns: 5,
  table.header([Кто], [Окончание], [trabalhar], [tocar], [estudar]),
  [eu], [-o], [trabalho], [toco], [estudo],
  [tu], [-as], [trabalhas], [tocas], [estudas],
  [ele / ela / você], [-a], [trabalha], [toca], [estuda],
  [nós], [-amos], [trabalhamos], [tocamos], [estudamos],
  [eles / elas / vocês], [-am], [trabalham], [tocam], [estudam],
)

#strong[PT-PT:] в разговоре форма #pt[vós] не используется; к группе людей обращаются #pt[vocês] с формой 3-го лица мн. ч.: #pt[Vocês trabalham aqui?] Местоимение обычно опускается, окончание уже показывает лицо: #pt[Trabalho no IADE. Tocas bateria?]


#strong[Произношение:] окончание #pt[-am] звучит как безударное #pt[-ão] (#pt[tocam] ≈ «то́кãу»). Окончание #pt[-amos] — единственная форма с ударением на окончании: #pt[traba-LHA-mos]. Конечное #pt[-s] в #pt[tocas] — как русское «ш».


#strong[Написание:] в настоящем времени основа не меняется: #pt[toco, jogo, começo, fico]. Изменения #pt[c→qu, g→gu, ç→c] появятся только в прошедшем времени (неделя 5).


=== 4. Двадцать частотных глаголов на #pt[-ar]

#table(columns: 3,
  table.header([Глагол], [Значение], [Пример]),
  [trabalhar (em)], [работать], [Trabalho no IADE.],
  [ensinar], [преподавать], [Ensino programação de jogos.],
  [estudar], [учиться, изучать], [Estudo português à tarde.],
  [tocar], [играть (на инструменте)], [Toco bateria numa banda.],
  [jogar], [играть (в игру)], [Jogo videojogos ao domingo.],
  [ensaiar], [репетировать], [Ensaiamos à quarta-feira.],
  [falar (com / de)], [говорить], [Falo com os alunos sobre o projeto.],
  [morar (em)], [жить (где)], [Moro em Lisboa.],
  [gostar de], [нравиться], [Gosto de música eletrónica.],
  [precisar de], [нуждаться], [Preciso de um cabo novo.],
  [usar], [использовать], [Uso o Godot nas aulas.],
  [criar], [создавать], [Os alunos criam jogos pequenos.],
  [almoçar / jantar], [обедать / ужинать], [Almoço à uma e janto às oito.],
  [acordar], [просыпаться], [Acordo às sete.],
  [começar / acabar], [начинать / заканчивать], [A aula começa às nove e acaba às onze.],
  [chegar (a)], [приходить, прибывать], [Chego ao IADE às nove.],
  [ficar], [находиться; оставаться], [A sala fica em Alvalade. Fico em casa.],
  [apanhar], [брать (транспорт), ловить], [Apanho o autocarro às oito.],
  [praticar], [практиковать], [Pratico rudimentos todos os dias.],
  [comprar / pagar], [покупать / платить], [Compro baquetas novas e pago com cartão.],
)

#strong[Управление:] #pt[gostar de, precisar de] всегда с предлогом: #pt[Gosto #emph[de] tocar. Preciso #emph[de] tempo.] После #pt[de] инфинитив не меняется.


=== 5. Вопрос с #pt[é que]

В PT-PT после вопросительного слова почти всегда стоит #pt[é que]; порядок слов остаётся прямым: #pt[Onde é que ensaias? Quando é que trabalhas? O que é que estudas?] Без вопросительного слова достаточно интонации: #pt[Trabalhas hoje?] Краткий ответ повторяет глагол, а не «да»: #pt[— Tocas bateria? — Toco. / — Jogas? — Não jogo.]


#exercise([Упражнение A — поставьте глагол в нужную форму], [
+ Eu (trabalhar) \_\_\_ no IADE.
+ Tu (tocar) \_\_\_ bateria?
+ A Sofia (estudar) \_\_\_ design.
+ Nós (ensaiar) \_\_\_ à quarta-feira.
+ Os alunos (criar) \_\_\_ um jogo em grupo.
+ Vocês (falar) \_\_\_ português em casa?
+ Eu (gostar) \_\_\_ de música.
+ O Rui (morar) \_\_\_ em Alvalade.
+ Nós (almoçar) \_\_\_ à uma.
+ Elas (usar) \_\_\_ o Unity nas aulas.
])

#exercise([Упражнение B — задайте вопрос с #pt[é que] к выделенному слову], [
Пример: #pt[Ensaio #strong[em Alvalade]. → Onde é que ensaias?]

+ Trabalho #strong[no IADE].
+ Estudo português #strong[à tarde].
+ Toco #strong[bateria].
+ Ensaiamos #strong[com dois amigos].
+ Ensino #strong[programação].
+ Moro #strong[em Lisboa].
])

#exercise([Упражнение C — переведите], [
+ Я преподаю в IADE и играю на барабанах.
+ Ты работаешь по утрам?
+ Мы репетируем по средам вечером.
+ Студенты создают маленькие игры.
+ Мне нравится музыка, но я мало играю в игры.
+ Где вы (вы все) обедаете?
+ Она живёт в Лиссабоне и изучает дизайн.
+ Мне нужен новый кабель.
])

== Сессия 2 — слух и произношение  #pill("30 минут")

+ Прослушайте диалог без текста и запишите все глагольные формы. Цель — 12 и больше.
+ Сверьтесь с текстом; отметьте формы, которые не расслышали. Обычно это #pt[-am] и #pt[-amos].
+ Произнесите вслух пять форм каждого глагола из диалога: #pt[trabalhar, ensinar, estudar, tocar, ensaiar, jogar, usar, criar, gostar, almoçar, falar].
+ Повторяйте по одной реплике, копируя ритм целиком. Следите, чтобы #pt[-o] в #pt[trabalho, toco] звучало коротко, как «у».
+ Запишите себя в роли Alex, затем весь диалог.

#card([Наблюдения PT-PT], [
- #pt[tocam / tocamos]: первая форма — два слога с носовым концом, вторая — три слога с ударением на #pt[-ca-]. Не путайте их на слух.
- Безударное #pt[e] почти исчезает: #pt[semana] ≈ «смáна», #pt[pequeno] ≈ «пкéну».
- #pt[Que giro!] — типично лиссабонское одобрение; #pt[giro] = симпатичный, классный.
- #pt[à quarta-feira] = «по средам» (регулярно). Слово #pt[feira] в разговоре часто опускают: #pt[à quarta].
])

#exercise([Проверка понимания], [
+ Когда Alex работает — утром или днём?
+ Что он делает днём (два действия)?
+ Где и с кем репетирует?
+ На чём играют его друзья?
+ Как часто репетирует группа?
+ Что предлагает Sofia на завтра?
])

== Сессия 3 — речь и письмо  #pill("30 минут")

=== 1. Подстановочная речь

Произнесите каждую модель минимум три раза, меняя выделенную часть:


- De manhã #strong[trabalho no IADE].
- À tarde #strong[estudo português] e #strong[toco bateria].
- Ensaiamos #strong[à quarta-feira] com #strong[dois amigos].
- Nas aulas uso #strong[o Godot]; os alunos criam #strong[jogos pequenos].
- Gosto de #strong[música], mas não gosto de #strong[reuniões longas].
- Onde é que #strong[trabalhas]? / Quando é que #strong[ensaias]?

=== 2. Мини-роль

Коллега из IADE спрашивает про вашу неделю. Ответьте на шесть вопросов и задайте три своих: где работает, что преподаёт, играет ли на чём-нибудь. Запишите 90–120 секунд одним дублем.


=== 3. Письмо

Напишите 8–10 предложений «Моя рабочая неделя». Обязательно: пять разных глаголов на #pt[-ar], одна форма #pt[nós], одна форма #pt[eles], один вопрос с #pt[é que], одно отрицание.


=== 4. Drops — 5 минут дополнительно

+ Пройдите одну короткую сессию по темам «действия» или «работа».
+ Выберите 5 глаголов на #pt[-ar].
+ С каждым произнесите две формы в полных фразах: #pt[eu] и #pt[nós].

#duo(card([Контроль без подсказок  #pill("5–7 минут")], [
Закройте урок и выполните:

+ Проспрягайте #pt[tocar] и #pt[ensaiar] во всех пяти формах.
+ Назовите 12 глаголов на #pt[-ar] и к каждому — дополнение.
+ Скажите три фразы о своём утре, дне и вечере.
+ Задайте четыре вопроса с #pt[é que].
+ Дайте два кратких ответа «да» и два «нет» без слова #pt[sim].
#strong[Урок завершён], если удалось выполнить 4 из 5 пунктов без чтения. Ошибки — материал следующего повтора, а не провал.

], breakable: true), card([Повтор завтра  #pill("10 минут")], [
- пять форм #pt[trabalhar] и #pt[gostar] без таблицы;
- диалог один раз без текста;
- текст «Моя рабочая неделя» вслух, без листа;
- пять вчерашних глаголов Drops в формах #pt[eu] и #pt[nós].
], breakable: true))

#block(above: 1em)[#set text(size: 7.6pt, fill: muted)
*Источники:* #link("https://www.lidel.pt/pt/catalogo/portugues-europeu-lingua-estrangeira/metodos/passaporte-para-portugues-1-edicao-atualizada-pack-livro-do-aluno-caderno-de-exercicios/")[Passaporte para Português 1 — Edição Atualizada] · #link("https://www.practiceportuguese.com/")[Practice Portuguese — European Portuguese]]

#answers((
  ([Упражнение A — поставьте глагол в нужную форму], [
trabalho; tocas; estuda; ensaiamos; criam; falam; gosto; mora; almoçamos; usam.

]),
  ([Упражнение B — задайте вопрос с é que к выделенному слову], [
Onde é que trabalhas? Quando é que estudas português? O que é que tocas? Com quem é que ensaiam? O que é que ensinas? Onde é que moras?

]),
  ([Упражнение C — переведите], [
Ensino no IADE e toco bateria. Trabalhas de manhã? Ensaiamos à quarta-feira à noite. Os alunos criam jogos pequenos. Gosto de música, mas jogo pouco. Onde é que vocês almoçam? Ela mora em Lisboa e estuda design. Preciso de um cabo novo.

]),
  ([Упражнение D — краткий ответ и отрицание], [
Trabalho. / Não trabalho. — Toco. / Não toco. — Ensaiamos. / Não ensaiamos. — Estuda. / Não estuda. — Gosto. / Não gosto. — Usam. / Não usam.

]),
  ([Упражнение D — краткий ответ и отрицание], [
Ответьте кратко «да» (глагол) и «нет» (#pt[não] + глагол).

+ Trabalhas hoje?
+ Tocas guitarra?
+ Vocês ensaiam à sexta?
+ A Sofia estuda design?
+ Gostas de jazz?
+ Os alunos usam o Godot?
]),
  ([Проверка понимания], [
утром, с 9 до 12; учит португальский и играет на барабанах; в зале в Alvalade с двумя друзьями; гитара и бас; каждую неделю, по средам вечером; пообедать вместе и поговорить об играх.

]),
  ([Опора — открыть только если застряли], [
Durante a semana trabalho no IADE. Ensino programação de jogos a três turmas. De manhã falo com os alunos e à tarde preparo as aulas. Os alunos criam jogos pequenos com o Godot. À quarta-feira ensaio com a banda: eu toco bateria, os meus amigos tocam guitarra e baixo. Ao sábado não trabalho; estudo português e jogo um pouco. Ao domingo almoçamos juntos em Alvalade. E tu, onde é que trabalhas?

]),

))
