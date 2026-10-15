#import "../course.typ": *
#show: lesson.with((n: 14, week: 3, day: 2, title: [Presente: -er, -ir e verbos reflexos], lead: [Глаголы на #pt[-er] и #pt[-ir], возвратные глаголы #pt[levantar-se, deitar-se] и место местоимения в PT-PT.]))

== Сессия 1 — язык и форма  #pill("30 минут")

=== 1. Диалог

#duo(card("Результат урока", [
#checklist-items(([спрягать #pt[comer, abrir] и ещё 15 глаголов на #pt[-er / -ir];], [знать 1-е лицо частых глаголов с чередованием: #pt[durmo, prefiro, peço, ouço, saio];], [ставить возвратное местоимение после глагола (#pt[Levanto-me]) и перед ним после #pt[não, nunca, que];], [описать утро и вечер в 8 фразах;], [спросить собеседника, когда он встаёт и ложится.],))
#strong[Режим:] три блока по 30 минут. Между ними можно сделать перерыв.

]), [#audio-ref("0014-dialogue")
#dialogue((
  ("Inês", "Alex, a que horas te levantas durante a semana?"),
  ("Alex", "Levanto-me às sete. Tomo duche, visto-me e bebo um café."),
  ("Inês", "Não comes nada ao pequeno-almoço?"),
  ("Alex", "Como pão com queijo e leio as notícias no telemóvel."),
  ("Inês", "E depois? Sais de casa cedo?"),
  ("Alex", "Saio às oito e apanho o autocarro. No IADE, abro o portátil e respondo aos emails."),
  ("Inês", "Percebo. E à noite? Deitas-te tarde?"),
  ("Alex", "Deito-me à meia-noite. Antes disso escrevo código ou ouço música."),
  ("Inês", "Não te esqueces de dormir, pois não?"),
  ("Alex", "Não, durmo sete horas. E tu, a que horas te deitas?"),
  ("Inês", "Eu deito-me cedo, mas nunca me lembro de pôr o despertador."),
))])

+ Послушайте без текста. Найдите два времени (часы) и три действия утром.
+ Послушайте с текстом. Отметьте, где местоимение #pt[me / te] стоит после глагола, а где перед ним.
+ Послушайте без текста ещё раз и воспроизведите реплики Alex.

=== 2. Основные фразы

#table(columns: 2,
  table.header([Português], [Значение]),
  [A que horas te levantas?], [Во сколько ты встаёшь?],
  [Levanto-me às sete.], [Я встаю в семь.],
  [Tomo duche e visto-me.], [Принимаю душ и одеваюсь.],
  [Não comes nada ao pequeno-almoço?], [Ты ничего не ешь на завтрак?],
  [Saio de casa às oito.], [Выхожу из дома в восемь.],
  [Deitas-te tarde? — Deito-me à meia-noite.], [Ты поздно ложишься? — Ложусь в полночь.],
  [Não te esqueces de…, pois não?], [Ты ведь не забываешь…?],
  [Nunca me lembro de pôr o despertador.], [Никогда не помню поставить будильник.],
  [Percebo.], [Понимаю.],
)

=== 3. Спряжение: #pt[comer] и #pt[abrir]

Различие между #pt[-er] и #pt[-ir] только в форме #pt[nós]: #pt[-emos / -imos]. Остальные окончания совпадают.


#table(columns: 7,
  table.header([Кто], [-er], [comer], [aprender], [-ir], [abrir], [partir]),
  [eu], [-o], [como], [aprendo], [-o], [abro], [parto],
  [tu], [-es], [comes], [aprendes], [-es], [abres], [partes],
  [ele / ela / você], [-e], [come], [aprende], [-e], [abre], [parte],
  [nós], [-emos], [comemos], [aprendemos], [-imos], [abrimos], [partimos],
  [eles / elas / vocês], [-em], [comem], [aprendem], [-em], [abrem], [partem],
)

#strong[Произношение:] #pt[-em] в конце слова — носовой «ẽй»: #pt[comem] ≈ «кóмẽй». Ударное #pt[e] в #pt[comemos] — закрытое \[e\], как в #pt[fez, teve]. В #pt[comes, come] конечное #pt[e] почти не слышно.


=== 4. Частотные глаголы на #pt[-er / -ir]

#table(columns: 3,
  table.header([Глагол], [Значение], [Пример]),
  [comer / beber], [есть / пить], [Como pão e bebo café.],
  [aprender (a)], [учиться (чему)], [Os alunos aprendem a programar.],
  [escrever], [писать], [Escrevo código à noite.],
  [viver (em)], [жить], [Vivo em Lisboa.],
  [responder (a)], [отвечать], [Respondo aos emails de manhã.],
  [perceber], [понимать], [Percebo português, mas falo pouco.],
  [correr], [бегать], [Corro junto ao rio.],
  [resolver], [решать (проблему)], [Resolvemos o bug hoje.],
  [abrir / fechar], [открывать / закрывать (-ar)], [Abro o portátil e fecho a janela.],
  [assistir a], [присутствовать, смотреть], [Assisto a um concerto.],
  [decidir], [решать (выбирать)], [Decidimos o tema do projeto.],
  [discutir], [обсуждать], [Discutem o motor de jogo.],
  [partir], [уезжать, отправляться], [O comboio parte às oito.],
)

=== 5. Чередование в 1-м лице

Несколько очень частых глаголов меняют гласную или согласную только в форме #pt[eu]. Остальные формы регулярные. Учите форму #pt[eu] отдельно.


#table(columns: 7,
  table.header([Инфинитив], [eu], [tu], [ele], [nós], [eles], [Значение]),
  [dormir], [#strong[durmo]], [dormes], [dorme], [dormimos], [dormem], [спать],
  [preferir], [#strong[prefiro]], [preferes], [prefere], [preferimos], [preferem], [предпочитать],
  [sentir], [#strong[sinto]], [sentes], [sente], [sentimos], [sentem], [чувствовать],
  [vestir], [#strong[visto]], [vestes], [veste], [vestimos], [vestem], [одевать],
  [pedir], [#strong[peço]], [pedes], [pede], [pedimos], [pedem], [просить],
  [ouvir], [#strong[ouço]], [ouves], [ouve], [ouvimos], [ouvem], [слышать, слушать],
  [conseguir], [#strong[consigo]], [consegues], [consegue], [conseguimos], [conseguem], [суметь, мочь],
  [sair], [#strong[saio]], [sais], [sai], [saímos], [saem], [выходить],
  [conhecer], [#strong[conheço]], [conheces], [conhece], [conhecemos], [conhecem], [знать (человека, место)],
  [ler], [#strong[leio]], [lês], [lê], [lemos], [leem], [читать],
)

=== 6. Возвратные глаголы и место местоимения

#table(columns: 5,
  table.header([Кто], [Местоимение], [levantar-se], [deitar-se], [vestir-se]),
  [eu], [me], [levanto-me], [deito-me], [visto-me],
  [tu], [te], [levantas-te], [deitas-te], [vestes-te],
  [ele / ela / você], [se], [levanta-se], [deita-se], [veste-se],
  [nós], [nos], [levantamo-nos], [deitamo-nos], [vestimo-nos],
  [eles / elas / vocês], [se], [levantam-se], [deitam-se], [vestem-se],
)

#strong[Правило PT-PT.] По умолчанию местоимение стоит #emph[после] глагола через дефис (энклиза): #pt[Levanto-me às sete. Chamo-me Alex.] В форме #pt[nós] конечное #pt[-s] исчезает: #pt[levantamos + nos → levantamo-nos].


Местоимение переходит #emph[перед] глагол (проклиза), если перед глаголом стоит:


- отрицание #pt[não, nunca, ninguém, nada]: #pt[Não me levanto cedo. Nunca me deito tarde.]
- вопросительное слово: #pt[A que horas te levantas? Como te chamas? Onde se sentam?]
- #pt[que] в придаточном: #pt[Sei que te deitas tarde.]
- наречия #pt[também, já, ainda, sempre, só]: #pt[Também me levanto às sete. Já se veste sozinho.]

С #pt[estar a + infinitivo] местоимение крепится к инфинитиву: #pt[Estou a vestir-me. Ela está a levantar-se.] С отрицанием обе позиции верны: #pt[Não me estou a vestir / Não estou a vestir-me]; используйте первую.


#strong[Ещё возвратные:] #pt[chamar-se, sentar-se] (садиться), #pt[lavar-se, lembrar-se de] (помнить), #pt[esquecer-se de] (забывать), #pt[sentir-se] (чувствовать себя), #pt[divertir-se] (развлекаться), #pt[despachar-se] (поторапливаться), #pt[encontrar-se com] (встречаться с).


#exercise([Упражнение A — поставьте глагол в нужную форму], [
+ Eu (comer) \_\_\_ pão ao pequeno-almoço.
+ Tu (beber) \_\_\_ café?
+ Os alunos (aprender) \_\_\_ a programar.
+ Nós (viver) \_\_\_ em Lisboa.
+ O comboio (partir) \_\_\_ às oito.
+ Eu (escrever) \_\_\_ código à noite.
+ Vocês (abrir) \_\_\_ o portátil na aula?
+ Ela (responder) \_\_\_ aos emails de manhã.
+ Nós (decidir) \_\_\_ o tema hoje.
+ Eu (perceber) \_\_\_ tudo.
])

#exercise([Упражнение B — форма #pt[eu] с чередованием], [
+ (dormir) \_\_\_ sete horas.
+ (preferir) \_\_\_ o Godot.
+ (ouvir) \_\_\_ música no autocarro.
+ (sair) \_\_\_ de casa às oito.
+ (pedir) \_\_\_ um café.
+ (conseguir) \_\_\_ perceber o texto.
+ (ler) \_\_\_ as notícias no telemóvel.
+ (conhecer) \_\_\_ o Rui.
])

#exercise([Упражнение C — поставьте местоимение в нужное место], [
Соедините глагол и местоимение в скобках. Пример: #pt[Eu (levantar-se) às sete. → Levanto-me às sete.]

+ Eu (deitar-se) à meia-noite.
+ Tu não (levantar-se) cedo.
+ A que horas tu (deitar-se)?
+ Nós (sentar-se) na primeira fila.
+ Ela nunca (esquecer-se) do despertador.
+ Os alunos (chamar-se) Rui e Inês.
+ Eu também (vestir-se) depressa.
+ Sei que tu (lembrar-se) do ensaio.
+ Eu estou a (vestir-se).
+ Vocês (divertir-se) no concerto?
])

#exercise([Упражнение D — переведите], [
+ Я встаю в семь и принимаю душ.
+ Во сколько ты ложишься?
+ Мы не встаём рано в субботу.
+ Она читает новости в телефоне.
+ Я выхожу из дома в восемь и еду на автобусе.
+ Ты никогда не забываешь про будильник.
+ Студенты открывают ноутбуки и пишут код.
+ Я предпочитаю спать восемь часов.
])

== Сессия 2 — слух и произношение  #pill("30 минут")

+ Прослушайте диалог без текста и запишите все глаголы с местоимениями (#pt[levantas, levanto-me…]).
+ Сверьтесь с текстом. Отдельно выпишите четыре случая проклизы: после #pt[a que horas] (два раза), #pt[não, nunca].
+ Произнесите пять форм #pt[levantar-se] и #pt[deitar-se], затем те же формы с #pt[não].
+ Повторяйте по одной реплике. В #pt[levanto-me, deito-me] местоимение безударное и короткое: «лэвáнтумъ».
+ Запишите себя в роли Alex, затем весь диалог.

#card([Наблюдения PT-PT], [
- #pt[pequeno-almoço] — завтрак; #pt[tomar o pequeno-almoço] — завтракать. Бразильское #pt[café da manhã] в Португалии не используют.
- #pt[tomar duche] — принимать душ (не #pt[\*fazer]).
- #pt[…, pois não?] — «ведь так?» после отрицательной фразы; после утвердительной — #pt[…, não é?]
- #pt[telemóvel, portátil, autocarro] — стандартная лексика PT-PT.
])

#exercise([Проверка понимания], [
+ Во сколько встаёт Alex?
+ Что он делает после душа (два действия)?
+ Что ест на завтрак?
+ Как добирается до IADE?
+ Во сколько ложится и что делает перед сном?
+ Что Inês всегда забывает?
])

== Сессия 3 — речь и письмо  #pill("30 минут")

=== 1. Подстановочная речь

Произнесите каждую модель минимум три раза, меняя выделенную часть:


- Levanto-me às #strong[sete] e deito-me à #strong[meia-noite].
- Não me levanto cedo #strong[ao sábado].
- Ao pequeno-almoço como #strong[pão com queijo] e bebo #strong[café].
- Saio de casa às #strong[oito] e apanho #strong[o autocarro].
- À noite #strong[escrevo código] ou #strong[ouço música].
- A que horas te #strong[levantas]? / Nunca me #strong[esqueço do despertador].

=== 2. Мини-роль

Коллега спрашивает о вашем утре и вечере. Ответьте на пять вопросов (#pt[A que horas te levantas? O que comes? Como vais para o trabalho? A que horas te deitas? Dormes bem?]) и задайте ему те же пять. Запишите 90–120 секунд.


=== 3. Письмо

Напишите 8–10 предложений «Утро и вечер». Обязательно: три возвратных глагола с энклизой, два с проклизой (#pt[não / nunca]), два глагола с чередованием (#pt[durmo, saio, ouço…]), одна форма #pt[nós].


=== 4. Drops — 5 минут дополнительно

+ Пройдите одну короткую сессию по темам «распорядок дня» или «дом».
+ Выберите 5 глаголов на #pt[-er / -ir].
+ С каждым произнесите фразу в форме #pt[eu] и вопрос в форме #pt[tu].

#duo(card([Контроль без подсказок  #pill("5–7 минут")], [
Закройте урок и выполните:

+ Проспрягайте #pt[comer] и #pt[abrir] во всех пяти формах.
+ Назовите форму #pt[eu] для #pt[dormir, preferir, ouvir, sair, pedir, ler].
+ Проспрягайте #pt[levantar-se] с энклизой, затем с #pt[não].
+ Скажите пять фраз о своём утре.
+ Задайте три вопроса собеседнику о его распорядке.
#strong[Урок завершён], если удалось выполнить 4 из 5 пунктов без чтения. Ошибки — материал следующего повтора, а не провал.

], breakable: true), card([Повтор завтра  #pill("10 минут")], [
- формы #pt[comer, abrir, levantar-se] без таблицы;
- десять форм #pt[eu] с чередованием;
- диалог один раз без текста;
- текст «Утро и вечер» вслух, без листа;
- пять вчерашних глаголов Drops в полных фразах.
], breakable: true))

#block(above: 1em)[#set text(size: 7.6pt, fill: muted)
*Источники:* #link("https://www.lidel.pt/pt/catalogo/portugues-europeu-lingua-estrangeira/metodos/passaporte-para-portugues-1-edicao-atualizada-pack-livro-do-aluno-caderno-de-exercicios/")[Passaporte para Português 1 — Edição Atualizada] · #link("https://www.practiceportuguese.com/")[Practice Portuguese — European Portuguese]]

#answers((
  ([Упражнение A — поставьте глагол в нужную форму], [
como; bebes; aprendem; vivemos; parte; escrevo; abrem; responde; decidimos; percebo.

]),
  ([Упражнение B — форма eu с чередованием], [
Durmo; Prefiro; Ouço; Saio; Peço; Consigo; Leio; Conheço.

]),
  ([Упражнение C — поставьте местоимение в нужное место], [
Deito-me à meia-noite. Não te levantas cedo. A que horas te deitas? Sentamo-nos na primeira fila. Ela nunca se esquece do despertador. Os alunos chamam-se Rui e Inês. Também me visto depressa. Sei que te lembras do ensaio. Estou a vestir-me. Vocês divertem-se no concerto?

]),
  ([Упражнение D — переведите], [
Levanto-me às sete e tomo duche. A que horas te deitas? Não nos levantamos cedo ao sábado. Ela lê as notícias no telemóvel. Saio de casa às oito e apanho o autocarro. Nunca te esqueces do despertador. Os alunos abrem os portáteis e escrevem código. Prefiro dormir oito horas.

]),
  ([Проверка понимания], [
в семь; одевается и пьёт кофе; хлеб с сыром; выходит в восемь и едет на автобусе; в полночь, пишет код или слушает музыку; поставить будильник.

]),
  ([Опора — открыть только если застряли], [
Durante a semana levanto-me às sete. Tomo duche, visto-me e bebo um café. Não como muito de manhã. Saio de casa às oito e apanho o autocarro. No IADE abro o portátil e respondo aos emails. À noite ouço música ou escrevo código. Deito-me à meia-noite e durmo sete horas. Ao fim de semana os meus amigos e eu levantamo-nos tarde. Nunca me esqueço do despertador à segunda-feira.

]),

))
