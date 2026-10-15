#import "../course.typ": *
#show: lesson.with((n: 64, week: 11, day: 4, title: [Explicar uma arquitetura], lead: [Фразы последовательности и объяснения (#pt[primeiro, a seguir, o objetivo é, isto serve para, ou seja, no fundo, em resumo]); словарь архитектуры игры PT-PT (#pt[cena, entidade, componente, sistema, ciclo de jogo]); как объяснить студентам задание.]))

== Сессия 1 — язык и форма  #pill("30 минут")

=== 1. Диалог: Alex объясняет студентке entidade–componente–sistema

#card("Результат урока", [
#checklist-items(([объяснить архитектуру entity-component за 3 минуты по-португальски;], [вести объяснение маркерами: #pt[primeiro, a seguir, depois, por fim];], [уточнять и обобщать: #pt[ou seja, por exemplo, no fundo, em resumo];], [употребить 20 терминов архитектуры игры в формах PT-PT (#pt[ficheiro, ecrã, rato, guardar]);], [изложить учебное задание: #pt[enunciado, objetivos, critérios, entrega].],))
#strong[Режим:] три блока по 30 минут. Между ними можно сделать перерыв.

])

#audio-ref("0064-dialogue")

#dialogue((
  ("Inês", "Alex, não percebo bem a diferença entre entidade e componente. Podes explicar?"),
  ("Alex", "Claro. Primeiro, pensa na cena como uma lista de entidades. Uma entidade é só um número, um identificador."),
  ("Inês", "Então onde estão os dados?"),
  ("Alex", "Nos componentes. Cada componente guarda dados de um tipo: posição, velocidade, sprite, vida. Por exemplo, o jogador tem posição, sprite e comando; uma parede só tem posição e colisão."),
  ("Inês", "E quem usa esses dados?"),
  ("Alex", "Os sistemas. Um sistema é uma função que corre em cada ciclo de jogo e trata de todas as entidades com certos componentes. O sistema de física lê posição e velocidade; o de renderização lê posição e sprite e desenha no ecrã."),
  ("Inês", "Ou seja, a lógica não está nas entidades."),
  ("Alex", "Exatamente. No fundo, separamos dados e comportamento. Isto serve para adicionar coisas sem mudar o resto: queres um inimigo que voa? Adicionas um componente, não uma classe nova."),
  ("Inês", "E o rato e o teclado?"),
  ("Alex", "É um sistema como os outros: lê o teclado e escreve no componente de comando. A seguir, o sistema de movimento usa esse comando."),
  ("Inês", "Em resumo: a entidade é o identificador, o componente são os dados e o sistema é a lógica."),
  ("Alex", "Perfeito, é isso."),
))

+ Послушайте без текста. Запишите три определения: entidade, componente, sistema.
+ Послушайте с текстом. Подчеркните все маркеры объяснения: #pt[primeiro, por exemplo, ou seja, no fundo, isto serve para, a seguir, em resumo].
+ Послушайте без текста и воспроизведите реплики Alex.

=== 2. Маркеры объяснения

#table(columns: 3,
  table.header([Функция], [Português], [Значение]),
  [Порядок], [primeiro, … a seguir, … depois, … por fim, …], [сначала, затем, потом, наконец],
  [Цель], [O objetivo é separar dados e lógica. / Isto serve para adicionar coisas sem mudar o resto.], [Цель — … / Это нужно для того, чтобы …],
  [Пример], [Por exemplo, o jogador tem posição e sprite.], [Например, …],
  [Переформулировка], [Ou seja, a lógica não está nas entidades. / Quer dizer, …], [То есть, …],
  [Суть], [No fundo, é uma lista de números. / Basicamente, …], [По сути, …],
  [Итог], [Em resumo, … / Resumindo, …], [Итак, подводя итог, …],
  [Проверка понимания], [Faz sentido? / Estás a perceber? / Alguma dúvida até aqui?], [Понятно? / Есть вопросы пока?],
)

#pt[Resumindo] и #pt[basicamente] — единственные привычные -ndo/-mente слова здесь; они не прогрессив, а вводные, поэтому допустимы в PT-PT.


=== 3. Словарь архитектуры игры PT-PT

#table(columns: 3,
  table.header([Português], [Значение], [Не говорить]),
  [a cena / a entidade / o componente / o sistema], [сцена / сущность / компонент / система], [],
  [o ciclo de jogo / o motor / a renderização / a física / a colisão], [игровой цикл / движок / рендеринг / физика / коллизия], [\*o loop (в речи бывает, но в объяснении лучше ciclo)],
  [o script / o ficheiro / a pasta / guardar / carregar], [скрипт / файл / папка / сохранять / загружать], [\*arquivo, \*salvar],
  [o ecrã / o rato / o teclado / o comando], [экран / мышь / клавиатура / геймпад (и «команда» ввода)], [\*tela, \*mouse, \*controle],
  [a posição / a velocidade / o sprite / a vida / o inimigo / o jogador], [позиция / скорость / спрайт / здоровье / враг / игрок], [],
  [a função / a classe / os dados / o comportamento / o identificador], [функция / класс / данные / поведение / идентификатор], [],
)

=== 4. Учебное задание: структура

#table(columns: 3,
  table.header([Português], [Значение], [Модель фразы]),
  [o enunciado], [текст задания], [O enunciado está na plataforma desde hoje.],
  [os objetivos], [цели], [O objetivo é implementar três sistemas.],
  [os critérios de avaliação], [критерии оценки], [Os critérios são: funciona, está organizado, está documentado.],
  [a entrega / o prazo], [сдача / срок], [A entrega é até dia 19, pela plataforma, num único ficheiro zip.],
  [a defesa / a apresentação], [защита / презентация], [Cada grupo tem dez minutos de apresentação.],
)

#exercise([Упражнение A — вставьте маркер], [
+ \_\_\_, criamos a cena. \_\_\_, adicionamos as entidades. \_\_\_, escrevemos os sistemas.
+ \_\_\_ é separar os dados da lógica.
+ Cada componente guarda um tipo de dados. \_\_\_, a posição ou a velocidade.
+ A entidade é só um número. \_\_\_, não tem comportamento.
+ \_\_\_, o motor corre os sistemas em cada ciclo.
+ \_\_\_: entidade, componente, sistema. Faz sentido?
])

#exercise([Упражнение B — исправьте бразилизмы и англицизмы], [
+ Salva o arquivo antes de fechar.
+ O sprite aparece na tela.
+ Clica com o mouse na entidade.
+ O loop do jogo roda sessenta vezes por segundo.
+ Carrega o level a partir do arquivo.
])

#exercise([Упражнение C — определения: закончите фразу], [
+ Uma entidade é…
+ Um componente serve para…
+ Um sistema é uma função que…
+ O ciclo de jogo é…
+ O sistema de renderização lê… e…
])

== Сессия 2 — слух и произношение  #pill("30 минут")

=== 1. Монолог: Alex объясняет задание группе

#audio-ref("0064-audio2")

#dialogue((
  ("Alex", "Vou explicar o enunciado do segundo projeto. O objetivo é fazer um jogo pequeno com a arquitetura de entidades e componentes. Primeiro, cada grupo cria uma cena com pelo menos dez entidades: o jogador, inimigos e paredes. A seguir, escrevem três sistemas obrigatórios: movimento, colisão e renderização. Depois, adicionam um sistema à escolha, por exemplo, som ou vida. Isto serve para mostrar que a arquitetura cresce sem mudar o código antigo. Os critérios de avaliação são quatro: o jogo funciona sem erros; o código está organizado em ficheiros separados; o jogo guarda e carrega o estado; e a documentação explica cada sistema. A entrega é até ao dia dezanove de dezembro, pela plataforma, num único ficheiro zip. Não aceito entregas por email. Por fim, cada grupo apresenta o projeto em dez minutos e responde a perguntas. Em resumo: dez entidades, quatro sistemas, um ficheiro, uma apresentação. Alguma dúvida?"),
))

+ Первый проход без текста: цель, три обязательных системы, четыре критерия, срок, формат сдачи.
+ Второй проход с текстом: отметьте маркеры порядка и итога; найдите #pt[guarda, carrega, ficheiro].
+ Третий проход без текста: shadowing от #pt[Os critérios] до #pt[cada sistema].

#card([Наблюдения PT-PT], [
- #pt[ficheiro] \[fiˈʃɐjɾu\], #pt[ecrã] с носовым конечным #pt[-ã], #pt[rato] с открытым ударным #pt[a] \[ˈʁatu\] и редуцированным конечным #pt[-o].
- #pt[entidade, velocidade]: #pt[-dade] звучит почти как #pt[\[dad\]], конечный гласный съедается.
- При перечислении интонация поднимается на каждом пункте и падает на последнем: #pt[movimento, colisão e renderização].
])

#exercise([Проверка понимания], [
+ Quantas entidades tem de ter a cena?
+ Quais são os três sistemas obrigatórios?
+ Para que serve o quarto sistema?
+ Quais são os quatro critérios?
+ Como e quando é a entrega?
+ Quanto tempo tem cada apresentação?
])

== Сессия 3 — речь и письмо  #pill("30 минут")

=== 1. Подстановочная речь

Произнесите каждую модель минимум три раза, меняя выделенную часть:


- Primeiro, #strong[criamos a cena]. A seguir, #strong[adicionamos os componentes]. Por fim, #strong[escrevemos os sistemas].
- O objetivo é #strong[separar os dados da lógica].
- Isto serve para #strong[adicionar inimigos sem mudar o resto].
- Ou seja, #strong[a entidade não tem comportamento].
- Por exemplo, #strong[o sistema de física lê a posição e a velocidade].
- Em resumo, #strong[três sistemas, um ficheiro, uma entrega].

=== 2. Монолог: объяснить архитектуру своего проекта — 3 минуты

Возьмите свою реальную игру или учебный пример. Объясните структуру для человека, который не программирует: что происходит в каждом цикле, где хранятся данные, как добавить новый объект. Обязательно: пять маркеров из таблицы, десять слов из словаря, одна проверка понимания. Запишите одним дублем; потом посчитайте маркеры.


=== 3. Письмо: #pt[enunciado] для студентов, 120–140 слов

Напишите текст задания на сайт курса: цель, шаги, критерии, сдача. Тон формальный, глаголы будущего или инфинитив (#pt[Cada grupo deverá… / A entrega será…]). Заголовки: #pt[Objetivo, Tarefas, Critérios de avaliação, Entrega].


=== 4. Drops — 5 минут дополнительно

+ Пройдите одну короткую сессию по темам «компьютер» или «наука».
+ С пятью словами дайте определение по модели #pt[X é… / X serve para…]

#duo(card([Контроль без подсказок  #pill("5–7 минут")], [
Закройте урок и выполните:

+ Назовите семь маркеров объяснения с функцией каждого.
+ Дайте определение #pt[entidade, componente, sistema] одной фразой каждое.
+ Назовите PT-PT формы для: файл, экран, мышь, сохранить, загрузить, папка.
+ Изложите задание в четырёх фразах: #pt[objetivo, tarefas, critérios, entrega].
+ Объясните любую часть своей игры за одну минуту с двумя маркерами.
#strong[Урок завершён], если удалось выполнить 4 из 5 пунктов без чтения. Ошибки — материал следующего повтора, а не провал.

], breakable: true), card([Повтор завтра  #pill("10 минут")], [
- семь маркеров без таблицы;
- диалог один раз без текста;
- объяснение архитектуры в 8 фразах;
- 20 терминов словаря в парах PT-PT / «не говорить»;
- записать в журнал ошибок каждый #pt[\*arquivo, \*tela, \*salvar], который проскочил.
], breakable: true))

#block(above: 1em)[#set text(size: 7.6pt, fill: muted)
*Источники:* #link("https://www.lidel.pt/pt/catalogo/portugues-europeu-lingua-estrangeira/metodos/passaporte-para-portugues-1-edicao-atualizada-pack-livro-do-aluno-caderno-de-exercicios/")[Passaporte para Português 1 — Edição Atualizada] · #link("https://www.practiceportuguese.com/")[Practice Portuguese — European Portuguese]]

#answers((
  ([Упражнение A — вставьте маркер], [
Primeiro / A seguir / Por fim; O objetivo; Por exemplo; Ou seja; No fundo; Em resumo.

]),
  ([Упражнение B — исправьте бразилизмы и англицизмы], [
Guarda o ficheiro antes de fechar. / O sprite aparece no ecrã. / Clica com o rato na entidade. / O ciclo de jogo corre sessenta vezes por segundo. / Carrega o nível a partir do ficheiro.

]),
  ([Упражнение C — определения: закончите фразу], [
…só um identificador, sem dados nem lógica. / …guardar dados de um tipo, por exemplo a posição. / …corre em cada ciclo e trata das entidades com certos componentes. / …a sequência que o motor repete: ler o input, atualizar, desenhar. / …a posição e o sprite e desenha no ecrã.

]),
  ([Проверка понимания], [
Pelo menos dez. Movimento, colisão e renderização. Para mostrar que a arquitetura cresce sem mudar o código antigo. Funciona sem erros; código organizado em ficheiros; guarda e carrega o estado; documentação de cada sistema. Até 19 de dezembro, pela plataforma, num ficheiro zip. Dez minutos.

]),
  ([Опора — открыть только если застряли], [
Projeto 2 — Arquitetura de entidades e componentes

Objetivo: construir um jogo pequeno em que os dados e a lógica estão separados. Tarefas: primeiro, criar uma cena com pelo menos dez entidades; a seguir, implementar os sistemas de movimento, colisão e renderização; por fim, adicionar um sistema à escolha do grupo. O jogo deverá guardar e carregar o estado a partir de um ficheiro. Critérios de avaliação: o jogo funciona sem erros (40%); o código está organizado em ficheiros por sistema (30%); existe documentação que explica cada componente e cada sistema (20%); a apresentação é clara (10%). Entrega: até ao dia 19 de dezembro, pela plataforma, num único ficheiro zip. Não serão aceites entregas por email. Cada grupo terá dez minutos de apresentação e cinco de perguntas. Em caso de dúvida, escrevam-me pela plataforma.

]),

))
