#import "../course.typ": *
#show: lesson.with((n: 53, week: 9, day: 5, title: [Texto argumentativo], lead: [Структура текста-мнения на 130–150 слов: позиция, два аргумента с примерами, контраргумент с #pt[embora], вывод. Банк из 16 связок и образец: движок или библиотека в первом семестре.]))

== Сессия 1 — язык и форма  #pill("30 минут")

=== 1. Структура — пять абзацев

#table(columns: 4,
  table.header([Абзац], [Задача], [Опорные фразы], [Слов]),
  [#h(0pt)1. Введение], [тема + ваша позиция], [Muitos … discutem se … Na minha opinião, …], [25–30],
  [#h(0pt)2. Аргумент 1 + пример], [общее правило + конкретный случай], [Em primeiro lugar, … Por exemplo, …], [35–40],
  [#h(0pt)3. Аргумент 2], [второе правило, можно с пояснением], [Em segundo lugar, … Além disso, … ou seja, …], [25–30],
  [#h(0pt)4. Контраргумент], [уступка + ответ], [Embora …, … No entanto, …], [25–30],
  [#h(0pt)5. Вывод], [позиция другими словами], [Em conclusão, …], [15–20],
)

#strong[Времена:] позиция и аргументы — presente; пример — pretérito perfeito (#pt[no ano passado um grupo fez…]) или imperfeito для фона (#pt[tinha um erro]); после #pt[embora] — presente do conjuntivo (#pt[seja, tenha, esteja, faça, possa]); условие — #pt[se] + presente. Будущее время в таком тексте не нужно.


=== 2. Банк связок

#table(columns: 3,
  table.header([Português], [Значение], [Пример]),
  [na minha opinião, …], [по-моему], [Na minha opinião, o projeto é mais útil.],
  [em primeiro lugar, …], [во-первых], [Em primeiro lugar, o aluno escreve o próprio código.],
  [em segundo lugar, …], [во-вторых], [Em segundo lugar, o feedback chega a tempo.],
  [além disso, …], [кроме того], [O Godot é gratuito. Além disso, é código aberto.],
  [por exemplo, …], [например], [Por exemplo, no ano passado um grupo corrigiu a física.],
  [por isso, …], [поэтому], [O prazo é curto, por isso começam na primeira semana.],
  [porque], [потому что], [Não uso essa biblioteca porque é lenta.],
  [ou seja, …], [то есть], [A aula é às oito, ou seja, muito cedo.],
  [no entanto, …], [однако], [O Unity é mais usado. No entanto, é pesado.],
  [mas], [но], [É justo, mas mostra pouco.],
  [embora + conjuntivo], [хотя], [Embora o motor seja bom, é caro.],
  [apesar de + infinitivo], [несмотря на], [Apesar de ser caro, vale a pena.],
  [por um lado, … por outro lado, …], [с одной стороны … с другой], [Por um lado, o exame é rápido; por outro lado, mostra pouco.],
  [assim, …], [так, таким образом], [Assim, os alunos aprendem a programar antes da ferramenta.],
  [também], [тоже, также], [A documentação também conta.],
  [em conclusão, …], [в заключение], [Em conclusão, prefiro o projeto.],
)

#strong[Пунктуация:] вводные связки в начале фразы отделяются запятой (#pt[Em primeiro lugar, …]); #pt[no entanto] и #pt[além disso] открывают новую фразу после точки; перед #pt[mas, por isso, ou seja] — запятая; перед #pt[porque] — нет. #pt[No entanto] — письменный синоним #pt[mas]; в тексте нужен хотя бы один.


=== 3. Образец — связки выделены

#card("Результат урока", [
#checklist-items(([назвать пять частей аргументативного текста и их размер в словах;], [использовать 12 связок из банка с правильной пунктуацией;], [восстановить порядок абзацев чужого текста;], [понять на слух образец и назвать все связки;], [написать 130–150 слов с шестью и более связками по чек-листу.],))
#strong[Режим:] три блока по 30 минут. Пишите от руки или в файле без автопроверки: ошибки должны стать вашими, а не программы.

])

#card(none, [
#emph[Motor de jogo ou biblioteca: por onde começar?]

Muitos professores discutem se os alunos devem aprender primeiro um motor de jogo ou uma biblioteca. #strong[Na minha opinião], o primeiro semestre deve começar com uma biblioteca.

#strong[Em primeiro lugar], uma biblioteca obriga a perceber o que acontece dentro do jogo. #strong[Por exemplo], o aluno escreve o ciclo de jogo e a colisão com as próprias mãos, #strong[por isso] percebe a lógica e não só o editor.

#strong[Em segundo lugar], a curva de aprendizagem é mais suave no início. #strong[Além disso], o computador não precisa de ser potente, #strong[ou seja], todos os alunos trabalham nas mesmas condições.

#strong[Embora] um motor como o Unity seja mais usado na indústria, esconde demasiada coisa a quem está a começar. #strong[No entanto], no segundo semestre faz sentido mudar para um motor.

#strong[Em conclusão], primeiro a biblioteca, depois o motor: #strong[assim] os alunos aprendem a programar antes de aprender uma ferramenta.

])

146 слов, 11 связок, пять абзацев. Обратите внимание: пример во втором абзаце — общий случай в presente (#pt[o aluno escreve]); в вашем тексте пример лучше дать как реальный случай в прошедшем (#pt[no ano passado um aluno escreveu…]).


#exercise([Упражнение A — восстановите порядок абзацев], [
Тема: #pt[«Os prazos de entrega devem ser fixos?»] Абзацы перемешаны. Запишите порядок и назовите функцию каждого.

+ Embora um atraso de um dia não seja grave, o problema é o exemplo que fica para a turma. No entanto, há casos de doença, e esses devem ter regras próprias.
+ Em conclusão, prazo fixo para todos, mas com aviso claro no início do semestre.
+ Em primeiro lugar, um prazo fixo é igual para todos. Por exemplo, no ano passado aceitei três atrasos e depois toda a turma pediu mais uma semana.
+ Muitos alunos pedem mais tempo no último dia, e o professor tem de decidir. Na minha opinião, os prazos de entrega devem ser fixos.
+ Em segundo lugar, na indústria os prazos não mudam, por isso é melhor aprender isso na licenciatura.
])

#exercise([Упражнение B — вставьте связку: #pt[além disso / no entanto / ou seja / por um lado … por outro lado / apesar de / embora / em conclusão / por exemplo / porque / por isso]], [
+ O Godot é gratuito. \_\_\_, é código aberto.
+ O Unity tem mais tutoriais. \_\_\_, é mais pesado.
+ A aula começa às oito, \_\_\_, muito cedo para os alunos.
+ \_\_\_, o projeto mostra mais; \_\_\_, o exame é mais fácil de corrigir.
+ \_\_\_ ser mais usado, o Unity esconde muita coisa.
+ \_\_\_ a biblioteca seja leve, não tem editor.
+ \_\_\_, primeiro a biblioteca, depois o motor.
+ Uso várias ferramentas, \_\_\_ o Godot e o Phaser.
+ Não uso essa biblioteca \_\_\_ tem pouca documentação.
+ O computador é fraco, \_\_\_ o editor do Unity não abre.
])

== Сессия 2 — слух и произношение  #pill("30 минут")

Образец читает один голос. Работайте с закрытым текстом сессии 1.


+ Первое прослушивание: запишите все связки в порядке звучания. Их 11.
+ Второе прослушивание с текстом: отметьте паузы — после вводной связки голос делает короткую остановку, это и есть запятая.
+ Абзацы 2 и 4 — shadowing по фразе, три раза. Следите за #pt[seja] после #pt[embora].
+ Диктант: остановите после третьего абзаца и запишите его по памяти, затем сверьтесь.

#audio-ref("0053-dialogue")

#exercise([Текст аудио — открыть после первого прослушивания], [
#dialogue((
  ("Alex", "Motor de jogo ou biblioteca: por onde começar? Muitos professores discutem se os alunos devem aprender primeiro um motor de jogo ou uma biblioteca. Na minha opinião, o primeiro semestre deve começar com uma biblioteca."),
  ("Alex", "Em primeiro lugar, uma biblioteca obriga a perceber o que acontece dentro do jogo. Por exemplo, o aluno escreve o ciclo de jogo e a colisão com as próprias mãos, por isso percebe a lógica e não só o editor."),
  ("Alex", "Em segundo lugar, a curva de aprendizagem é mais suave no início. Além disso, o computador não precisa de ser potente, ou seja, todos os alunos trabalham nas mesmas condições."),
  ("Alex", "Embora um motor como o Unity seja mais usado na indústria, esconde demasiada coisa a quem está a começar. No entanto, no segundo semestre faz sentido mudar para um motor."),
  ("Alex", "Em conclusão, primeiro a biblioteca, depois o motor: assim os alunos aprendem a programar antes de aprender uma ferramenta."),
))
])

#card([Наблюдения PT-PT], [
- #pt[no entanto] — «ну-энтáнту», оба #emph[o] редуцированы до «у».
- #pt[além disso] — «алэ́й(н) дúсу»; #pt[-ém] носовой дифтонг.
- #pt[embora … seja] — в чтении между ними нет паузы, пауза после всей уступки, перед главной частью.
])

#exercise([Проверка понимания], [
+ Позиция автора?
+ Аргумент 1?
+ Аргумент 2 и дополнение?
+ Уступка оппоненту?
+ Когда переходить на движок?
])

== Сессия 3 — речь и письмо  #pill("30 минут")

=== 1. Устная разминка — 3 минуты

Перескажите образец своими словами по пяти абзацам, не глядя в текст. Каждый абзац начинайте с его связки.


=== 2. Текст — 130–150 слов

Тема: #pt[«Trabalho de grupo ou trabalho individual no primeiro semestre?»] Время: 20 минут. Используйте шесть фраз, написанных вчера. Сначала план из пяти строк, потом текст, потом чек-лист.


- пять абзацев, позиция уже в первом;
- 130–150 слов (посчитайте; заголовок не считается);
- минимум 6 разных связок из банка, из них хотя бы одна #pt[no entanto] или #pt[além disso];
- один пример в pretérito perfeito;
- одно #pt[embora] + conjuntivo (проверьте форму: #pt[seja / tenha / esteja / faça / possa] или регулярная);
- вывод повторяет позицию другими словами, без новых аргументов;
- PT-PT: #pt[estar a + infinitivo], #pt[mais pequeno], #pt[tu]-формы если обращаетесь к читателю.

=== 3. Правка

Через 10 минут перечитайте текст вслух. Отдельно проверьте: род и артикли, форму после #pt[embora], запятые перед #pt[mas / por isso]. Три исправления — в журнал ошибок.


#duo(card([Контроль без подсказок  #pill("5–7 минут")], [
Закройте урок и выполните:

+ Назовите пять абзацев текста и размер каждого в словах.
+ Двенадцать связок из банка с русским значением.
+ Четыре связки, которые открывают новую фразу после точки.
+ Первую фразу каждого абзаца образца по памяти.
+ Одна фраза с #pt[por um lado … por outro lado] о вашем предмете.
#strong[Урок завершён], если удалось выполнить 4 из 5 пунктов без чтения. Ошибки — в журнал.

], breakable: true), card([Повтор завтра  #pill("10 минут")], [
Завтра контроль недели 9. Подготовка:

- банк связок по памяти, закрыв колонку Português;
- формы #pt[seja, tenha, esteja, faça, possa] и пять блоков #pt[quando / se];
- образец на слух один раз без текста;
- свой текст прочитать вслух один раз, отмечая связки.
], breakable: true))

#block(above: 1em)[#set text(size: 7.6pt, fill: muted)
*Источники:* #link("https://www.lidel.pt/pt/catalogo/portugues-europeu-lingua-estrangeira/metodos/passaporte-para-portugues-1-edicao-atualizada-pack-livro-do-aluno-caderno-de-exercicios/")[Passaporte para Português 1 — Edição Atualizada] · #link("https://www.practiceportuguese.com/")[Practice Portuguese — European Portuguese]]

#answers((
  ([Упражнение A — восстановите порядок абзацев], [
D (введение + позиция) → C (аргумент 1 + пример) → E (аргумент 2) → A (контраргумент с #pt[embora] + #pt[no entanto]) → B (вывод). Ключи порядка: #pt[em primeiro lugar] не может стоять до позиции; #pt[em conclusão] — всегда последний.

]),
  ([Упражнение B — вставьте связку: além disso / no entanto / ou seja / por um lado … por outro lado / apesar de / embora / em conclusão / por exemplo / porque / por isso], [
#h(0pt)1. Além disso; 2. No entanto; 3. ou seja; 4. Por um lado … por outro lado; 5. Apesar de; 6. Embora; 7. Em conclusão; 8. por exemplo; 9. porque; 10. por isso.

]),
  ([Проверка понимания], [
начинать с библиотеки; библиотека заставляет понять, что происходит внутри игры (цикл, коллизии своими руками); кривая обучения мягче в начале + не нужен мощный компьютер, равные условия; Unity больше используется в индустрии; во втором семестре.

]),
  ([Модель — открыть после чек-листа], [
Muitos professores de programação perguntam se o primeiro projeto deve ser individual ou em grupo. Na minha opinião, o primeiro semestre deve ter um projeto individual.

Em primeiro lugar, no início cada aluno precisa de escrever o seu próprio código. Por exemplo, no ano passado um aluno do grupo fez todo o jogo e os outros dois só desenharam os menus; em janeiro não sabiam programar um ciclo de jogo.

Em segundo lugar, um projeto individual é mais fácil de avaliar, ou seja, a nota mostra o trabalho de uma pessoa.

Embora o trabalho de grupo prepare para a indústria, isso faz mais sentido no segundo semestre, quando todos já sabem o básico. No entanto, os alunos podem ajudar-se nas aulas práticas.

Em conclusão, primeiro sozinho, depois em equipa: assim ninguém fica escondido atrás dos colegas.

136 слов, 9 связок.

]),

))
