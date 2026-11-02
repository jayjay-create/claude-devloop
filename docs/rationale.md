# Reasons, cases and approved wordings of the loaded texts

This file holds the reasons for the rules of the texts devloop loads into a
session — every file under `skills/`, `shared/` and `output-styles/` — the cases
those rules stand on, and the wordings the person approved for texts a user
sees, word for word in the language they were approved in. It is read by whoever
works on devloop and loaded into no session: the loaded texts carry the rule and
at most a short reason, and what holds the rule up stands here. It says why the
rules hold today and on which cases they stand, and not how they came to read as
they do: the dated record of runs, measurements and decisions stands in
`docs/roadmap.md`, and each case and each wording here names the head of the
entry there that carries it, by which the entry is found. The files follow in
the order of `.claude-plugin/plugin.json`, each skill's `SKILL.md` before its
other files, then `shared/`, then `output-styles/`; inside a file the points
follow its headings as the file writes them, and a file with no heading of its
own has its points directly under its path. Where a rule of a loaded text is
written or changed, its point here is written or changed with it; a reference
from a loaded text to `docs/skill-conventions.md` or `docs/plan.md` that the
loaded text no longer carries stands here at its rule.

## `skills/start-work/SKILL.md`

### Step 1 — Look

- **Nothing is said before the refresh of an older setup.** The refresh says
  what changed where it lands, so a sentence before it tells the person nothing
  they decide or do. SW-2 under B1 of entry "Where each text devloop owes the
  person stays, goes into a pull request, an issue or a file, or drops, built
  after the decisions of the person of 17 October 2026: the introduction of
  `start-work`, the sentences that say why a question comes now in the wording
  approved that day, the last message of the run with nobody there in two
  groups, and the lines of the skills, the inserted texts and two hooks brought
  in line with the output style; 17 October 2026, version 0.143.0.".
### Step 2 — Orient them, if the status line says this project is not set up and the idea did not come with the command

- **The introduction covers where it ends up, one promise, nothing to remember,
  and that asking gets an explanation; in the run's own words, and closing on
  the fixed line.** A model paraphrases a fixed paragraph and covers a list of
  points; the closing line is a signature, which it transcribes. Approved
  wording, point 7 of entry "The decisions of 12 October 2026: milestone 3 has
  not landed with the two closing runs and no run with Go follows; twenty-seven
  things to build before the next run, on the install guard, at the setup and at
  planning and building; three things decided and not built now; the person's
  wordings, word for word; who changed the check targets in the second closing
  run; 12 October 2026, the version stays 0.135.0.": „Am Ende steht Code, der
  gebaut, geprüft und gemerged ist. Den Rest führe ich. Merken musst du dir
  nichts, keine Befehle und keine Schritte. Und wenn du irgendwann wissen
  willst, was gerade passiert, frag einfach." / „devloop - from idea to built.";
  without an idea given, the second sentence reads „Du bringst nur eine Idee
  mit, den Rest führe ich", and at the end stands the question what is to be
  built. The form with an idea is gone, B6 of entry "Where each text devloop
  owes the person stays, goes into a pull request, an issue or a file, or drops,
  built after the decisions of the person of 17 October 2026: the introduction
  of `start-work`, the sentences that say why a question comes now in the
  wording approved that day, the last message of the run with nobody there in
  two groups, and the lines of the skills, the inserted texts and two hooks
  brought in line with the output style; 17 October 2026, version 0.143.0.":
  with an idea there is no introduction.
- **When the idea comes with the command there is no introduction, no sentence
  on the idea as understood and no question; that the setup comes first stands
  in the setup's first question.** A run that has the idea cannot follow a line
  asking what to build. Case: in the first closing run of milestone 3, 11
  October 2026, the idea came with the command while step 2 said to ask what to
  build after the introduction, and the run wrote no introduction at all, defect
  5 of entry "The first closing run of milestone 3, made on 11 October 2026 in
  `devloop-test-w` under a record saying no, read off its session log and the
  project, with the decisions of that day on the arrangement of the closing
  runs: eleven defects, four met again, one open question; 11 October 2026, the
  version stays 0.135.0."; built as point 7 in entry "Part B of the decisions of
  12 October 2026 at the setup, points 7 to 19, and the four defects of
  milestone 3 that lie with the setup — defects 1 and 3 of the first closing
  run, b and i of the second — built; the auto-merge question revised on 16
  October 2026 to the case where a gate stands already; the merge handover and
  the branch deletion as shared texts; a changed file and commits of their own
  at a failed fetch asked about and done by the run; 16 October 2026, version
  0.140.0.".
- **The install-issues program runs before the in-flight query, and `start-work`
  closes no install issue and reads no tool itself.** The query is the first
  thing of the start that reads an open issue, so an issue whose tool now stands
  is closed before the step sees it, and closing stays with the program. Case:
  in the second session of the short run of 30 October 2026 this step read an
  install issue, read the tool itself with `command -v` and sent `gh issue
  close` with a comment of its own, which Claude Code's classifier refused, new
  defect 1 of entry "Short run read off its two logs, the ! after a no and the
  next start."; the same text held in `build-work` in both sessions of that run,
  so that the cause is removed where it lay, decision (1) of entry "start-work
  runs the install-issues program before it reads an issue.".
- **Nothing of the in-flight report is said where the next turn ends only after
  a build or where the run goes alone, and with a map or spec in flight the next
  piece is started without a word there.** The room to name a different piece
  would reach the person only once that piece is built. SW-6 and SW-7 under B1
  and B3 of entry "Where each text devloop owes the person stays, goes into a
  pull request, an issue or a file, or drops, built after the decisions of the
  person of 17 October 2026: the introduction of `start-work`, the sentences
  that say why a question comes now in the wording approved that day, the last
  message of the run with nobody there in two groups, and the lines of the
  skills, the inserted texts and two hooks brought in line with the output
  style; 17 October 2026, version 0.143.0.".
- **The in-flight report does not name a draft, a pull request somebody else
  opened, one that closes no issue, or how many there are past three or four; on
  a no to landing it does not say that the pull request stays open.** None of
  these is work of theirs waiting on a decision, and naming them spends the five
  lines on things they neither decide nor do. SW-6 and SW-9 of entry "Where each
  text devloop owes the person stays, goes into a pull request, an issue or a
  file, or drops, built after the decisions of the person of 17 October 2026:
  the introduction of `start-work`, the sentences that say why a question comes
  now in the wording approved that day, the last message of the run with nobody
  there in two groups, and the lines of the skills, the inserted texts and two
  hooks brought in line with the output style; 17 October 2026, version
  0.143.0.".
- **The issue devloop files for a conflicted bring-back, labelled `needs-human`
  alone, is not from outside and is not named in the in-flight report.** The
  person meets it in the question on a change still set aside and in the last
  message of the run that filed it; by its missing `raised-here` alone it would
  pass for a suggestion from outside. N6 of entry "The catch-up of 19 October
  2026 after the consistency audit of 18 October 2026: the eleven findings its
  entry records as they are, built — a stop at `no required check:` with nobody
  there, the two cases past the gate named, a read before every pop and drop of
  a change set aside, the mark at the three fetch stops of `build-work`, the
  failed attempts of an install, the issue of a conflicted bring-back no longer
  read as from outside, two comments, the header of a question a name of at most
  twelve characters by the person's decision of that day, a should a later
  decision changes, and what the comparison before the first change shows; 19
  October 2026, version 0.148.0.".
### Step 4 — Set up, if it is not set up

- **Nothing is said before `setup-checks` is called; why the check setup comes
  now opens the message of that skill's step 2.** The reason belongs with the
  question it explains. SW-15 under B7 of entry "Where each text devloop owes
  the person stays, goes into a pull request, an issue or a file, or drops,
  built after the decisions of the person of 17 October 2026: the introduction
  of `start-work`, the sentences that say why a question comes now in the
  wording approved that day, the last message of the run with nobody there in
  two groups, and the lines of the skills, the inserted texts and two hooks
  brought in line with the output style; 17 October 2026, version 0.143.0.". The
  approved wording is quoted under `skills/setup-checks/SKILL.md`.
- **This step reads the state, not the way it was reached: any row `empty` while
  there is code calls the check setup, whatever other rows the table holds.**
  Every way to here gets the same answer, so neither a way nobody named nor a
  table with filled rows beside the empty ones is left waiting. Entry "The
  status of a check class takes four forms and a guard holds the table to them,
  the unattended mode starts on two permissions more and is set up in
  `setup-checks` step 8 or through `--auto`, a state is read before a task is
  released, and a review finding about the table goes a third way; 5 October
  2026, version 0.129.0.", its addenda of 6 October 2026.
### Step 5 — Build it

- **Loose `raised-here` issues go to `build-work`, not to `plan-work`.** An
  issue that already says what is wrong needs no spec around it, and planning
  would stand a fresh candidate beside it as an equal choice. Case: measured on
  9 September 2026 on a bench with four loose `raised-here` issues, the run put
  planning a fresh candidate to the user as an equal alternative, entry "The
  loose-issue rule was written by appending, and the sentences it competes with
  were left standing.".
- **That the run goes on alone under `--auto` is not said.** They typed the
  flag, and saying their own choice back tells them nothing. SW-16 of entry
  "Where each text devloop owes the person stays, goes into a pull request, an
  issue or a file, or drops, built after the decisions of the person of 17
  October 2026: the introduction of `start-work`, the sentences that say why a
  question comes now in the wording approved that day, the last message of the
  run with nobody there in two groups, and the lines of the skills, the inserted
  texts and two hooks brought in line with the output style; 17 October 2026,
  version 0.143.0.".

## `skills/setup-project/SKILL.md`

### A guard's block is not a decline

- **An install the guard blocks during the setup is not handed over, and the
  case with nobody there does not arise here.** Nothing is installed in the
  setup, the check setup decides once the record has landed, and the run without
  the person reaches this skill on no way: the stock-take tool computes the
  skills the unattended mode reaches, `setup-project` not among them, and
  docs/plan.md under milestone 3 says the record is written only with the person
  present. SP-2 of entry "Where each text devloop owes the person stays, goes
  into a pull request, an issue or a file, or drops, built after the decisions
  of the person of 17 October 2026: the introduction of `start-work`, the
  sentences that say why a question comes now in the wording approved that day,
  the last message of the run with nobody there in two groups, and the lines of
  the skills, the inserted texts and two hooks brought in line with the output
  style; 17 October 2026, version 0.143.0."; cluster 17 of entry "Milestone 3,
  part 1, the install question, built as the person decided on 20 October 2026:
  the refresh of `setup-project` puts the install question where no record
  stands on the main branch and writes the record; no question of its step 4
  carries a recommendation, the rule standing in `shared/how-to-ask.md`; the
  call of the install question stays alone, without a mechanism, for the reason
  that what needs weighing goes alone; the no of the install question names the
  exception of a package that downloads something when it is installed, in the
  wording approved that day; the bullet of `setup-project` for a blocked install
  with nobody there says the case cannot arise, and the insert of
  `shared/backed-command.md` goes; the person's decisions of that day on the
  clusters of the checked list recorded with what follows from the rules; four
  findings of the tool brought in as defects, three of them built and one
  closed, four defects closed as left on purpose and one as lapsed; 20 October
  2026, version 0.152.0.", which took out the issue labelled `needs-human` the
  bullet named for a case no path reaches.
### Refreshing an existing setup

- **A refresh puts the install question where no record stands on the main
  branch, and no other; with its reason in the question field.** A question
  whose answer is stored is put where the answer is needed, wherever it is
  missing, and re-asking a stored answer is how a working project gets talked
  into changing its mind; a refresh carries no opening that says why questions
  come. Cluster 5 of entry "Milestone 3, part 1, the install question, built as
  the person decided on 20 October 2026: the refresh of `setup-project` puts the
  install question where no record stands on the main branch and writes the
  record; no question of its step 4 carries a recommendation, the rule standing
  in `shared/how-to-ask.md`; the call of the install question stays alone,
  without a mechanism, for the reason that what needs weighing goes alone; the
  no of the install question names the exception of a package that downloads
  something when it is installed, in the wording approved that day; the bullet
  of `setup-project` for a blocked install with nobody there says the case
  cannot arise, and the insert of `shared/backed-command.md` goes; the person's
  decisions of that day on the clusters of the checked list recorded with what
  follows from the rules; four findings of the tool brought in as defects, three
  of them built and one closed, four defects closed as left on purpose and one
  as lapsed; 20 October 2026, version 0.152.0."; see docs/skill-conventions.md
  under "Only ask where there is something to decide". Case for the reason: run
  3b of 23 October 2026 put the question at a refresh without a word of why,
  defect 34 of entry "Six closing runs read off their logs, each on the defects
  it met."; built in entry "Questions say why they come and give the issue's
  number, routes unasked.". Approved wording, (d) of entry "Install lines by one
  program, written where the install stood alone.": „Ich frische die Einrichtung
  dieses Projekts auf. Auf dem Hauptzweig ist noch keine Antwort auf diese Frage
  festgehalten.“
- **An unreadable install record is neither asked about nor written over at a
  refresh, and is said even where nothing changed.** The guard blocks every
  install on such a record. Entry "Milestone 3, part 1, the install question,
  built as the person decided on 20 October 2026: the refresh of `setup-project`
  puts the install question where no record stands on the main branch and writes
  the record; no question of its step 4 carries a recommendation, the rule
  standing in `shared/how-to-ask.md`; the call of the install question stays
  alone, without a mechanism, for the reason that what needs weighing goes
  alone; the no of the install question names the exception of a package that
  downloads something when it is installed, in the wording approved that day;
  the bullet of `setup-project` for a blocked install with nobody there says the
  case cannot arise, and the insert of `shared/backed-command.md` goes; the
  person's decisions of that day on the clusters of the checked list recorded
  with what follows from the rules; four findings of the tool brought in as
  defects, three of them built and one closed, four defects closed as left on
  purpose and one as lapsed; 20 October 2026, version 0.152.0.".
- **A refresh cuts its branch after its last question and before its first
  write.** The steps a refresh skips are where the cut is written, and a refresh
  that does not cut runs into the main-branch guard, as the first refresh did;
  (c) of entry "Milestone 3, part 1, the install question, built as the person
  decided on 20 October 2026: the refresh of `setup-project` puts the install
  question where no record stands on the main branch and writes the record; no
  question of its step 4 carries a recommendation, the rule standing in
  `shared/how-to-ask.md`; the call of the install question stays alone, without
  a mechanism, for the reason that what needs weighing goes alone; the no of the
  install question names the exception of a package that downloads something
  when it is installed, in the wording approved that day; the bullet of
  `setup-project` for a blocked install with nobody there says the case cannot
  arise, and the insert of `shared/backed-command.md` goes; the person's
  decisions of that day on the clusters of the checked list recorded with what
  follows from the rules; four findings of the tool brought in as defects, three
  of them built and one closed, four defects closed as left on purpose and one
  as lapsed; 20 October 2026, version 0.152.0.".
- **A refresh reached from the entry point with nothing changed says nothing.**
  There is nothing for the person to decide or do. SP-4 under B1 of entry "Where
  each text devloop owes the person stays, goes into a pull request, an issue or
  a file, or drops, built after the decisions of the person of 17 October 2026:
  the introduction of `start-work`, the sentences that say why a question comes
  now in the wording approved that day, the last message of the run with nobody
  there in two groups, and the lines of the skills, the inserted texts and two
  hooks brought in line with the output style; 17 October 2026, version
  0.143.0.".
### Step 0 — Get on with it, and put what is about to happen into the first question

- **Nothing is said before the setup's first question; what is about to happen
  stands in it, in one sentence by how the setup began, and nothing else of what
  it does.** Text before a tool call can land in a collapsed note, and why the
  questions come now is part of what the first question needs. B7, B11 and SP-6
  of entry "Where each text devloop owes the person stays, goes into a pull
  request, an issue or a file, or drops, built after the decisions of the person
  of 17 October 2026: the introduction of `start-work`, the sentences that say
  why a question comes now in the wording approved that day, the last message of
  the run with nobody there in two groups, and the lines of the skills, the
  inserted texts and two hooks brought in line with the output style; 17 October
  2026, version 0.143.0.". Approved wordings, same entry: at a first setup that
  begins with an idea in hand „Bevor ich mit deiner Idee anfange, richte ich das
  Projekt ein.“; where the person typed the setup themselves „Ich richte dieses
  Projekt ein.“
- **Nothing is said ahead of time about what to do at a confirmation prompt.**
  Before any can come nothing can be decided, and by the time one comes what was
  said is forgotten; the decision falls in Claude Code's own prompt, and in auto
  mode, the starting mode of the terminal since Claude Code 2.1.283, no prompt
  comes at all. Point 8 of entry "The decisions of 12 October 2026: milestone 3
  has not landed with the two closing runs and no run with Go follows;
  twenty-seven things to build before the next run, on the install guard, at the
  setup and at planning and building; three things decided and not built now;
  the person's wordings, word for word; who changed the check targets in the
  second closing run; 12 October 2026, the version stays 0.135.0.", built in
  entry "Part B of the decisions of 12 October 2026 at the setup, points 7 to
  19, and the four defects of milestone 3 that lie with the setup — defects 1
  and 3 of the first closing run, b and i of the second — built; the auto-merge
  question revised on 16 October 2026 to the case where a gate stands already;
  the merge handover and the branch deletion as shared texts; a changed file and
  commits of their own at a failed fetch asked about and done by the run; 16
  October 2026, version 0.140.0.", which took out the section "Permissions,
  before the first command".
### Step 1 — Explore, change nothing

- **`gh` not signed in: the run says how they sign in, step by step, the sign-in
  in a second terminal window.** The sign-in asks, and its questions go only to
  the window it runs in. Finding D1 of entry "Handovers say where the command is
  typed, sign-in and identity in steps.", where until then the step named `gh
  auth login` and stopped. Approved wording, (3) of that entry: „Für die Arbeit
  mit GitHub braucht devloop dein GitHub-Konto, und auf diesem Rechner ist es
  noch nicht angemeldet. Hast du noch kein Konto, legst du es zuerst auf
  github.com an. So meldest du dich an:“, then „1. Öffne ein zweites
  Terminalfenster, nicht das, in dem Claude Code läuft. Die Anmeldung stellt dir
  Fragen, und die gehen nur dort.“ — „2. Gib dort ein: `gh auth login --web
  --git-protocol https`“ — „3. Folge den Anweisungen im Terminal und im
  Browser.“ — „4. Sag mir hier Bescheid, sobald das erledigt ist. Dann richte
  ich das Projekt ein.“ See docs/skill-conventions.md under "Every skill carries
  these two", the paragraph "Where a text to the person says they have to do
  something at the computer, it says how, step by step".
- **`gh` not installed: the run reads GitHub's guide for the system and hands
  the command over as it stands there.** A command the run does not know for
  certain is read at the maker, not guessed and not left out. Decided on 28
  October 2026 after the push, at the person's question why devloop referred to
  `cli.github.com` instead of reading the command there, entry "Handovers say
  where the command is typed, sign-in and identity in steps.". Approved
  wordings, same entry: on a Mac with Homebrew, form A, „Für die Arbeit mit
  GitHub braucht devloop das Programm `gh` von GitHub, und auf diesem Rechner
  ist es noch nicht installiert. Gib den Befehl dafür hier in Claude Code ein,
  mit `!` davor:“ — „`! brew install gh`“ — „Geprüft mit `brew info gh`:
  Homebrew bietet gh 2.96.0 an, es landet in `/opt/homebrew/bin`.“ — „Sobald er
  durchgelaufen ist, prüfe ich, dass `gh` da ist, und sage dir, wie du dich bei
  GitHub anmeldest.“; under Debian or Ubuntu, form B, „Für die Arbeit mit GitHub
  braucht devloop das Programm `gh` von GitHub, und auf diesem Rechner ist es
  noch nicht installiert. Der Befehl dafür fragt nach deinem Passwort, darum gib
  ihn in einem zweiten Terminalfenster ein, nicht in dem, in dem Claude Code
  läuft:“ — the block of the page — „Geprüft an cli.github.com: Das ist die
  Anleitung von GitHub für Debian und Ubuntu.“ — „Sag mir hier Bescheid, sobald
  er durchgelaufen ist. Dann prüfe ich, dass `gh` da ist, und sage dir, wie du
  dich bei GitHub anmeldest.“; where the page gives nothing: „Für die Arbeit mit
  GitHub braucht devloop das Programm `gh` von GitHub, und auf diesem Rechner
  ist es noch nicht installiert. Installiere es, wie cli.github.com es für dein
  System beschreibt, und sag mir hier Bescheid, sobald das erledigt ist. Dann
  sage ich dir, wie du dich bei GitHub anmeldest.“ See docs/skill-conventions.md
  under "Every skill carries these two", the paragraph "Where the person types a
  command devloop hands them while Claude Code runs", and, for a command the
  guide itself warns against, the paragraph "Where a text to the person says
  they have to do something at the computer, it says how, step by step".
- **The setup does not read the tracker's labels.** This workflow creates its
  seven in every setup and reads only its own; the question about labels of
  overlapping meaning went as point 9 of entry "The decisions of 12 October
  2026: milestone 3 has not landed with the two closing runs and no run with Go
  follows; twenty-seven things to build before the next run, on the install
  guard, at the setup and at planning and building; three things decided and not
  built now; the person's wordings, word for word; who changed the check targets
  in the second closing run; 12 October 2026, the version stays 0.135.0.", built
  in entry "Part B of the decisions of 12 October 2026 at the setup, points 7 to
  19, and the four defects of milestone 3 that lie with the setup — defects 1
  and 3 of the first closing run, b and i of the second — built; the auto-merge
  question revised on 16 October 2026 to the case where a gate stands already;
  the merge handover and the branch deletion as shared texts; a changed file and
  commits of their own at a failed fetch asked about and done by the run; 16
  October 2026, version 0.140.0.".
### Step 2 — Nothing of what you found is said

- **Nothing of what step 1 found is said.** It decides nothing and is no result.
  SP-9 under B10 of entry "Where each text devloop owes the person stays, goes
  into a pull request, an issue or a file, or drops, built after the decisions
  of the person of 17 October 2026: the introduction of `start-work`, the
  sentences that say why a question comes now in the wording approved that day,
  the last message of the run with nobody there in two groups, and the lines of
  the skills, the inserted texts and two hooks brought in line with the output
  style; 17 October 2026, version 0.143.0.".
### Step 4 — Questions

- **No question of the setup's step 4 carries a recommendation; what the run
  read for question 4 stands before it as what was found.** None decides about
  the product being built. Cluster 2 of entry "Milestone 3, part 1, the install
  question, built as the person decided on 20 October 2026: the refresh of
  `setup-project` puts the install question where no record stands on the main
  branch and writes the record; no question of its step 4 carries a
  recommendation, the rule standing in `shared/how-to-ask.md`; the call of the
  install question stays alone, without a mechanism, for the reason that what
  needs weighing goes alone; the no of the install question names the exception
  of a package that downloads something when it is installed, in the wording
  approved that day; the bullet of `setup-project` for a blocked install with
  nobody there says the case cannot arise, and the insert of
  `shared/backed-command.md` goes; the person's decisions of that day on the
  clusters of the checked list recorded with what follows from the rules; four
  findings of the tool brought in as defects, three of them built and one
  closed, four defects closed as left on purpose and one as lapsed; 20 October
  2026, version 0.152.0.".
- **What carries the decision stands in the widget's fields within the output
  style's bound, and nothing stands in the message before the widget.** What
  does not fit arrives cut; a paragraph above the options does not get read;
  text before the call can land in a collapsed note. Cases: at the first asking
  of the install question on 29 September 2026 the points arrived cut to their
  field, entry "The install question put through the harness's choice widget on
  its first asking, none of its thirteen points arriving whole; the question cut
  to the four that carry the decision and the form named; 30 September 2026,
  version 0.119.0."; the points of question 3 that stood only in prose arrived
  in none of three runs, entry "The install question's points stand in the
  fields of the harness's choice widget — the question line carrying the
  subject, its scope and the leak, the yes and the no each a label and a line —
  the form rule rewritten so that prose before the widget carries only a point
  no field can carry, and the boundary on runtimes and the unattended half of
  the no out of the question as rules on the run; 3 October 2026, version
  0.126.0."; measured again for the question field, decision (4) of entry "Where
  the text devloop owes the person stands, decided by the person on 17 October
  2026, and every question put to it: what a decision needs in the question,
  everything else in the message that ends the turn, nothing between two tool
  calls; the mode question of `setup-checks` step 8 in the wording approved that
  day, in its fields and with nothing before it; 17 October 2026, version
  0.142.0.", which also says how a shared call shows at 80 columns is not
  measured.
- **The install question stands alone in its call, its points in fields.** What
  needs weighing stands alone so that it is not waved through beside other
  questions. Cases: two forms stood before — a message of its own, then prose
  above a widget — and in three runs the question came as one tab of a form
  beside another question, entries "The install question put through the
  harness's choice widget on its first asking, none of its thirteen points
  arriving whole; the question cut to the four that carry the decision and the
  form named; 30 September 2026, version 0.119.0." and "The install question's
  points stand in the fields of the harness's choice widget — the question line
  carrying the subject, its scope and the leak, the yes and the no each a label
  and a line — the form rule rewritten so that prose before the widget carries
  only a point no field can carry, and the boundary on runtimes and the
  unattended half of the no out of the question as rules on the run; 3 October
  2026, version 0.126.0.". The earlier reason, that two decisions in one submit
  come back as one answer, does not hold: Claude Code 2.1.304 returns every
  chosen answer with its question, and only a typed answer holds for the whole
  call, cluster 1 of entry "Milestone 3, part 1, the install question, built as
  the person decided on 20 October 2026: the refresh of `setup-project` puts the
  install question where no record stands on the main branch and writes the
  record; no question of its step 4 carries a recommendation, the rule standing
  in `shared/how-to-ask.md`; the call of the install question stays alone,
  without a mechanism, for the reason that what needs weighing goes alone; the
  no of the install question names the exception of a package that downloads
  something when it is installed, in the wording approved that day; the bullet
  of `setup-project` for a blocked install with nobody there says the case
  cannot arise, and the insert of `shared/backed-command.md` goes; the person's
  decisions of that day on the clusters of the checked list recorded with what
  follows from the rules; four findings of the tool brought in as defects, three
  of them built and one closed, four defects closed as left on purpose and one
  as lapsed; 20 October 2026, version 0.152.0.".
- **A ruleset's binding is read off `current_user_can_bypass`, never
  `bypass_actors`, and the value is named nowhere; neither ruleset reading needs
  admin.** `bypass_actors` can read `null` and would be taken for nobody; a
  protection written down goes stale. Measured on 31 August 2026 on
  `github/docs`, without admin there: `bypass_actors` read `null` on a reply
  that answered everything else, rules from two rulesets came back, one
  `Repository`- and one `Organization`-sourced, both replies
  `current_user_can_bypass: never`, entry "Not everything is exercised yet.";
  named nowhere since SP-16 and entry "The merge handover: every text a run
  reads at it held to it, three places made to follow it; and the section of
  `environment.md` on what checks a merge gone, decided by the person on 18
  October 2026; defect 4 of the entry of 16 October 2026 on the runs of that day
  and the finding of the same entry on that section with it; 18 October 2026,
  version 0.146.0.".
- **A gate binds where a side answered with a gate that binds, whatever the
  other did; a binding that could not be determined is neither said nor written
  into `environment.md`.** A ruleset that binds with the classic query
  unanswered, as for an account without admin rights, is a binding gate. Entry
  "Binding side decides in the setup skills, run-workflow tested on GitHub.";
  SP-18 of entry "Where each text devloop owes the person stays, goes into a
  pull request, an issue or a file, or drops, built after the decisions of the
  person of 17 October 2026: the introduction of `start-work`, the sentences
  that say why a question comes now in the wording approved that day, the last
  message of the run with nobody there in two groups, and the lines of the
  skills, the inserted texts and two hooks brought in line with the output
  style; 17 October 2026, version 0.143.0."; entry "The merge handover: every
  text a run reads at it held to it, three places made to follow it; and the
  section of `environment.md` on what checks a merge gone, decided by the person
  on 18 October 2026; defect 4 of the entry of 16 October 2026 on the runs of
  that day and the finding of the same entry on that section with it; 18 October
  2026, version 0.146.0.".
- **The auto-merge question is put only where a gate stands already.** Without a
  gate GitHub accepts no auto-merge, so every merge goes to the person whatever
  they answered. Point 10 of entry "The decisions of 12 October 2026: milestone
  3 has not landed with the two closing runs and no run with Go follows;
  twenty-seven things to build before the next run, on the install guard, at the
  setup and at planning and building; three things decided and not built now;
  the person's wordings, word for word; who changed the check targets in the
  second closing run; 12 October 2026, the version stays 0.135.0.", revised in
  entry "Part B of the decisions of 12 October 2026 at the setup, points 7 to
  19, and the four defects of milestone 3 that lie with the setup — defects 1
  and 3 of the first closing run, b and i of the second — built; the auto-merge
  question revised on 16 October 2026 to the case where a gate stands already;
  the merge handover and the branch deletion as shared texts; a changed file and
  commits of their own at a failed fetch asked about and done by the run; 16
  October 2026, version 0.140.0.". Approved wording, same entry: the question
  „Auto-Merge ist ausgeschaltet. Soll ich es einschalten?"; the first answer
  „Ja, einschalten" with the line „GitHub mergt dann selbst, sobald alle
  Pflichtprüfungen grün sind."; the second answer „Nein, aus lassen" with the
  line „Jeden Merge machst du von Hand."; where the protection requires a review
  by another person instead of a check, the yes line names that review.
- **Auto-merge is switched on with `-F` and read back.** The answer of the PATCH
  is not the state; `-F` sends a typed value where `-f` sends a string. Case: on
  8 October 2026 a PATCH answered `false` with exit 0, entry "The open findings
  on the install guard, eight, measured on this machine; four questions never
  examined; the decisions for the next orders of milestone 3 and the texts the
  person approved, word for word; three corrections; 9 October 2026, version
  0.132.0.", step 8 of entry "Step 8 of `setup-checks`: a reading before the
  question, the question field by field, the rule for auto mode after its yes; a
  guard on the identity of a commit; milestone 12 in the plan; the findings of 9
  October 2026; 9 October 2026, version 0.134.0."; `gh api --help` of gh 2.96.0,
  entry "Part B of the decisions of 12 October 2026 at the setup, points 7 to
  19, and the four defects of milestone 3 that lie with the setup — defects 1
  and 3 of the first closing run, b and i of the second — built; the auto-merge
  question revised on 16 October 2026 to the case where a gate stands already;
  the merge handover and the branch deletion as shared texts; a changed file and
  commits of their own at a failed fetch asked about and done by the run; 16
  October 2026, version 0.140.0."; the second closing run of milestone 3 read
  `true` back after `-F`, entry "The second closing run of milestone 3, made on
  11 October 2026 in `devloop-test-w` under a record saying yes, set up through
  `--auto`, read off its session log and the project, with the runs of both
  closing runs on the things of the table and the context the two runs used:
  nine defects, two met again, the open question met again; 11 October 2026, the
  version stays 0.135.0.".
- **Of the gate only the one case sentence of the merge handover is said, and
  none of it goes into a file.** What the person needs in each case the handover
  tells them. SP-16 of entry "Where each text devloop owes the person stays,
  goes into a pull request, an issue or a file, or drops, built after the
  decisions of the person of 17 October 2026: the introduction of `start-work`,
  the sentences that say why a question comes now in the wording approved that
  day, the last message of the run with nobody there in two groups, and the
  lines of the skills, the inserted texts and two hooks brought in line with the
  output style; 17 October 2026, version 0.143.0."; entry "The merge handover:
  every text a run reads at it held to it, three places made to follow it; and
  the section of `environment.md` on what checks a merge gone, decided by the
  person on 18 October 2026; defect 4 of the entry of 16 October 2026 on the
  runs of that day and the finding of the same entry on that section with it; 18
  October 2026, version 0.146.0.".
### Step 5 — The task runner and its fixed targets

- **The hook on permission prompts holds the mark's third line against the
  prompt's session.** A mark a broken-off session left standing touches no later
  session with a person in it. Entry "The behaviour with nobody there: a
  refusal, a command that does not finish inside its call, an install that does
  not go through, the two halts of `setup-checks`, a hook for permission
  prompts, and start condition 4 off the permission mode; 9 October 2026,
  version 0.133.0.".
### Step 6 — The five files under `docs/agents/`

- **The version marker is written at a first setup and at a refresh alike.** A
  project set up without it reads `none` at its next start and is refreshed for
  it. Case: the paragraph stood under "Refreshing an existing setup", whose
  steps a refresh does not run, and no step of a first setup wrote the line,
  entry "A program answers how far the setup of a project has got,
  `bin/devloop-setup-state`, read off the default branch as last fetched and
  never off the working tree; the places that read it off the tree read through
  it, the status line has three states, and the guards keep their directory
  test; 3 October 2026, version 0.125.0."; point 13 of entry "The decisions of
  12 October 2026: milestone 3 has not landed with the two closing runs and no
  run with Go follows; twenty-seven things to build before the next run, on the
  install guard, at the setup and at planning and building; three things decided
  and not built now; the person's wordings, word for word; who changed the check
  targets in the second closing run; 12 October 2026, the version stays
  0.135.0.", built in entry "Part B of the decisions of 12 October 2026 at the
  setup, points 7 to 19, and the four defects of milestone 3 that lie with the
  setup — defects 1 and 3 of the first closing run, b and i of the second —
  built; the auto-merge question revised on 16 October 2026 to the case where a
  gate stands already; the merge handover and the branch deletion as shared
  texts; a changed file and commits of their own at a failed fetch asked about
  and done by the run; 16 October 2026, version 0.140.0.".
### `issue-tracker.md`

- **That seven labels were created, with `needs-human` named as the example, is
  said in one sentence in the message that ends the setup's turn, before the
  merge handover.** Something created that the person did not initiate is said,
  at the end of the turn. Case: the sentence was said in neither run of 16
  October 2026, defect 2 of entry "The two runs of 16 October 2026 in
  `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off
  their session logs and the projects, the bench for defects d and 11 and for
  the install guard of defect c, and where milestone 3 stands after part A of
  the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at
  four places, d and 11 held on the bench and met no run; fifteen new defects,
  nine met again; the milestone has not landed; 16 October 2026, the version
  stays 0.141.0."; entry "Where each text devloop owes the person stays, goes
  into a pull request, an issue or a file, or drops, built after the decisions
  of the person of 17 October 2026: the introduction of `start-work`, the
  sentences that say why a question comes now in the wording approved that day,
  the last message of the run with nobody there in two groups, and the lines of
  the skills, the inserted texts and two hooks brought in line with the output
  style; 17 October 2026, version 0.143.0.". Approved wording, point 9 of entry
  "The decisions of 12 October 2026: milestone 3 has not landed with the two
  closing runs and no run with Go follows; twenty-seven things to build before
  the next run, on the install guard, at the setup and at planning and building;
  three things decided and not built now; the person's wordings, word for word;
  who changed the check targets in the second closing run; 12 October 2026, the
  version stays 0.135.0.": „Im Tracker habe ich sieben Labels angelegt, mit
  denen der Stand der Arbeit markiert wird, zum Beispiel `needs-human`, wenn du
  entscheiden musst."
- **The issue of a conflicted bring-back carries no `raised-here` and is not
  from outside.** It is labelled `needs-human` alone so that no build takes it
  up as work. Found by the audit of 18 October 2026, entry "The consistency
  audit of 18 October 2026 before the handover, read against the eleven entries
  since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three
  disagreements, nineteen mended — nine in the documents, three dated entries'
  line numbers corrected in place and seven said right here — three rows of the
  table brought to the tool's rule and eleven recorded; the two points of the
  order answered; 18 October 2026, the version stays 0.147.0."; N6 of entry "The
  catch-up of 19 October 2026 after the consistency audit of 18 October 2026:
  the eleven findings its entry records as they are, built — a stop at `no
  required check:` with nobody there, the two cases past the gate named, a read
  before every pop and drop of a change set aside, the mark at the three fetch
  stops of `build-work`, the failed attempts of an install, the issue of a
  conflicted bring-back no longer read as from outside, two comments, the header
  of a question a name of at most twelve characters by the person's decision of
  that day, a should a later decision changes, and what the comparison before
  the first change shows; 19 October 2026, version 0.148.0.".
- **What the in-flight query's fields return and what each is read for, written
  into the project's `docs/agents/issue-tracker.md`.** Measured on 31 August
  2026: GitHub's live GraphQL schema has `Issue` and `PullRequest` as different
  types, while the REST endpoint mixed them, six of ten open entries on
  `cli/cli` carrying a `pull_request` key; `cli/cli` had 64 open pull requests,
  25 of them `isDraft: true`; `viewerDidAuthor` read true on an own pull request
  and false on one from `cli/cli`; `cli/cli` 10783 and 11388 returned no closing
  references, 11388's title carrying a bare "#326"; the tasks under spec 2 of
  `devloop-test-l` returned pull requests 7, 11 and 13, all `MERGED`; entry "The
  stock-take could not see a pull request at all, and that was measured on 31
  August 2026.".
### `environment.md`

- **`environment.md` carries no section on what checks a merge, and who.** No
  part of devloop read it, and a protection written down goes stale at its next
  change; every place that needs it reads it off the platform. Case: the section
  was written from 22 August 2026 from question 2 of step 4; decided by the
  person on 18 October 2026, entry "The merge handover: every text a run reads
  at it held to it, three places made to follow it; and the section of
  `environment.md` on what checks a merge gone, decided by the person on 18
  October 2026; defect 4 of the entry of 16 October 2026 on the runs of that day
  and the finding of the same entry on that section with it; 18 October 2026,
  version 0.146.0.".
### Step 8 — Land the setup on the main branch

- **Once the merge is proven, fetch, fast-forward and switch before anything
  follows.** The install guard reads the record off the main branch as last
  fetched. Case: on 28 September 2026 a yes landed and not yet fetched blocked,
  then passed after the fetch, entry "The check classes get one owner:
  `setup-project` fills none and calls `setup-checks` in every project with
  code, the nine canonical target names stand in `shared/canonical-targets.md`,
  the answer "none" leaves `setup-checks` step 2, the step after a merge brings
  a project set up without code to the whole check setup, and `start-work` sends
  a set-up project with no class filled there first; 1 October 2026, version
  0.122.0.".
- **`allow_auto_merge` answers only whether auto-merge is switched off, and that
  is the refusal case only where a gate stands.** It reads true with a required
  check and without one alike. Measured on 30 August 2026, entry "Not everything
  is exercised yet."; defect 4 of entry "The two runs of 16 October 2026 in
  `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off
  their session logs and the projects, the bench for defects d and 11 and for
  the install guard of defect c, and where milestone 3 stands after part A of
  the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at
  four places, d and 11 held on the bench and met no run; fifteen new defects,
  nine met again; the milestone has not landed; 16 October 2026, the version
  stays 0.141.0.", built in entry "The merge handover: every text a run reads at
  it held to it, three places made to follow it; and the section of
  `environment.md` on what checks a merge gone, decided by the person on 18
  October 2026; defect 4 of the entry of 16 October 2026 on the runs of that day
  and the finding of the same entry on that section with it; 18 October 2026,
  version 0.146.0.".
- **The program arms in the pass that reads `BLOCKED`.** A reading in one call
  and the arming in the next leave room for the state to move. Case: on 16
  October 2026 the state was read in one call and armed in the next, and GitHub
  refused it as past its gate, defect 5 of entry "The two runs of 16 October
  2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0,
  read off their session logs and the projects, the bench for defects d and 11
  and for the install guard of defect c, and where milestone 3 stands after part
  A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not
  hold at four places, d and 11 held on the bench and met no run; fifteen new
  defects, nine met again; the milestone has not landed; 16 October 2026, the
  version stays 0.141.0."; built in entry "Arming past the gate, built after the
  decisions of the person of 17 October 2026: the reading of a pull request's
  state and the arming in one call, by a program of the plugin, and with nobody
  there one restart of the runs that carry a required check where that check was
  through before GitHub could accept the arming; defect 5 of the entry of 16
  October 2026 on the runs of that day with it; 17 October 2026, version
  0.144.0.".
- **The head commit's `statusCheckRollup` tells a check not yet started from one
  completed; `UNKNOWN` is read once more and `BEHIND` answered by a rebase.**
  `StatusCheckRollupContext` is a union of `CheckRun` and `StatusContext` in
  GitHub's live GraphQL schema, read 31 August 2026; measured on 30 August 2026
  on a pull request seven days old, `UNKNOWN` first and `BEHIND` on the second
  reading; entry "Not everything is exercised yet.".
- **With a gate and auto-merge off, `past its gate:` is the first case too; the
  gate is read off the program's `gate:` lines or asked here, not off step 4's
  reading.** Step 4's reading can be a turn old. Second addendum of entry "The
  merge handover: every text a run reads at it held to it, three places made to
  follow it; and the section of `environment.md` on what checks a merge gone,
  decided by the person on 18 October 2026; defect 4 of the entry of 16 October
  2026 on the runs of that day and the finding of the same entry on that section
  with it; 18 October 2026, version 0.146.0.".

## `skills/setup-checks/SKILL.md`

### Build out the check suite

- **A check class whose tool the run may not install goes from a build to this
  skill, on the build's branch.** The decision on the class is put to the person
  as a question at once, instead of a command handed over and a decline taken.
  Case: on 19 October 2026 the run in `devloop-test-z` handed `brew install
  gitleaks` over, left `secrets` `empty` across a merge and named the mode's
  loss in a subordinate clause, defect 4 of entry "The two runs of 19 October
  2026 in `devloop-test-z` and `devloop-test-y` under the installed 0.148.0,
  read off their session logs and the projects, and where milestone 3 stands
  under the criterion the person decided that day, in place of the one of 12
  October 2026: every defect that concerns the milestone listed in three groups,
  and the milestone not reached; defects 1, 3, b, c and i held, defect a held at
  every place under one reading and not under another, 13 held but for one
  point, 14 held at one place and not at the other, 5 and 9 of the entry of 16
  October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15
  October 2026 on the loose issues met again; of the six rows of the check table
  of `devloop-test-y` four went as their case says and two were decided without
  the question; nineteen new defects, three of them the person's wordings of
  that day, one with a should the person has still to decide; 19 October 2026,
  the version stays 0.148.0."; decision (c) of entry "Conditions 6 and 7 at the
  mark, the rule asked after a refusal, titles.".
### A guard's block is not a decline

- **With nobody there every way an install does not go through ends as a guard's
  block does, the class `skipped (state)`; a refusal of auto mode on a counted
  way leaves an issue beside the cell for every class.** Nobody can be asked;
  the issue brings the question on the rule for the classifier to the next start
  with `--auto`. Decision 4 of entry "The open findings on the install guard,
  eight, measured on this machine; four questions never examined; the decisions
  for the next orders of milestone 3 and the texts the person approved, word for
  word; three corrections; 9 October 2026, version 0.132.0."; (b) of entry
  "Conditions 6 and 7 at the mark, the rule asked after a refusal, titles.".
- **With nobody there, a `secrets` check that cannot be set up ends the task and
  not the run.** In doubt a run with nobody there is not to be blocked: security
  matters, but not endangering the production run matters a little more, the
  person's principle in decision 14 of entry "The open findings on the install
  guard, eight, measured on this machine; four questions never examined; the
  decisions for the next orders of milestone 3 and the texts the person
  approved, word for word; three corrections; 9 October 2026, version 0.132.0.";
  decision 5 there. Approved wording, text 1 of that entry, its first sentences:
  „Die Prüfung, ob versehentlich Zugangsdaten committet wurden, lässt sich ohne
  dich nicht einrichten. <in einfachen Worten, was im Weg ist> Diese Prüfung
  schalte ich nie von mir aus ab, deshalb schreibe ich ein Issue mit dem Grund
  und mache mit den anderen Aufgaben weiter.“, with the example „Das Werkzeug
  `<Name>` bräuchte Java, und eine Laufzeitumgebung installiere ich nie
  selbst.“; its end under form A, (8) of entry "Handovers say where the command
  is typed, sign-in and identity in steps.": „So installierst du das Werkzeug
  selbst, hier in Claude Code:“ — „1. `! brew install gitleaks`“ — „2.
  `/devloop:start-work`“ — „Dann schließe ich das Issue, richte die Prüfung ein
  und mache mit der Aufgabe weiter. Der Befehl steht auch im Issue.“; under form
  B, (2) of the decisions after the push in that entry: „So installierst du das
  Werkzeug selbst:“ — „1. Öffne ein zweites Terminalfenster, nicht das, in dem
  Claude Code läuft, denn der Befehl fragt nach deinem Passwort.“ — „2. Gib dort
  ein: `sudo apt install gitleaks`“ — „3. Gib hier in Claude Code
  `/devloop:start-work` ein.“ — „Dann schließe ich das Issue, richte die Prüfung
  ein und mache mit der Aufgabe weiter. Der Befehl steht auch im Issue.“ In
  doubt whether the command asks, „kann etwas von dir abfragen, etwa dein
  Passwort“ stands in place of „fragt nach deinem Passwort“, decided by the
  person on 1 November 2026, entry "The loaded texts lose their history, reasons
  move to docs/rationale.md." See docs/skill-conventions.md under "Every skill
  carries these two", the paragraph "Where the person types a command devloop
  hands them while Claude Code runs", form A, and the paragraph "Where a text to
  the person says they have to do something at the computer, it says how, step
  by step".
### With nobody there

- **A refusal of anything else here ends the task, the safety check of Claude
  Code among the refusals; "Ask anyway where filling it changes their project"
  never meets nobody to ask.** A refusal is answered and not got around; a state
  is read before the task's release on its branch, and the two records have
  answered what a fill may add, where a reading after a merge had run with
  nobody there as well. The safety check: defect 12 of entry "The two runs of 16
  October 2026 in `devloop-test-x` and `devloop-test-y` under the installed
  0.141.0, read off their session logs and the projects, the bench for defects d
  and 11 and for the install guard of defect c, and where milestone 3 stands
  after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a
  did not hold at four places, d and 11 held on the bench and met no run;
  fifteen new defects, nine met again; the milestone has not landed; 16 October
  2026, the version stays 0.141.0.", built in entry "Where step 8 of
  `setup-checks` puts the tool of a class off for an install not run, and the
  refusal of a safety check built into Claude Code among the refusals devloop
  names, a refusal a subagent names in its report the main run's own; defects 9
  and 12 of the entry of 16 October 2026 on the runs of that day; 18 October
  2026, version 0.147.0."; the reading after a merge: entry "The status of a
  check class takes four forms and a guard holds the table to them, the
  unattended mode starts on two permissions more and is set up in `setup-checks`
  step 8 or through `--auto`, a state is read before a task is released, and a
  review finding about the table goes a third way; 5 October 2026, version
  0.129.0.".
### Step 1 — Read the current state

- **A row in none of the four status forms is decided again, its old text read
  as a hint, and a row whose text does not say whose decision it was is put to
  the person.** One shape, `skipped: <reason>`, for both kinds of skip let a run
  rewrite a reason and take away what the later reading looked for. Case: in the
  runs of 3 and 4 October 2026 a run in `devloop-test-u` rewrote the
  `dependencies` reason from a state with its expiry to a permanent one naming
  an issue, defect 11 of entry "The two runs of milestone 3 on 3 and 4 October
  2026 under 0.126.0, both with the person there: the record saying yes in
  `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read
  against a landed record under both answers, the install with nobody there not
  reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.";
  the four forms in entry "The status of a check class takes four forms and a
  guard holds the table to them, the unattended mode starts on two permissions
  more and is set up in `setup-checks` step 8 or through `--auto`, a state is
  read before a task is released, and a review finding about the table goes a
  third way; 5 October 2026, version 0.129.0.". Approved wording, same entry:
  header "Prüfung"; question "Die Prüfung <Prüfung in Worten> ist abgeschaltet.
  In der Tabelle steht als Grund: ‚<alter Text>'. Hast du das so entschieden?",
  as in "Die Prüfung, ob mehrere Teile richtig zusammenarbeiten, ist
  abgeschaltet. In der Tabelle steht als Grund: ‚not needed for now'. Hast du
  das so entschieden?"; first answer, label "Ja, meine Entscheidung", line "Sie
  bleibt aus, bis du es änderst."; second answer, label "Nein, nicht von mir",
  line "Dann richte ich sie ein, außer es gibt in diesem Projekt nichts für sie
  zu prüfen."
### Step 2 — Propose, in plain words

- **The choice of the classes is put as text, with the proposal before it in the
  same message; called whole for classes still `empty`, the message opens with
  why it comes now.** A text a decision needs that does not fit the widget is
  not cut to fit, and why a question comes now stands where it is put. Decisions
  (3) and (5) of entry "Where the text devloop owes the person stands, decided
  by the person on 17 October 2026, and every question put to it: what a
  decision needs in the question, everything else in the message that ends the
  turn, nothing between two tool calls; the mode question of `setup-checks` step
  8 in the wording approved that day, in its fields and with nothing before it;
  17 October 2026, version 0.142.0.". Approved wordings: at a start, entry "The
  status of a check class takes four forms and a guard holds the table to them,
  the unattended mode starts on two permissions more and is set up in
  `setup-checks` step 8 or through `--auto`, a state is read before a task is
  released, and a review finding about the table goes a third way; 5 October
  2026, version 0.129.0.": „Das Projekt ist eingerichtet, aber noch nicht alle
  Prüfungen sind entschieden. Das kommt zuerst.“; after a merge, entry "Where
  each text devloop owes the person stays, goes into a pull request, an issue or
  a file, or drops, built after the decisions of the person of 17 October 2026:
  the introduction of `start-work`, the sentences that say why a question comes
  now in the wording approved that day, the last message of the run with nobody
  there in two groups, and the lines of the skills, the inserted texts and two
  hooks brought in line with the output style; 17 October 2026, version
  0.143.0.": „Die Arbeit ist gemergt, aber noch nicht alle Prüfungen sind
  entschieden. Das kommt zuerst.“ That the caller says nothing before calling is
  the callers' rule, under `skills/start-work/SKILL.md` and
  `skills/build-work/SKILL.md`.
- **A row left `empty` is asked about again at the start of a session; a
  `skipped (user)` row is read before a task's release and never after a
  merge.** The start catches a session that ended after a merge before the table
  was read; a reading after a merge ran with nobody there and reached a step
  that presupposes a person. Entry "The status of a check class takes four forms
  and a guard holds the table to them, the unattended mode starts on two
  permissions more and is set up in `setup-checks` step 8 or through `--auto`, a
  state is read before a task is released, and a review finding about the table
  goes a third way; 5 October 2026, version 0.129.0.".
- **What costs the person nothing stands in the pull request of step 7, beside
  the red proof, and is not said.** It is none of what a text in the
  conversation is for. SC-8 of entry "Where each text devloop owes the person
  stays, goes into a pull request, an issue or a file, or drops, built after the
  decisions of the person of 17 October 2026: the introduction of `start-work`,
  the sentences that say why a question comes now in the wording approved that
  day, the last message of the run with nobody there in two groups, and the
  lines of the skills, the inserted texts and two hooks brought in line with the
  output style; 17 October 2026, version 0.143.0.".
### Step 3 — Prefer tools that live inside the project

- **The check commands are not named to the person as something to grant.** At
  the moment they read it they could decide nothing, and later it was forgotten;
  the decision falls in Claude Code's own prompt, and in auto mode no prompt
  comes. Point 8 of entry "The decisions of 12 October 2026: milestone 3 has not
  landed with the two closing runs and no run with Go follows; twenty-seven
  things to build before the next run, on the install guard, at the setup and at
  planning and building; three things decided and not built now; the person's
  wordings, word for word; who changed the check targets in the second closing
  run; 12 October 2026, the version stays 0.135.0.", built in entry "Part B of
  the decisions of 12 October 2026 at the setup, points 7 to 19, and the four
  defects of milestone 3 that lie with the setup — defects 1 and 3 of the first
  closing run, b and i of the second — built; the auto-merge question revised on
  16 October 2026 to the case where a gate stands already; the merge handover
  and the branch deletion as shared texts; a changed file and commits of their
  own at a failed fetch asked about and done by the run; 16 October 2026,
  version 0.140.0.".
- **After a no to a tool in the packages, the command handed over installs it
  outside the project, and a tool with no way outside gets no command; where a
  widget question follows, the command waits for the next message that ends a
  turn with text.** A no to a tool in the packages is not a request for the same
  line by their hand. Case: the first closing run of milestone 3 handed over
  `npm install --save-dev` for Prettier, ESLint and `@types/node` after the
  person declined them, and its no for `@types/node` promised a command, defect
  3 of entry "The first closing run of milestone 3, made on 11 October 2026 in
  `devloop-test-w` under a record saying no, read off its session log and the
  project, with the decisions of that day on the arrangement of the closing
  runs: eleven defects, four met again, one open question; 11 October 2026, the
  version stays 0.135.0.". See docs/skill-conventions.md under "Every skill
  carries these two", the paragraph "A command handed over runs as it stands,
  from wherever the person is".
- **The run installs nothing that brings a compiler, a runtime or system
  packages along, under any answer.** A runtime and system packages stay the
  user's under every answer. Case: `brew install pmd` brings `openjdk`, read off
  `formulae.brew.sh/api/formula/pmd.json` on 5 October 2026, entry "The status
  of a check class takes four forms and a guard holds the table to them, the
  unattended mode starts on two permissions more and is set up in `setup-checks`
  step 8 or through `--auto`, a state is read before a task is released, and a
  review finding about the table goes a third way; 5 October 2026, version
  0.129.0."; system packages joined the list in point 15 of entry "The decisions
  of 12 October 2026: milestone 3 has not landed with the two closing runs and
  no run with Go follows; twenty-seven things to build before the next run, on
  the install guard, at the setup and at planning and building; three things
  decided and not built now; the person's wordings, word for word; who changed
  the check targets in the second closing run; 12 October 2026, the version
  stays 0.135.0.".
- **The questions on the dependency file and on a single tool under its no.** A
  line in their dependency file is theirs to allow. Approved wordings, entry
  "The status of a check class takes four forms and a guard holds the table to
  them, the unattended mode starts on two permissions more and is set up in
  `setup-checks` step 8 or through `--auto`, a state is read before a task is
  released, and a review finding about the table goes a third way; 5 October
  2026, version 0.129.0.": the dependency file, header "Pakete"; question "Darf
  ich künftig Prüfwerkzeuge selbst zu den Paketen dieses Projekts hinzufügen?";
  first answer, label "Ja, selbst hinzufügen", line "Ich füge solche Werkzeuge
  ab jetzt selbst hinzu und frage nicht noch einmal."; second answer, label
  "Nein", line the first time "Ich füge nichts selbst hinzu und frage dich jedes
  Mal.", in step 8 "Ich füge nichts selbst hinzu. Der Lauf ohne dich geht dann
  nicht, jede Arbeit läuft mit dir."; a single tool, header "Pakete"; question
  "Darf ich `<Werkzeug>` für die Prüfung <Prüfung in Worten> zu den Paketen des
  Projekts hinzufügen?"; first answer, label "Ja, hinzufügen", line "Ich füge es
  hinzu und richte die Prüfung damit ein."; second answer, label "Nein", with
  one of three lines: "Dann installiere ich es außerhalb des Projekts auf diesem
  Rechner.", "Dann bekommst du den Befehl, um es außerhalb des Projekts selbst
  zu installieren.", "Dann bleibt diese Prüfung aus."; with three answers: "Ja,
  hinzufügen"; "Nein, stattdessen <anderes Werkzeug>" with one of "Ich
  installiere `<anderes Werkzeug>` außerhalb des Projekts auf diesem Rechner und
  richte die Prüfung damit ein.", "Du bekommst den Befehl, um `<anderes
  Werkzeug>` außerhalb des Projekts selbst zu installieren.", "Dann frage ich
  dich, ob ich `<anderes Werkzeug>` zu den Paketen des Projekts hinzufügen
  darf."; and "Nein, Prüfung aus" with "Dann bleibt diese Prüfung aus."
- **A browser for tests counts as a tool outside the repository; a branded
  browser at the system's own location, and system packages, stay the user's
  under every answer.** The branded browser goes over the one already there, and
  system packages need root. Entry "The install guard reads the commands that
  fetch a tool and run it without saying install, and the browser downloads for
  tests, which it holds against the vendor's default place for the system it
  runs on; the drivers half of milestone 3 built, defect 8 of 4 October 2026
  answered otherwise, one finding; 8 October 2026, version 0.131.0.".
- **With the person there, a missing tool under a no is decided at once as a
  question — install it themselves, or the check off — before the offer of the
  mode and never left open across a handover or a merge; no check goes off but
  on their choice.** A user overreads the mode's loss said in a subordinate
  clause, and a tool not found is no choice of theirs. Case: defect 4 of entry
  "The two runs of 19 October 2026 in `devloop-test-z` and `devloop-test-y`
  under the installed 0.148.0, read off their session logs and the projects, and
  where milestone 3 stands under the criterion the person decided that day, in
  place of the one of 12 October 2026: every defect that concerns the milestone
  listed in three groups, and the milestone not reached; defects 1, 3, b, c and
  i held, defect a held at every place under one reading and not under another,
  13 held but for one point, 14 held at one place and not at the other, 5 and 9
  of the entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no
  run, the defect of 15 October 2026 on the loose issues met again; of the six
  rows of the check table of `devloop-test-y` four went as their case says and
  two were decided without the question; nineteen new defects, three of them the
  person's wordings of that day, one with a should the person has still to
  decide; 19 October 2026, the version stays 0.148.0."; decided in entry
  "Milestone 3, part 4, built as the person decided on 20 and 21 October 2026: a
  hook on `PostToolUse` writes what an install the record let through did into
  `docs/agents/environment.md` under `## Installed outside the project`, the
  command as its words ran and the folder it installed into, from the facts the
  install guard leaves at its pass under a yes, so that the guard's reading is
  the one reading; the two hooks that run the check chain read a tool not found
  on its search path through one program and say that the check did not run,
  which tool is missing and that what closes it belongs in the repository; the
  guard's cause for a yes without a place says no place; the causes of
  `bin/devloop-setup-state` are whole clauses and the session-start line joins
  them behind "because"; `setup-checks` step 3 puts the decision on a class
  whose tool is missing under a no as a question at once, install it themselves
  or the check off, before the offer of the mode; four defects built, one found
  and one question halted; 21 October 2026, version 0.155.0.". Approved wording,
  same entry: "Für die Prüfung auf versehentlich eingecheckte Zugangsdaten fehlt
  gitleaks, und außerhalb des Projekts darf ich nichts installieren. Du kannst
  es selbst installieren: `brew install gitleaks`. Wie soll es weitergehen?"
  with the answers "Selbst installieren" and "Prüfung abschalten".
- **After "they install it themselves" the command is handed over in the form
  for where it is typed, and both lines of the tool state are read.** The folder
  alone does not show whether the chain can call the tool: `go install` puts a
  tool into `~/go/bin`, which often stands on no search path. Approved wordings,
  entry "Handovers say where the command is typed, sign-in and identity in
  steps.": form A, (7): „Gib den Befehl hier in Claude Code ein, mit `!` davor:“
  — „`! brew install gitleaks`“ — „Sobald er durchgelaufen ist, prüfe ich, dass
  `gitleaks` da ist, und richte die Prüfung ein.“; form B, (1) after the push:
  „Der Befehl fragt nach deinem Passwort, darum gib ihn in einem zweiten
  Terminalfenster ein, nicht in dem, in dem Claude Code läuft:“ — „`sudo apt
  install gitleaks`“ — „Sag mir hier Bescheid, sobald er durchgelaufen ist. Dann
  prüfe ich, dass `gitleaks` da ist, und richte die Prüfung ein.“; the folder
  off the search path, (10): „Der Befehl hat `gitleaks` nach `~/go/bin`
  installiert, aber dieser Ordner steht nicht in deinem `PATH`, darum findet die
  Prüfung `gitleaks` nicht. So nimmst du ihn auf:“, the five steps as under
  `shared/install-tool.md`, then „Dann finde ich `gitleaks` und richte die
  Prüfung ein.“ In doubt whether the command asks, „kann etwas von dir abfragen,
  etwa dein Passwort“ stands in place of „fragt nach deinem Passwort“, decided
  by the person on 1 November 2026, entry "The loaded texts lose their history,
  reasons move to docs/rationale.md." See docs/skill-conventions.md under "Every
  skill carries these two", the paragraph "A command handed over runs as it
  stands, from wherever the person is". See docs/skill-conventions.md under
  "Every skill carries these two", the paragraph "Where the person types a
  command devloop hands them while Claude Code runs".
### Step 4 — Put each class in place: its tool, its target, its findings in stages

- **The hook writes the install line from the guard's reading, without the
  call's redirections, and the run writes no second line; where the install did
  not stand alone, the run writes it through `devloop-install-note` after
  reading the folder.** There is one reading, the guard's. Cases: on 19 October
  2026 the run in `devloop-test-z` installed gitleaks and wrote no line into
  `environment.md`, defect 6 of entry "The two runs of 19 October 2026 in
  `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off
  their session logs and the projects, and where milestone 3 stands under the
  criterion the person decided that day, in place of the one of 12 October 2026:
  every defect that concerns the milestone listed in three groups, and the
  milestone not reached; defects 1, 3, b, c and i held, defect a held at every
  place under one reading and not under another, 13 held but for one point, 14
  held at one place and not at the other, 5 and 9 of the entry of 16 October
  2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October
  2026 on the loose issues met again; of the six rows of the check table of
  `devloop-test-y` four went as their case says and two were decided without the
  question; nineteen new defects, three of them the person's wordings of that
  day, one with a should the person has still to decide; 19 October 2026, the
  version stays 0.148.0.", decided as (c) of entry "Milestone 3, part 4, built
  as the person decided on 20 and 21 October 2026: a hook on `PostToolUse`
  writes what an install the record let through did into
  `docs/agents/environment.md` under `## Installed outside the project`, the
  command as its words ran and the folder it installed into, from the facts the
  install guard leaves at its pass under a yes, so that the guard's reading is
  the one reading; the two hooks that run the check chain read a tool not found
  on its search path through one program and say that the check did not run,
  which tool is missing and that what closes it belongs in the repository; the
  guard's cause for a yes without a place says no place; the causes of
  `bin/devloop-setup-state` are whole clauses and the session-start line joins
  them behind "because"; `setup-checks` step 3 puts the decision on a class
  whose tool is missing under a no as a question at once, install it themselves
  or the check off, before the offer of the mode; four defects built, one found
  and one question halted; 21 October 2026, version 0.155.0."; in runs 2a and 4
  of 23 October 2026 the hook's line read "`brew install gitleaks 2>& 1`
  installed into /opt/homebrew/bin", defect 1 of entry "Six closing runs read
  off their logs, each on the defects it met.", built in entry "Install lines by
  one program, written where the install stood alone.".
- **A tool the person installed themselves gets its line from this step, through
  `devloop-install-note put`.** The hook does not see a command the person
  typed, and one program holds the form of the line. Case: in run 1 of 23
  October 2026 no line was written for the WebKit download the person ran, and
  the line for `htmlq` carried a remark beyond the hook's form, defect 4 of
  entry "Six closing runs read off their logs, each on the defects it met."; (b)
  of entry "Milestone 3, part 4, built as the person decided on 20 and 21
  October 2026: a hook on `PostToolUse` writes what an install the record let
  through did into `docs/agents/environment.md` under `## Installed outside the
  project`, the command as its words ran and the folder it installed into, from
  the facts the install guard leaves at its pass under a yes, so that the
  guard's reading is the one reading; the two hooks that run the check chain
  read a tool not found on its search path through one program and say that the
  check did not run, which tool is missing and that what closes it belongs in
  the repository; the guard's cause for a yes without a place says no place; the
  causes of `bin/devloop-setup-state` are whole clauses and the session-start
  line joins them behind "because"; `setup-checks` step 3 puts the decision on a
  class whose tool is missing under a no as a question at once, install it
  themselves or the check off, before the offer of the mode; four defects built,
  one found and one question halted; 21 October 2026, version 0.155.0.", way A;
  (c) of entry "Install lines by one program, written where the install stood
  alone.".
- **With nobody there, a target run that does not finish inside its ten minutes
  ends the task, not the run.** Second addendum of entry "The behaviour with
  nobody there: a refusal, a command that does not finish inside its call, an
  install that does not go through, the two halts of `setup-checks`, a hook for
  permission prompts, and start condition 4 off the permission mode; 9 October
  2026, version 0.133.0.".
### Step 5 — Every target renders a verdict and changes nothing

- **The break of the secrets class stays out of the index, read afterwards with
  `git status --short` and `git ls-files --stage`.** A value that looks like a
  real key, once in the index, is one commit away from the history. Case: on 4
  October 2026 in `devloop-test-v` a `git reset` failed without saying so and
  left the file in the index as intent-to-add, defect 7 of entry "The two runs
  of milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person
  there: the record saying yes in `devloop-test-u`, the record saying no in
  `devloop-test-v`; the guard read against a landed record under both answers,
  the install with nobody there not reached, and fifteen defects read off them;
  4 October 2026, version 0.127.0."; point 16 of entry "The decisions of 12
  October 2026: milestone 3 has not landed with the two closing runs and no run
  with Go follows; twenty-seven things to build before the next run, on the
  install guard, at the setup and at planning and building; three things decided
  and not built now; the person's wordings, word for word; who changed the check
  targets in the second closing run; 12 October 2026, the version stays
  0.135.0.", built in entry "Part B of the decisions of 12 October 2026 at the
  setup, points 7 to 19, and the four defects of milestone 3 that lie with the
  setup — defects 1 and 3 of the first closing run, b and i of the second —
  built; the auto-merge question revised on 16 October 2026 to the case where a
  gate stands already; the merge handover and the branch deletion as shared
  texts; a changed file and commits of their own at a failed fetch asked about
  and done by the run; 16 October 2026, version 0.140.0.".
### Step 6 — Record it

- **"What these checks do not cover" is rewritten from the table just written,
  not added to.** Lines from an earlier pass describe an earlier table. Case: a
  repository that had no code still said so after four classes had been filled,
  `206a501`, "Hold one voice, and say where this ends up (#86)".
### Step 7 — Land the check suite on the main branch

- **The check suite lands on the main branch before anything else happens.**
  Everything after it reads `checks.md` from the main branch, the next task cuts
  its branch from there, and a suite left unmerged would rest on a run
  improvising the merge on its own. Case: before the step existed, runs
  improvised the merge, and the offer of the unattended mode wanted the workflow
  file green on the main branch while the targets it would run stood on the
  unmerged branch, `8f2f09f`, "Land the check suite before offering the
  unattended mode (#77)".
- **The arming program reads the state and arms in one call, in the pass that
  reads `BLOCKED`; a required check not yet started is read off the rollup;
  `UNKNOWN` is read once more and `BEHIND` answered by a rebase.** The state
  moves within seconds of a push, and a reading in one call with the arming in
  the next leaves room for it to move. Case: on 16 October 2026 in project 1 the
  state was read in one call and armed in the next, 25 seconds later, and GitHub
  refused it as past its gate, defect 5 of entry "The two runs of 16 October
  2026 in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0,
  read off their session logs and the projects, the bench for defects d and 11
  and for the install guard of defect c, and where milestone 3 stands after part
  A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not
  hold at four places, d and 11 held on the bench and met no run; fifteen new
  defects, nine met again; the milestone has not landed; 16 October 2026, the
  version stays 0.141.0."; built in entry "Arming past the gate, built after the
  decisions of the person of 17 October 2026: the reading of a pull request's
  state and the arming in one call, by a program of the plugin, and with nobody
  there one restart of the runs that carry a required check where that check was
  through before GitHub could accept the arming; defect 5 of the entry of 16
  October 2026 on the runs of that day with it; 17 October 2026, version
  0.144.0.". GitHub's live GraphQL schema, read 31 August 2026, and the pull
  request seven days old measured on 30 August 2026, `UNKNOWN` first and
  `BEHIND` on the second reading, entry "Not everything is exercised yet.".
- **`allow_auto_merge` cannot tell "no gate" from "past the gate"; without a
  gate the case is the second whatever the field reads; with a gate and
  auto-merge off, `past its gate:` is the first case; where the program printed
  no `gate:` line, the run asks both queries.** The field reads true with a
  required check and without one alike, measured on 30 August 2026, entry "Not
  everything is exercised yet."; at a first setup it reads false, since the
  setup asks about auto-merge only where a gate stands, entry "Part B of the
  decisions of 12 October 2026 at the setup, points 7 to 19, and the four
  defects of milestone 3 that lie with the setup — defects 1 and 3 of the first
  closing run, b and i of the second — built; the auto-merge question revised on
  16 October 2026 to the case where a gate stands already; the merge handover
  and the branch deletion as shared texts; a changed file and commits of their
  own at a failed fetch asked about and done by the run; 16 October 2026,
  version 0.140.0."; defect 4 of entry "The two runs of 16 October 2026 in
  `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off
  their session logs and the projects, the bench for defects d and 11 and for
  the install guard of defect c, and where milestone 3 stands after part A of
  the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at
  four places, d and 11 held on the bench and met no run; fifteen new defects,
  nine met again; the milestone has not landed; 16 October 2026, the version
  stays 0.141.0."; built in entry "The merge handover: every text a run reads at
  it held to it, three places made to follow it; and the section of
  `environment.md` on what checks a merge gone, decided by the person on 18
  October 2026; defect 4 of the entry of 16 October 2026 on the runs of that day
  and the finding of the same entry on that section with it; 18 October 2026,
  version 0.146.0." and its second addendum.
- **Step 8 follows the proven merge of step 7, whatever the handover said.**
  Case: on 11 October 2026 the first closing run of milestone 3 went from the
  proven merge of step 7 to planning, its handover having said before the merge
  that the mode stays off and that `--auto` sets it up later, defect 1 of entry
  "The first closing run of milestone 3, made on 11 October 2026 in
  `devloop-test-w` under a record saying no, read off its session log and the
  project, with the decisions of that day on the arrangement of the closing
  runs: eleven defects, four met again, one open question; 11 October 2026, the
  version stays 0.135.0.".
### Step 8 — Offer the unattended mode

- **Protection the account can step over counts as missing and is not mentioned;
  the binding is read as start condition 2 of `build-work` and
  `bin/devloop-start-conditions` read it; a gate that binds does not skip the
  question while a record does not say yes or auto-merge is off.** The yes of
  the question says whether a protection is added; one reading keeps step 8 from
  finding the mode not set up where the program finds condition 2 holding; the
  mode needs all five things. SC-19 of entry "Where each text devloop owes the
  person stays, goes into a pull request, an issue or a file, or drops, built
  after the decisions of the person of 17 October 2026: the introduction of
  `start-work`, the sentences that say why a question comes now in the wording
  approved that day, the last message of the run with nobody there in two
  groups, and the lines of the skills, the inserted texts and two hooks brought
  in line with the output style; 17 October 2026, version 0.143.0."; entry
  "Binding side decides in the setup skills, run-workflow tested on GitHub.";
  the early exit found on 23 September 2026 and built in entry "The status of a
  check class takes four forms and a guard holds the table to them, the
  unattended mode starts on two permissions more and is set up in `setup-checks`
  step 8 or through `--auto`, a state is read before a task is released, and a
  review finding about the table goes a third way; 5 October 2026, version
  0.129.0.".
- **Where GitHub offers no protection, the run says so instead of asking, names
  the two ways out and goes on with them; that is read off the answer of
  `rules/branches/<main branch>`, not off its status alone.** A 403 also comes
  from a GitHub CLI locked out of an organization. Measured on 8 and 9 October
  2026 with gh 2.96.0: `[]` with exit 0 on a private repository of a personal
  account, HTTP 403 "Upgrade to GitHub Pro or make this repository public to
  enable this feature." with exit 1 on a private repository of an organization
  on the plan Free, entry "The open findings on the install guard, eight,
  measured on this machine; four questions never examined; the decisions for the
  next orders of milestone 3 and the texts the person approved, word for word;
  three corrections; 9 October 2026, version 0.132.0.". Approved wording, text 3
  of that entry: „Der Lauf ohne dich geht in diesem Projekt nicht, weil GitHub
  für dieses Repository keinen Schutz des Hauptzweigs anbietet. Du hast zwei
  Möglichkeiten: Du machst das Repository öffentlich, oder es bleibt privat und
  du nimmst <GitHub Pro / GitHub Team>. Mit dir zusammen läuft alles weiter wie
  bisher.“, the plan read off `gh api repos/OWNER/REPO -q .owner.type`.
- **Nothing stands before the call of the mode question; what no field carries
  is not said.** Text before the call can land in a collapsed note. Case: in
  both runs of 16 October 2026 the five parts before the question stood in
  progress updates, and the person saw "· summary", defect 14 of entry "The two
  runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the
  installed 0.141.0, read off their session logs and the projects, the bench for
  defects d and 11 and for the install guard of defect c, and where milestone 3
  stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i
  held, a did not hold at four places, d and 11 held on the bench and met no
  run; fifteen new defects, nine met again; the milestone has not landed; 16
  October 2026, the version stays 0.141.0."; decisions (1) and (2) of entry
  "Where the text devloop owes the person stands, decided by the person on 17
  October 2026, and every question put to it: what a decision needs in the
  question, everything else in the message that ends the turn, nothing between
  two tool calls; the mode question of `setup-checks` step 8 in the wording
  approved that day, in its fields and with nothing before it; 17 October 2026,
  version 0.142.0.".
- **The mode question, field by field, and what it leaves out.** It fits the
  widget: at 80 columns, on macOS with a private repository, the fields fill
  thirteen lines, measured on 27 October 2026 with the approved wording wrapped
  at 76 and 73 characters, entry "Terms untranslated, the start command named
  whole, the design line gone.". The cost line stands only where the repository
  is not public or its visibility could not be read: on a public repository the
  check runs on GitHub's standard machines free of charge, on a private one it
  counts against the account's free minutes, GitHub Docs, "About billing for
  GitHub Actions", read on 17 October 2026; `gh repo view --json visibility`
  measured that day with gh 2.96.0: `PUBLIC` on a public repository and
  `PRIVATE` on a private one, exit 0, and exit 1 with the GraphQL message on a
  name that resolves to no repository. The awake line names the conditions under
  which `caffeinate` keeps a Mac awake, and not what does not suffice, the
  person's statement of 19 October 2026 being that it said what does not suffice
  instead of naming the conditions, entry "The two runs of 19 October 2026 in
  `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off
  their session logs and the projects, and where milestone 3 stands under the
  criterion the person decided that day, in place of the one of 12 October 2026:
  every defect that concerns the milestone listed in three groups, and the
  milestone not reached; defects 1, 3, b, c and i held, defect a held at every
  place under one reading and not under another, 13 held but for one point, 14
  held at one place and not at the other, 5 and 9 of the entry of 16 October
  2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October
  2026 on the loose issues met again; of the six rows of the check table of
  `devloop-test-y` four went as their case says and two were decided without the
  question; nineteen new defects, three of them the person's wordings of that
  day, one with a should the person has still to decide; 19 October 2026, the
  version stays 0.148.0.": `caffeinate(8)` holds an assertion against idle sleep
  for as long as the process runs, and a closed lid is another route into sleep,
  read on 7 September 2026, entry "The unattended mode needs a machine that
  stays awake, and nobody was told, and that was measured on 6 and 7 September
  2026."; on other systems no command is backed yet, see docs/plan.md under "12.
  Every operating system, every surface (build)". The labels carry what a yes
  and a no mean, the person having struck sentences of their own for it, entry
  "Where the text devloop owes the person stands, decided by the person on 17
  October 2026, and every question put to it: what a decision needs in the
  question, everything else in the message that ends the turn, nothing between
  two tool calls; the mode question of `setup-checks` step 8 in the wording
  approved that day, in its fields and with nothing before it; 17 October 2026,
  version 0.142.0."; the run of 19 October 2026 wrote a bare yes and no, defect
  13 of entry "The two runs of 19 October 2026 in `devloop-test-z` and
  `devloop-test-y` under the installed 0.148.0, read off their session logs and
  the projects, and where milestone 3 stands under the criterion the person
  decided that day, in place of the one of 12 October 2026: every defect that
  concerns the milestone listed in three groups, and the milestone not reached;
  defects 1, 3, b, c and i held, defect a held at every place under one reading
  and not under another, 13 held but for one point, 14 held at one place and not
  at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it
  did not, 12 met no run, the defect of 15 October 2026 on the loose issues met
  again; of the six rows of the check table of `devloop-test-y` four went as
  their case says and two were decided without the question; nineteen new
  defects, three of them the person's wordings of that day, one with a should
  the person has still to decide; 19 October 2026, the version stays 0.148.0.".
  Left out, each with its reason in entry "Where the text devloop owes the
  person stands, decided by the person on 17 October 2026, and every question
  put to it: what a decision needs in the question, everything else in the
  message that ends the turn, nothing between two tool calls; the mode question
  of `setup-checks` step 8 in the wording approved that day, in its fields and
  with nothing before it; 17 October 2026, version 0.142.0.": the steps of a
  task, the issue for a task that does not go green, a failed merge ending the
  run, that the run does not start again by itself, that the review costs more
  without them, that the run stands still until they write, how `caffeinate` is
  ended; and, by decision of entry "The open findings on the install guard,
  eight, measured on this machine; four questions never examined; the decisions
  for the next orders of milestone 3 and the texts the person approved, word for
  word; three corrections; 9 October 2026, version 0.132.0." built in entry
  "Step 8 of `setup-checks`: a reading before the question, the question field
  by field, the rule for auto mode after its yes; a guard on the identity of a
  commit; milestone 12 in the plan; the findings of 9 October 2026; 9 October
  2026, version 0.134.0.", that the run takes up its own issues, that there is
  no ceiling on tasks, that the result reads as the diff from the starting
  commit, how the run ends and how a standstill is seen, a word against a yes on
  a first project. Approved wording, text 6 of entry "Where the text devloop
  owes the person stands, decided by the person on 17 October 2026, and every
  question put to it: what a decision needs in the question, everything else in
  the message that ends the turn, nothing between two tool calls; the mode
  question of `setup-checks` step 8 in the wording approved that day, in its
  fields and with nothing before it; 17 October 2026, version 0.142.0.": header
  „Ohne dich“; „Ohne dich baut devloop die geplanten Aufgaben nacheinander;
  GitHub mergt jede, sobald die Prüfungen grün sind. Das Ergebnis siehst du erst
  am Ende.“ — „Die Prüfungen verbrauchen Minuten aus deinem Kontingent auf
  GitHub.“ — „Solange devloop arbeitet, muss der Rechner wach bleiben.“; the
  question line „Darf devloop in diesem Projekt ohne dich arbeiten?“; yes, label
  „Ja, ohne mich erlauben“, description „devloop richtet auf GitHub eine Prüfung
  ein und schützt den Hauptzweig, auch gegen deine eigenen direkten Pushes. Ein
  Lauf arbeitet dann, solange dieses Fenster offen ist.“, the first sentence
  gone where the protection stands and binds; no, label „Nein, alles mit mir“.
  The macOS line, defect 13 of entry "The two runs of 19 October 2026 in
  `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off
  their session logs and the projects, and where milestone 3 stands under the
  criterion the person decided that day, in place of the one of 12 October 2026:
  every defect that concerns the milestone listed in three groups, and the
  milestone not reached; defects 1, 3, b, c and i held, defect a held at every
  place under one reading and not under another, 13 held but for one point, 14
  held at one place and not at the other, 5 and 9 of the entry of 16 October
  2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October
  2026 on the loose issues met again; of the six rows of the check table of
  `devloop-test-y` four went as their case says and two were decided without the
  question; nineteen new defects, three of them the person's wordings of that
  day, one with a should the person has still to decide; 19 October 2026, the
  version stays 0.148.0.": „Auf dem Mac hält ihn `caffeinate` wach, solange es
  in einem eigenen Terminal läuft und der Laptop aufgeklappt bleibt.“ The no's
  description, (5) of entry "Terms untranslated, the start command named whole,
  the design line gone.": „Alles bleibt wie jetzt. Mit `/devloop:start-work
  --auto` kannst du es später einrichten.“
- **devloop enters one rule under `autoMode.allow` in the person's settings,
  naming every way the install guard reads as an install; an earlier wording
  counts as not standing, is replaced in place on a yes and stays on a no.**
  With nobody there a refusal of the classifier goes as a guard's block goes;
  the rule lets the classifier pass the installs the guard already holds to the
  record, and it can stand only in the person's settings. Decision 1 of entry
  "The open findings on the install guard, eight, measured on this machine; four
  questions never examined; the decisions for the next orders of milestone 3 and
  the texts the person approved, word for word; three corrections; 9 October
  2026, version 0.132.0."; the wording replaced in entry "The rule for auto mode
  names the guard's routes; audit defects built.", quoted under
  `shared/install-not-through.md`. Approved wording at the setup, text 4 of
  entry "The open findings on the install guard, eight, measured on this
  machine; four questions never examined; the decisions for the next orders of
  milestone 3 and the texts the person approved, word for word; three
  corrections; 9 October 2026, version 0.132.0.": the question „Darf ich in
  deiner Datei `~/.claude/settings.json` eine Regel eintragen, damit der
  Auto-Modus Installationen in devloop-Projekten nicht von sich aus blockiert?“;
  yes „Ja, eintragen“ with „Ich trage die Regel ein. Sie erlaubt nur
  Installationen in Projekten, die mit devloop eingerichtet sind.“; no „Nein,
  nicht eintragen“ with „Dann kann der Auto-Modus eine Installation ablehnen.
  Ohne dich schreibt der Lauf dann ein Issue mit dem Grund und macht mit der
  nächsten Aufgabe weiter.“ and, entry "Every subagent gets the install record,
  the build reads its tools first.", „Beim nächsten Start mit
  `/devloop:start-work --auto` frage ich dich dann noch einmal.“; the entry
  refused „Ich konnte die Regel nicht eintragen: <Meldung>. Der Lauf ohne dich
  geht trotzdem. Lehnt der Auto-Modus eine Installation ab, schreibt der Lauf
  ein Issue mit dem Grund und macht mit der nächsten Aufgabe weiter.“
- **At a start with `--auto` the question names each refused install with its
  issue's number and nothing else; on the no the issue stays open, nothing is
  stored, and the line says where they type the command themselves.** The
  command before the number says what it is about; whoever changed their mind
  would have to know of a file nothing in devloop shows. Cases: run 3a named the
  issue by its title at both starts, with the task it held, and added a line of
  its own at the second, defect 3 of entry "Six closing runs read off their
  logs, each on the defects it met.", decided as (3) of entry "Install lines by
  one program, written where the install stood alone."; a stored no was built
  and taken out the same day, the three other ways weighed in entry "Conditions
  6 and 7 at the mark, the rule asked after a refusal, titles.". Measured
  against the output style on 28 October 2026, with the yes above: with one
  issue the no line takes six lines and the fields fourteen of fourteen, at the
  bound; with two issues whose commands ask the no line takes seven and the
  fields fifteen, past it, entry "Handovers say where the command is typed,
  sign-in and identity in steps."; two issues in form B whose commands may ask
  pass it as well, the reason in doubt being the longer, entry "Four entries
  held, rationale points completed, two questions answered.". Approved wording,
  entry "Conditions 6 and 7 at the mark, the rule asked after a refusal,
  titles.": „Der Auto-Modus hat in einem Lauf ohne dich `<Befehl>` abgelehnt
  (Issue #<Nummer>). Darf ich in deiner Datei `~/.claude/settings.json` eine
  Regel eintragen, damit der Auto-Modus Installationen in devloop-Projekten
  nicht von sich aus blockiert?“; yes „Ja, eintragen“ with, where the issue
  holds a task, „Ich trage die Regel ein, schließe das Issue und nehme die
  Aufgabe wieder auf. Die Regel erlaubt nur Installationen in Projekten, die mit
  devloop eingerichtet sind.“, for a check class „Ich trage die Regel ein,
  schließe das Issue und richte die Prüfung wieder ein. Die Regel erlaubt nur
  Installationen in Projekten, die mit devloop eingerichtet sind.“, for both
  „Ich trage die Regel ein, schließe die Issues, nehme die Aufgabe wieder auf
  und richte die Prüfung wieder ein. Die Regel erlaubt nur Installationen in
  Projekten, die mit devloop eingerichtet sind.“; no „Nein, nicht eintragen“
  with, (9) of entry "Handovers say where the command is typed, sign-in and
  identity in steps.", „Dann bleibt das Issue offen. Gibst du hier selbst
  `! brew install yq` ein und danach `/devloop:start-work`, schließe ich das
  Issue und nehme die Aufgabe wieder auf. Bis dahin frage ich bei jedem Start
  mit `/devloop:start-work --auto` wieder.“, and where the command asks, (3)
  after the push there: „Dann bleibt das Issue offen. Der Befehl
  `sudo apt install yq` fragt nach deinem Passwort, darum gib ihn in einem
  zweiten Terminalfenster ein, nicht in dem, in dem Claude Code läuft. Gibst du
  danach hier `/devloop:start-work` ein, schließe ich das Issue und nehme die
  Aufgabe wieder auf. Bis dahin frage ich bei jedem Start mit
  `/devloop:start-work --auto` wieder.“ In doubt whether the command asks, „kann
  etwas von dir abfragen, etwa dein Passwort“ stands in place of „fragt nach
  deinem Passwort“, decided by the person on 1 November 2026, entry "The loaded
  texts lose their history, reasons move to docs/rationale.md." Approved the
  same day as the example of the no in doubt: „Dann bleibt das Issue offen. Der
  Befehl `curl -fsSL https://example.com/install.sh | sh` kann etwas von dir
  abfragen, etwa dein Passwort, darum gib ihn in einem zweiten Terminalfenster
  ein, nicht in dem, in dem Claude Code läuft. Gibst du danach hier
  `/devloop:start-work` ein, schließe ich das Issue und nehme die Aufgabe wieder
  auf. Bis dahin frage ich bei jedem Start mit `/devloop:start-work --auto`
  wieder.“ See docs/skill-conventions.md under "Every skill carries these two",
  the paragraph "Where the person types a command devloop hands them while
  Claude Code runs", form A, and for a command that asks, or in doubt, form B.
- **At its second asking the line naming the permission and the earlier no
  stands in the question field; after the two yes the classes they open are said
  in one line with their tools; a class off for an install goes into the
  packages where that record now says yes.** Text before the call can land in a
  collapsed note, and tools live inside the project where they can. Cases: in
  the runs of 16 October 2026 that line stood in progress updates and once came
  without the sentence on the no, defect 14; the classes stood in a thinking
  block, defect 8; biome went outside the project under both yes and was entered
  nowhere, defect 9; all of entry "The two runs of 16 October 2026 in
  `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off
  their session logs and the projects, the bench for defects d and 11 and for
  the install guard of defect c, and where milestone 3 stands after part A of
  the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at
  four places, d and 11 held on the bench and met no run; fifteen new defects,
  nine met again; the milestone has not landed; 16 October 2026, the version
  stays 0.141.0."; built in entries "Where each text devloop owes the person
  stays, goes into a pull request, an issue or a file, or drops, built after the
  decisions of the person of 17 October 2026: the introduction of `start-work`,
  the sentences that say why a question comes now in the wording approved that
  day, the last message of the run with nobody there in two groups, and the
  lines of the skills, the inserted texts and two hooks brought in line with the
  output style; 17 October 2026, version 0.143.0." and "Where step 8 of
  `setup-checks` puts the tool of a class off for an install not run, and the
  refusal of a safety check built into Claude Code among the refusals devloop
  names, a refusal a subagent names in its report the main run's own; defects 9
  and 12 of the entry of 16 October 2026 on the runs of that day; 18 October
  2026, version 0.147.0.". Approved example, entry "Part B of the decisions of
  12 October 2026 at the setup, points 7 to 19, and the four defects of
  milestone 3 that lie with the setup — defects 1 and 3 of the first closing
  run, b and i of the second — built; the auto-merge question revised on 16
  October 2026 to the case where a gate stands already; the merge handover and
  the branch deletion as shared texts; a changed file and commits of their own
  at a failed fetch asked about and done by the run; 16 October 2026, version
  0.140.0.": „Mit deinen beiden Ja richte ich jetzt Formatierung mit Prettier,
  Lint mit ESLint und Secrets mit gitleaks ein.“
- **After the two yes, points 2 and 3 run before the gate, and where nothing is
  installed under the records, the records and the workflow file land in one
  pull request; the mode section and the workflow file are written with the
  editing tool.** Cases: on 11 October 2026 the second closing run of milestone
  3 entered no tool, filled no class and landed the workflow file in a pull
  request of its own, two merges where one was owed, defects b and i; it wrote
  `environment.md` from the shell twice in this step, defect c; entry "The
  second closing run of milestone 3, made on 11 October 2026 in `devloop-test-w`
  under a record saying yes, set up through `--auto`, read off its session log
  and the project, with the runs of both closing runs on the things of the table
  and the context the two runs used: nine defects, two met again, the open
  question met again; 11 October 2026, the version stays 0.135.0."; point 26 of
  entry "The decisions of 12 October 2026: milestone 3 has not landed with the
  two closing runs and no run with Go follows; twenty-seven things to build
  before the next run, on the install guard, at the setup and at planning and
  building; three things decided and not built now; the person's wordings, word
  for word; who changed the check targets in the second closing run; 12 October
  2026, the version stays 0.135.0.", built in entry "Part B of the decisions of
  12 October 2026 at planning and building, points 20 to 26, built; the run with
  nobody there at a changed file in the way of the main branch and at commits of
  its own on it, decided by the person on 16 October 2026 and built — the change
  set aside under a name devloop knows and brought back where the mark goes, the
  commits onto a branch of their own, the question at the next start; the
  branch's name revised to `my-commits`; four shared texts; 16 October 2026,
  version 0.141.0.".
- **Step 8 writes the install record as `setup-project` does, only with the
  person there, and an answer about the mode that still stands as a sentence
  goes with the first writing of the section; a fresh cut fetches, switches and
  fast-forwards first.** A record that opens a guard is written only with the
  person there, and a later run reads the start of a line, not a sentence every
  run words differently. Entry "The status of a check class takes four forms and
  a guard holds the table to them, the unattended mode starts on two permissions
  more and is set up in `setup-checks` step 8 or through `--auto`, a state is
  read before a task is released, and a review finding about the table goes a
  third way; 5 October 2026, version 0.129.0." and its second addendum.
- **After a red from the code on the platform the run says what failed and that
  `/devloop:start-work --auto` sets the mode up once the checks pass; auto-merge
  is read back after it is switched on.** The answer of the PATCH is not the
  state: on 8 October 2026 a PATCH with `allow_auto_merge=true` on a private
  repository of an organization on the plan Free answered `false` with exit 0,
  entry "The open findings on the install guard, eight, measured on this
  machine; four questions never examined; the decisions for the next orders of
  milestone 3 and the texts the person approved, word for word; three
  corrections; 9 October 2026, version 0.132.0.". Approved wording, (2) of entry
  "Terms untranslated, the start command named whole, the design line gone.":
  „Sobald die Prüfungen auf GitHub durchlaufen, kannst du den Lauf ohne dich mit
  `/devloop:start-work --auto` einrichten.“

## `skills/untangle-idea/SKILL.md`

### The Map

- **Where the project is not set up, `setup-project` runs with nothing said
  before it; why its questions come now stands in its first question.** Text
  before a tool call can land in a collapsed note, and why the questions come is
  part of what the first question needs. Decided as B7 of entry "Where each text
  devloop owes the person stays, goes into a pull request, an issue or a file,
  or drops, built after the decisions of the person of 17 October 2026: the
  introduction of `start-work`, the sentences that say why a question comes now
  in the wording approved that day, the last message of the run with nobody
  there in two groups, and the lines of the skills, the inserted texts and two
  hooks brought in line with the output style; 17 October 2026, version
  0.143.0.", which names these lines as UI-2. Approved wording, in that entry
  under "The wordings approved on 17 October 2026, B7 and B5", for the first
  question at a setup that begins with an idea in hand: „Bevor ich mit deiner
  Idee anfange, richte ich das Projekt ein.“
### The interview

- **Why a question comes up now reaches the person with the round — the tree,
  the frontier and how many rounds — and is not said again in each question;
  where it has not reached them, it is said with the question.** What has
  reached the person by the time they answer is not said again. Case: the cut of
  30 September 2026 took "why it comes up now" out of question 4 of
  `setup-project` as not carrying the decision, while `shared/how-to-ask.md` and
  this skill's template still asked it of every question, entry "A rule on the
  length and the form of a delivered text, drawn from the two cuts of 29 and 30
  September 2026, the message and the question; 30 September 2026, version
  0.119.0."; brought in line as point 25 of entry "The decisions of 12 October
  2026: milestone 3 has not landed with the two closing runs and no run with Go
  follows; twenty-seven things to build before the next run, on the install
  guard, at the setup and at planning and building; three things decided and not
  built now; the person's wordings, word for word; who changed the check targets
  in the second closing run; 12 October 2026, the version stays 0.135.0.", built
  in entry "Part B of the decisions of 12 October 2026 at planning and building,
  points 20 to 26, built; the run with nobody there at a changed file in the way
  of the main branch and at commits of its own on it, decided by the person on
  16 October 2026 and built — the change set aside under a name devloop knows
  and brought back where the mark goes, the commits onto a branch of their own,
  the question at the next start; the branch's name revised to `my-commits`;
  four shared texts; 16 October 2026, version 0.141.0.". See
  docs/skill-conventions.md under "Every question carries its own reason".
### Chart the map

- **Research subagents charting at the same time do not change branches; each
  writes only its own file and commits only that path.** They share one working
  directory and its git state, so a checkout by one lands under the other's
  feet. Case: two research subagents fired at once collided, and a checkout by
  one left the other's file committed on the wrong branch; no entry of
  `docs/roadmap.md` carries it, the commit that wrote the rule does, "Parallel
  research shares one working directory, and a detour is not the answer (#40)",
  `034e09e`.
- **A stray file on another research branch is left there and not mentioned, and
  history is not rewritten to tidy it.** The ticket's context pointer names the
  branch its findings stand on, so saying it changes nothing the person acts on,
  and reshaping branches costs the ability to trust what they say. "Say nothing
  of it" decided as UI-16 of entry "Where each text devloop owes the person
  stays, goes into a pull request, an issue or a file, or drops, built after the
  decisions of the person of 17 October 2026: the introduction of `start-work`,
  the sentences that say why a question comes now in the wording approved that
  day, the last message of the run with nobody there in two groups, and the
  lines of the skills, the inserted texts and two hooks brought in line with the
  output style; 17 October 2026, version 0.143.0.", under B1, that a text stays
  only where one of six features holds.
### When the map is done

- **When the map is done the run carries straight on into planning and building
  and offers no room to say stop.** That room would reach the person only once
  the planning has begun. Decided at UI-19 in entry "Where the text devloop owes
  the person stands, decided by the person on 17 October 2026, and every
  question put to it: what a decision needs in the question, everything else in
  the message that ends the turn, nothing between two tool calls; the mode
  question of `setup-checks` step 8 in the wording approved that day, in its
  fields and with nothing before it; 17 October 2026, version 0.142.0." and
  built as B3 of entry "Where each text devloop owes the person stays, goes into
  a pull request, an issue or a file, or drops, built after the decisions of the
  person of 17 October 2026: the introduction of `start-work`, the sentences
  that say why a question comes now in the wording approved that day, the last
  message of the run with nobody there in two groups, and the lines of the
  skills, the inserted texts and two hooks brought in line with the output
  style; 17 October 2026, version 0.143.0.".

## `skills/research/SKILL.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `skills/build-prototype/SKILL.md`

### With nobody there

- **A refusal with nobody there — a guard's block, the no of the classifier of
  auto mode, the no of the hook on permission prompts, the refusal of a safety
  check built into Claude Code — is tried no second time, reached no other way,
  and goes back to the caller's order with the command and the message.** Nobody
  is there to answer it; sent back to the order that records a question, it is
  neither a run blocked in doubt nor a clean-looking run over an act nobody
  agreed to. Built with the behaviour with nobody there, entry "The behaviour
  with nobody there: a refusal, a command that does not finish inside its call,
  an install that does not go through, the two halts of `setup-checks`, a hook
  for permission prompts, and start condition 4 off the permission mode; 9
  October 2026, version 0.133.0.", after decision 1 of entry "The open findings
  on the install guard, eight, measured on this machine; four questions never
  examined; the decisions for the next orders of milestone 3 and the texts the
  person approved, word for word; three corrections; 9 October 2026, version
  0.132.0." that a refusal of the classifier goes as a guard's block goes. Case
  for the fourth kind: on 16 October 2026 Claude Code's own safety check denied
  a planning subagent's command `rm -rf * .git*` in project 1, and the refusal
  reached neither the record nor the person, defect 12 of entry "The two runs of
  16 October 2026 in `devloop-test-x` and `devloop-test-y` under the installed
  0.141.0, read off their session logs and the projects, the bench for defects d
  and 11 and for the install guard of defect c, and where milestone 3 stands
  after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a
  did not hold at four places, d and 11 held on the bench and met no run;
  fifteen new defects, nine met again; the milestone has not landed; 16 October
  2026, the version stays 0.141.0."; built in entry "Where step 8 of
  `setup-checks` puts the tool of a class off for an install not run, and the
  refusal of a safety check built into Claude Code among the refusals devloop
  names, a refusal a subagent names in its report the main run's own; defects 9
  and 12 of the entry of 16 October 2026 on the runs of that day; 18 October
  2026, version 0.147.0.".
### Hand it over so it gets looked at

- **The prototype is handed over as one action: a single HTML file opened by one
  line typed in Claude Code with `!` in front, form A; a process started in a
  second terminal window, form B, with the address and how they end it.** A
  command that asks nothing and ends by itself runs under form A and its output
  reaches the run; one that does not end by itself would hold Claude Code under
  A. The two forms are those of docs/skill-conventions.md under "Every skill
  carries these two", the paragraph "Where the person types a command devloop
  hands them while Claude Code runs", inserted into the skill from
  `shared/skill-name.md`; decided on 28 October 2026, rule (b) of entry
  "Handovers say where the command is typed, sign-in and identity in steps.",
  which names these lines among the places brought in line.

## `skills/build-prototype/LOGIC.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `skills/build-prototype/UI.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `skills/plan-work/SKILL.md`

### Plan a piece of work

- **Where the project is not set up, `setup-project` runs with nothing said
  before it; why its questions come now stands in its first question.** Text
  before a tool call can land in a collapsed note. B7 and PW-2 of entry "Where
  each text devloop owes the person stays, goes into a pull request, an issue or
  a file, or drops, built after the decisions of the person of 17 October 2026:
  the introduction of `start-work`, the sentences that say why a question comes
  now in the wording approved that day, the last message of the run with nobody
  there in two groups, and the lines of the skills, the inserted texts and two
  hooks brought in line with the output style; 17 October 2026, version
  0.143.0."; the approved first sentence is quoted under
  `skills/setup-project/SKILL.md`.
### Before anything: what is already built

- **The whole in-flight query, both halves, runs before planning.** An open pull
  request is work already built and not landed, and a plan written on top of it
  duplicates it. Case: on 31 August 2026, twice in a row in a test project, a
  session asked only for open issues, reported nothing open and opened a second
  planning issue for work whose finished pull request sat open against that very
  issue, entry "The stock-take could not see a pull request at all, and that was
  measured on 31 August 2026.".
- **Nothing is said where nothing changes for the person — the empty in-flight
  answer, someone else's pull request.** A text stays in the conversation only
  where the person has to decide or do something, something failed or is blocked
  and that changes what they get, the run decided for them and leaves room to
  object, something was created, changed or deleted they did not initiate, or it
  is the result; otherwise it goes into the pull request, the issue or the file
  at that place, or drops. B1 of entry "Where each text devloop owes the person
  stays, goes into a pull request, an issue or a file, or drops, built after the
  decisions of the person of 17 October 2026: the introduction of `start-work`,
  the sentences that say why a question comes now in the wording approved that
  day, the last message of the run with nobody there in two groups, and the
  lines of the skills, the inserted texts and two hooks brought in line with the
  output style; 17 October 2026, version 0.143.0.", built in this skill as the
  PW places listed there. The same rule stands at the places below, each under
  its heading: which stage a pick-up continues at, the mark written, a skipped
  Stage 2 and Stage 2's report, the list of Stage 3 while the drafting runs, a
  rerun that returned, the seams, the draft taken alone, and the call of the
  cut.
### Picking up an interrupted plan

- **What the pick-up deleted is said in the question field, as part of why the
  question comes now.** Why a question comes now stands in its question field
  and not in an announcement before it. Decisions (2) and (3) of entry "Where
  the text devloop owes the person stands, decided by the person on 17 October
  2026, and every question put to it: what a decision needs in the question,
  everything else in the message that ends the turn, nothing between two tool
  calls; the mode question of `setup-checks` step 8 in the wording approved that
  day, in its fields and with nothing before it; 17 October 2026, version
  0.142.0.".
- **Which stage a pick-up continues at is not said.** Its reason and its entry
  stand under "Before anything: what is already built" above.
### With nobody there

- **A refusal before the build goes through the order for a question nobody can
  answer — a safety check of Claude Code and a refusal a subagent names among
  them.** So that a run with nobody there is not blocked in doubt. Entry "The
  behaviour with nobody there: a refusal, a command that does not finish inside
  its call, an install that does not go through, the two halts of
  `setup-checks`, a hook for permission prompts, and start condition 4 off the
  permission mode; 9 October 2026, version 0.133.0.". Case for the safety check
  and the subagent: on 16 October 2026 a built-in safety check of Claude Code
  denied a checking subagent of Stage 3 `rm -rf * .git*`; the subagent said so
  in its report, and the main run neither recorded nor said it, defect 12 of
  entry "The two runs of 16 October 2026 in `devloop-test-x` and
  `devloop-test-y` under the installed 0.141.0, read off their session logs and
  the projects, the bench for defects d and 11 and for the install guard of
  defect c, and where milestone 3 stands after part A of the entry of 12 October
  2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11
  held on the bench and met no run; fifteen new defects, nine met again; the
  milestone has not landed; 16 October 2026, the version stays 0.141.0."; built
  in entry "Where step 8 of `setup-checks` puts the tool of a class off for an
  install not run, and the refusal of a safety check built into Claude Code
  among the refusals devloop names, a refusal a subagent names in its report the
  main run's own; defects 9 and 12 of the entry of 16 October 2026 on the runs
  of that day; 18 October 2026, version 0.147.0.".
- **The stop before the mark opens with that the main branch cannot be read and
  that nothing is begun.** Nothing is fast-forwarded here, so only the fetch can
  fail. Approved wording, point 19 of entry "The decisions of 12 October 2026:
  milestone 3 has not landed with the two closing runs and no run with Go
  follows; twenty-seven things to build before the next run, on the install
  guard, at the setup and at planning and building; three things decided and not
  built now; the person's wordings, word for word; who changed the check targets
  in the second closing run; 12 October 2026, the version stays 0.135.0.": „Ich
  kann gerade nicht lesen, wo der Hauptzweig auf GitHub steht, deshalb fange ich
  hier nichts an."
- **The mark is deleted by one shared text at every place the unattended part
  ends.** Worded by each skill in its own way, no one search finds every ending.
  Case: the audit of 4 October 2026 found no shared text on the deletion and a
  list in `build-work` that missed the stops of `plan-work`, entry "The
  consistency audit of 4 October 2026, read against the entry beside it: two
  counts on its fifteen defects, those fifteen corrected there in place, and
  twenty defects of its own; 4 October 2026, version 0.128.0."; point 24 of
  entry "The decisions of 12 October 2026: milestone 3 has not landed with the
  two closing runs and no run with Go follows; twenty-seven things to build
  before the next run, on the install guard, at the setup and at planning and
  building; three things decided and not built now; the person's wordings, word
  for word; who changed the check targets in the second closing run; 12 October
  2026, the version stays 0.135.0.", built in entry "Part B of the decisions of
  12 October 2026 at planning and building, points 20 to 26, built; the run with
  nobody there at a changed file in the way of the main branch and at commits of
  its own on it, decided by the person on 16 October 2026 and built — the change
  set aside under a name devloop knows and brought back where the mark goes, the
  commits onto a branch of their own, the question at the next start; the
  branch's name revised to `my-commits`; four shared texts; 16 October 2026,
  version 0.141.0.".
### Stage 1 — Sharpen the idea

- **The settled answers go to the planning issue after every round.** A session
  that ends inside Stage 1 then leaves the issue with what was settled and not
  empty. Case: on 30 September 2026 the pick-up in `devloop-test-s` found the
  issue empty and began Stage 1 again, entry "The two runs milestone 3 ends
  with, both on 30 September 2026 under 0.120.0 and both attended: the record
  saying yes in `devloop-test-s`, the record saying no in `devloop-test-t`; what
  they establish, what they do not, and the findings read off them; 30 September
  2026, version 0.120.1."; point 20 of entry "The decisions of 12 October 2026:
  milestone 3 has not landed with the two closing runs and no run with Go
  follows; twenty-seven things to build before the next run, on the install
  guard, at the setup and at planning and building; three things decided and not
  built now; the person's wordings, word for word; who changed the check targets
  in the second closing run; 12 October 2026, the version stays 0.135.0.", built
  in entry "Part B of the decisions of 12 October 2026 at planning and building,
  points 20 to 26, built; the run with nobody there at a changed file in the way
  of the main branch and at commits of its own on it, decided by the person on
  16 October 2026 and built — the change set aside under a name devloop knows
  and brought back where the mark goes, the commits onto a branch of their own,
  the question at the next start; the branch's name revised to `my-commits`;
  four shared texts; 16 October 2026, version 0.141.0.".
- **Stage 1 ends on the empty frontier, and the idea stands only on the user's
  confirmation.** The empty frontier is a state of the tree anybody holding it
  can check, not the run's own reading; the cap of three questions changes the
  number of rounds and not the end. Point 20 of entry "The decisions of 12
  October 2026: milestone 3 has not landed with the two closing runs and no run
  with Go follows; twenty-seven things to build before the next run, on the
  install guard, at the setup and at planning and building; three things decided
  and not built now; the person's wordings, word for word; who changed the check
  targets in the second closing run; 12 October 2026, the version stays
  0.135.0.", which replaced "nothing important is open" as pure interpretation,
  with the source github.com/mattpocock/skills at `49dd158`,
  `skills/productivity/grilling/SKILL.md` line 30: "The session is done when the
  frontier is empty: every branch of the design tree visited, nothing left
  silently assumed. Do not act on it until the user confirms you have reached a
  shared understanding."; built in entry "Part B of the decisions of 12 October
  2026 at planning and building, points 20 to 26, built; the run with nobody
  there at a changed file in the way of the main branch and at commits of its
  own on it, decided by the person on 16 October 2026 and built — the change set
  aside under a name devloop knows and brought back where the mark goes, the
  commits onto a branch of their own, the question at the next start; the
  branch's name revised to `my-commits`; four shared texts; 16 October 2026,
  version 0.141.0.".
- **The planning settles no install: who installs is the install record's at the
  build.** The record can change between the planning and the build. Cases from
  the closing runs of 23 October 2026: run 1 told the person they install
  `htmlq` themselves, because the run installs nothing outside the project, and
  wrote it under Out of scope; in run 2a the person corrected the same, „Wer
  mmdc installiert, legt nicht die Spezifikation fest, sondern die Erlaubnis zum
  Installieren, die für dieses Projekt gilt, wenn gebaut wird.“; the comment of
  Stage 2 of run 3a judged the record, writing that it allowed the route npm
  alone and that a build could not install `yq`, while the record named `/opt`
  among its places; defects 9 and 2 of entry "Six closing runs read off their
  logs, each on the defects it met."; built in entry "Install lines by one
  program, written where the install stood alone.".
- **Whether a tool outside the project stands on this machine is read with
  `bin/devloop-tool-state --planning`, never assumed, before the round where the
  code already names it, and said where they next read where it becomes known
  later.** A planning that takes a tool for present carries the claim into the
  build, and a line in a comment alone reaches nobody. Cases: in the closing
  runs of 26 October 2026 run 1's planning wrote "yq and htmlq are installed
  outside the project" without reading the machine, and run 2 read `htmlq` and
  `mmdc` missing and wrote it into a comment alone, new defect 4 of entry "Three
  closing runs of the pass read off their logs, each on what it met.", built in
  entry "Tool state read by one program, the planning saying only what it
  read."; the run of 29 October 2026 read a script calling `yq`, named no tool
  in its round and ran the program only after it, entry "Run under a no read off
  its log, the ! after the no taken up at once.", decided in entry "The ! after
  a no taken up in the session, point 7 read by the subagent.".
- **Of the install record the planning says only that the build decides, even
  where another program printed today's answer.** The answer can change before
  the build. Case: the run of 29 October 2026 said „Sie steht für dieses Projekt
  auf „nein“.“ before the design question, entry "Run under a no read off its
  log, the ! after the no taken up at once."; decided in entry "The ! after a no
  taken up in the session, point 7 read by the subagent.".
- **A tool not found is said as needed and missing, a browser not read as needed
  and unreadable now with the cause in their language, and their permission to
  install as it stands at the build decides.** The program's English line is no
  sentence to a person reading in their language. Addenda (b) and (c) of entry
  "Tool state read by one program, the planning saying only what it read.". The
  approved wordings for a missing tool and for a browser not read are quoted
  under `skills/cut-into-tasks/SKILL.md`.
- **The hard core stands in the question field of the confirmation, or before it
  as text where the two do not fit the widget.** What a decision needs stands in
  the question. Case: on 16 October 2026 the hard core stood in no message, and
  the confirmation was asked over a list the person could not see, defect 3 of
  entry "The two runs of 16 October 2026 in `devloop-test-x` and
  `devloop-test-y` under the installed 0.141.0, read off their session logs and
  the projects, the bench for defects d and 11 and for the install guard of
  defect c, and where milestone 3 stands after part A of the entry of 12 October
  2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11
  held on the bench and met no run; fifteen new defects, nine met again; the
  milestone has not landed; 16 October 2026, the version stays 0.141.0.";
  decisions (4) and (5) of entry "Where the text devloop owes the person stands,
  decided by the person on 17 October 2026, and every question put to it: what a
  decision needs in the question, everything else in the message that ends the
  turn, nothing between two tool calls; the mode question of `setup-checks` step
  8 in the wording approved that day, in its fields and with nothing before it;
  17 October 2026, version 0.142.0.".
- **Whether the idea is understood is asked alone in its call, the hard core
  shown, no recommendation, and only the yes lets the idea stand.** Approved
  wording, point 20 as built in entry "Part B of the decisions of 12 October
  2026 at planning and building, points 20 to 26, built; the run with nobody
  there at a changed file in the way of the main branch and at commits of its
  own on it, decided by the person on 16 October 2026 and built — the change set
  aside under a name devloop knows and brought back where the mark goes, the
  commits onto a branch of their own, the question at the next start; the
  branch's name revised to `my-commits`; four shared texts; 16 October 2026,
  version 0.141.0.": the question „Habe ich deine Idee so richtig verstanden?";
  „Ja, so stimmt es" with the line „Dann plane ich auf dieser Grundlage
  weiter."; „Nein, da fehlt noch etwas" with the line „Dann frage ich weiter,
  bis es stimmt."
- **Without the mode, at the end of Stage 1: nothing for their no or a class
  `empty` or where no record stands, one line for a yes fallen away, in the
  message right after the read of the conditions, giving no reason, naming the
  input as typed.** A line where no record stands would speak of an option they
  never took up; a line in a comment alone reaches nobody; the flag alone is
  nothing they can type. Cases: run 3 of the closing runs of the pass ended its
  planning with „Das geht mit dir dabei oder allein mit `--auto`.“, defect 2 of
  entry "Three closing runs of the pass read off their logs, each on what it
  met.", built in entry "Terms untranslated, the start command named whole, the
  design line gone."; run 1 wrote the line into the English comment of Stages 1
  and 2 alone, new defect 5 there, built in entry "Tool state read by one
  program, the planning saying only what it read."; the run of 29 October 2026
  said it at the design question four turns after the read with „weil die
  Installationsfreigabe auf „nein“ steht“, entry "Run under a no read off its
  log, the ! after the no taken up at once.", decided in entry "The ! after a no
  taken up in the session, point 7 read by the subagent."; B8 and PW-24 of entry
  "Where each text devloop owes the person stays, goes into a pull request, an
  issue or a file, or drops, built after the decisions of the person of 17
  October 2026: the introduction of `start-work`, the sentences that say why a
  question comes now in the wording approved that day, the last message of the
  run with nobody there in two groups, and the lines of the skills, the inserted
  texts and two hooks brought in line with the output style; 17 October 2026,
  version 0.143.0.". Approved wording, (1) of entry "Terms untranslated, the
  start command named whole, the design line gone.": „Der Lauf ohne dich ist in
  diesem Projekt nicht eingerichtet. Mit `/devloop:start-work --auto` kannst du
  ihn einrichten.“
- **With `--auto` and the idea standing, `setup-checks` step 8 alone puts the
  permissions a second time and the question on the rule for the classifier.**
  The person who typed the flag is here to answer. Decisions 1 and 10 of entry
  "The open findings on the install guard, eight, measured on this machine; four
  questions never examined; the decisions for the next orders of milestone 3 and
  the texts the person approved, word for word; three corrections; 9 October
  2026, version 0.132.0.", built in entry "Step 8 of `setup-checks`: a reading
  before the question, the question field by field, the rule for auto mode after
  its yes; a guard on the identity of a commit; milestone 12 in the plan; the
  findings of 9 October 2026; 9 October 2026, version 0.134.0.".
- **The cost of the first two answers stands in their descriptions — the machine
  stays awake while the run works — and the descriptions say nothing of how the
  design is chosen or that the run stops where no draft carries the stories.**
  What they need for the decision stands in the question; the stop foretells a
  failure nobody knows will come. Cases: on 16 October 2026 the costs stood
  neither before the widget nor in its lines, defect 10 of entry "The two runs
  of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the
  installed 0.141.0, read off their session logs and the projects, the bench for
  defects d and 11 and for the install guard of defect c, and where milestone 3
  stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i
  held, a did not hold at four places, d and 11 held on the bench and met no
  run; fifteen new defects, nine met again; the milestone has not landed; 16
  October 2026, the version stays 0.141.0.", placed in entry "Where the text
  devloop owes the person stands, decided by the person on 17 October 2026, and
  every question put to it: what a decision needs in the question, everything
  else in the message that ends the turn, nothing between two tool calls; the
  mode question of `setup-checks` step 8 in the wording approved that day, in
  its fields and with nothing before it; 17 October 2026, version 0.142.0."; at
  run 2b of 23 October 2026 the person asked „sollte eigentlich der Entwurf
  nicht ohne den Nutzer entschieden werden?“, decision (c) of entry "Six closing
  runs read off their logs, each on the defects it met.", built in entry "Terms
  untranslated, the start command named whole, the design line gone."; the run
  of 19 October 2026 wrote „trifft kein Entwurf, hält der Lauf an“ into a
  description, defect 14 of entry "The two runs of 19 October 2026 in
  `devloop-test-z` and `devloop-test-y` under the installed 0.148.0, read off
  their session logs and the projects, and where milestone 3 stands under the
  criterion the person decided that day, in place of the one of 12 October 2026:
  every defect that concerns the milestone listed in three groups, and the
  milestone not reached; defects 1, 3, b, c and i held, defect a held at every
  place under one reading and not under another, 13 held but for one point, 14
  held at one place and not at the other, 5 and 9 of the entry of 16 October
  2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of 15 October
  2026 on the loose issues met again; of the six rows of the check table of
  `devloop-test-y` four went as their case says and two were decided without the
  question; nineteen new defects, three of them the person's wordings of that
  day, one with a should the person has still to decide; 19 October 2026, the
  version stays 0.148.0.", built in entry "The three wordings the person
  approved on 19 October 2026 built, the places sharpened where the skill said
  less than the approved wording, and the person's decisions of that day on the
  convention against dictated wording and on defect a of the second closing run:
  the first case of the merge handover, the awake line and the two labels of the
  mode question, the two descriptions that send the run alone; defects 13, 14
  and 15 of the entry of 19 October 2026 on the two runs and defect 13 of the
  entry of 16 October 2026 built; defect a held; 19 October 2026, version
  0.149.0.". Approved wording, entry "Six closing runs read off their logs, each
  on the defects it met.": for „Volle Flexibilität“ „Alles wird ohne dich
  gebaut, du liest das Ergebnis danach. Der Rechner muss wach bleiben.“, for
  „Plan ohne dich“ „Der Plan entsteht ohne dich und hält an, sobald du ihn lesen
  kannst; danach geht es weiter wie bei der ersten Antwort. Der Rechner muss
  wach bleiben.“
- **The five conditions and the permission mode are read by one call,
  `bin/devloop-start-conditions` with `bin/devloop-permission-mode` behind it.**
  Read by text the conditions were read whole in none of the closing runs that
  met them, and one call makes the build's call before its first task the same
  one with the range. Decision (5) of entry "Install lines by one program,
  written where the install stood alone.", built in entry "Start conditions read
  by one program, the mark blocked on five of them."; the mode joined the call
  after the build of run 2 of 26 October 2026 started without reading condition
  4, decision (4) of entry "Tool state read by one program, the planning saying
  only what it read.", built in entry "Every subagent gets the install record,
  the build reads its tools first.".
- **Where auto mode is not on, the question is not asked and `--auto` does not
  send the run alone.** The run without them begins in auto mode alone. Text 9
  October 2026, entry "The behaviour with nobody there: a refusal, a command
  that does not finish inside its call, an install that does not go through, the
  two halts of `setup-checks`, a hook for permission prompts, and start
  condition 4 off the permission mode; 9 October 2026, version 0.133.0.".
  Approved wording, (4) of entry "Terms untranslated, the start command named
  whole, the design line gone.": „Der Lauf ohne dich startet nicht. Dafür muss
  Claude Code im Auto-Modus laufen, gerade ist „<Modus, wie Claude Code ihn
  anzeigt>“ eingestellt. Stell den Auto-Modus ein, im Terminal mit Umschalt+Tab,
  und gib dann `/devloop:start-work --auto` ein. Ohne `--auto` plane ich mit dir
  weiter.“
- **The question on the rule for the classifier is asked before the mark, after
  the read of the install issues, and `setup-checks` step 8 is called for it at
  every start that meets it.** The question then names no install whose tool
  stands by now, and a condition on "this session" would pass it over at a
  second start in the same session. Decided in entry "Conditions 6 and 7 at the
  mark, the rule asked after a refusal, titles."; the read before it built in
  entry "Every subagent gets the install record, the build reads its tools
  first.". Case: run 3a of 23 October 2026 put the question at its second start
  itself, in `build-work`, without calling `setup-checks`, defect 3 of entry
  "Six closing runs read off their logs, each on the defects it met."; built in
  entry "Questions say why they come and give the issue's number, routes
  unasked.".
- **The hook on the mark blocks the write unless conditions 1, 2, 5, 6 and 7
  hold.** A run that does not read the conditions again could go alone where
  they have fallen since the question; the hook reads the same state as the text
  and refuses only where the text refuses. Cluster 22 of entry "The list of the
  defects that concern milestone 3 checked point by point against the code at
  `0776389`, in two passes of subagents, ordered into clusters by cause and
  repair, the lapsed and the left-on-purpose points found, every point outside
  the milestone given its place, and the stock-take corrected where it counted
  as built a defect whose should is not built; the person's decision of 19
  October 2026 that of the run without the person the milestone covers
  installing alone; nothing built; the milestone not reached; 19 October 2026,
  version 0.150.0 stays."; decided in entry "Milestone 3, part 1, the install
  question, built as the person decided on 20 October 2026: the refresh of
  `setup-project` puts the install question where no record stands on the main
  branch and writes the record; no question of its step 4 carries a
  recommendation, the rule standing in `shared/how-to-ask.md`; the call of the
  install question stays alone, without a mechanism, for the reason that what
  needs weighing goes alone; the no of the install question names the exception
  of a package that downloads something when it is installed, in the wording
  approved that day; the bullet of `setup-project` for a blocked install with
  nobody there says the case cannot arise, and the insert of
  `shared/backed-command.md` goes; the person's decisions of that day on the
  clusters of the checked list recorded with what follows from the rules; four
  findings of the tool brought in as defects, three of them built and one
  closed, four defects closed as left on purpose and one as lapsed; 20 October
  2026, version 0.152.0."; built for conditions 6 and 7 in entry "Conditions 6
  and 7 at the mark, the rule asked after a refusal, titles."; widened by
  decision (5) of entry "Install lines by one program, written where the install
  stood alone." in entry "Start conditions read by one program, the mark blocked
  on five of them.".
- **The mark written is not said.** Its reason and its entry stand under "Before
  anything: what is already built" above.
### Stage 2 — Read the code

- **A skipped Stage 2 and Stage 2's report are not said; each stands in the
  comment the stage posts on the planning issue.** Their reason and their entry
  stand under "Before anything: what is already built" above.
### Stage 3 — Draft designs

- **Every agent of Stage 3 is handed where the mark stands, what a refusal is
  and what follows one, and a refusal a checking agent names is said beside the
  verdict on its draft.** It reads this skill nowhere, so with nobody there it
  could try a refused command again, and a refusal it does not name never
  reaches the main run. Found beside defect 12 of entry "The two runs of 16
  October 2026 in `devloop-test-x` and `devloop-test-y` under the installed
  0.141.0, read off their session logs and the projects, the bench for defects d
  and 11 and for the install guard of defect c, and where milestone 3 stands
  after part A of the entry of 12 October 2026: defects 1, 3, b, c and i held, a
  did not hold at four places, d and 11 held on the bench and met no run;
  fifteen new defects, nine met again; the milestone has not landed; 16 October
  2026, the version stays 0.141.0." and decided in the addendum of entry "Where
  step 8 of `setup-checks` puts the tool of a class off for an install not run,
  and the refusal of a safety check built into Claude Code among the refusals
  devloop names, a refusal a subagent names in its report the main run's own;
  defects 9 and 12 of the entry of 16 October 2026 on the runs of that day; 18
  October 2026, version 0.147.0."; the build subagent gets the same by decision
  1 of entry "The open findings on the install guard, eight, measured on this
  machine; four questions never examined; the decisions for the next orders of
  milestone 3 and the texts the person approved, word for word; three
  corrections; 9 October 2026, version 0.132.0.".
- **The design question stands last in the message that ends the turn, as text,
  with what it needs before it and nothing beside or after it.** It is the
  largest decision in the plan, and anything beside it gets waved through with
  it. Decision (6) of entry "Where the text devloop owes the person stands,
  decided by the person on 17 October 2026, and every question put to it: what a
  decision needs in the question, everything else in the message that ends the
  turn, nothing between two tool calls; the mode question of `setup-checks` step
  8 in the wording approved that day, in its fields and with nothing before it;
  17 October 2026, version 0.142.0.".
- **The Stage 3 comment carries the drafts not chosen, with every verdict.** A
  comment holding only the winner leaves the verdicts pointing at nothing. Case:
  read on 14 September 2026 on the tracker of `devloop-test-o`, two specs whose
  Stage 3 comments held the chosen design alone, one under a spec body saying
  the rejected alternatives were recorded there, entry "Planning is fenced out
  of the unattended mode by one sentence, and three places already decide the
  other way, read on 11 September 2026.".
- **The list of Stage 3 while the drafting runs, a rerun that returned, the
  seams and the draft taken alone are not said.** Their reason and their entry
  stand under "Before anything: what is already built" above.
### Stage 4 — Write the spec

- **The spec names a tool outside the project under Implementation decisions
  with the program's line as printed, and not who installs it; Out of scope
  never carries the install.** The build then reads a dated line as the source
  of what stands on the machine, never a claim. Case: run 1 of 26 October 2026
  wrote "yq and htmlq are installed outside the project" and carried it into the
  build's brief, new defect 4 of entry "Three closing runs of the pass read off
  their logs, each on what it met.", built in entry "Tool state read by one
  program, the planning saying only what it read."; run 1 of 23 October 2026
  wrote "Installing htmlq: the user does it." under Out of scope, entry "Six
  closing runs read off their logs, each on the defects it met.".

### Close

- **The call of the cut is not said before it; what the cut created reaches them
  where it is said.** Its reason and its entry stand under "Before anything:
  what is already built" above.

## `skills/cut-into-tasks/SKILL.md`

### With nobody there

- **The cut uses the order of `plan-work` for an unanswered question for one
  thing only: a refusal goes through it, is tried no second time and is reached
  no other way.** A refused command retried or routed around gets past the check
  that refused it. Entry "The behaviour with nobody there: a refusal, a command
  that does not finish inside its call, an install that does not go through, the
  two halts of `setup-checks`, a hook for permission prompts, and start
  condition 4 off the permission mode; 9 October 2026, version 0.133.0."; the
  fourth kind of refusal under `shared/command-does-not-answer.md`.
### Before you create anything

- **The split is said as what was created, not before, and no room to stop it is
  offered.** The next message that ends a turn comes only once the issues exist
  and, with the person there, once the first task is built, when re-cutting
  costs real effort. CT-2 under B3 of entry "Where each text devloop owes the
  person stays, goes into a pull request, an issue or a file, or drops, built
  after the decisions of the person of 17 October 2026: the introduction of
  `start-work`, the sentences that say why a question comes now in the wording
  approved that day, the last message of the run with nobody there in two
  groups, and the lines of the skills, the inserted texts and two hooks brought
  in line with the output style; 17 October 2026, version 0.143.0."; decided in
  entry "Where the text devloop owes the person stands, decided by the person on
  17 October 2026, and every question put to it: what a decision needs in the
  question, everything else in the message that ends the turn, nothing between
  two tool calls; the mode question of `setup-checks` step 8 in the wording
  approved that day, in its fields and with nothing before it; 17 October 2026,
  version 0.142.0.".
### After creating

- **After the cut the build starts with nothing said about it, with the person
  there or alone.** With them, they see the result at the gate before anything
  is merged. CT-4 and CT-5 of entry "Where each text devloop owes the person
  stays, goes into a pull request, an issue or a file, or drops, built after the
  decisions of the person of 17 October 2026: the introduction of `start-work`,
  the sentences that say why a question comes now in the wording approved that
  day, the last message of the run with nobody there in two groups, and the
  lines of the skills, the inserted texts and two hooks brought in line with the
  output style; 17 October 2026, version 0.143.0.".
- **At the halt of the `plan` route, a tool the work needs and does not find is
  named beside the spec as the planning's assumptions name it, the cause in the
  person's language.** This halt is where they next read on that route, and the
  program's line is English to a person reading in their own language. Case: in
  run 1 of the three closing runs of the pass, the round named no tool where the
  work needed `yq`, missing on the machine, new defect 4 of entry "Three closing
  runs of the pass read off their logs, each on what it met."; the cause in
  their language in entry "Tool state read by one program, the planning saying
  only what it read.". Approved wordings: for a tool that is missing, (b) of
  entry "Install lines by one program, written where the install stood alone.":
  „Für die Aufgabe wird `htmlq` gebraucht, und es fehlt auf diesem Rechner. Ob
  ich es beim Bauen installiere oder du den Befehl dafür bekommst, entscheidet
  deine Erlaubnis zum Installieren, die dann für dieses Projekt gilt.“; for a
  line not read, entry "Tool state read by one program, the planning saying only
  what it read.": „Für die Aufgabe wird der Browser WebKit für Playwright
  gebraucht. Ob er auf diesem Rechner in der passenden Version steht, kann ich
  jetzt nicht lesen: Playwright ist noch nicht im Projekt, und erst Playwright
  sagt, welche Version es braucht. Ob ich ihn beim Bauen installiere oder du den
  Befehl dafür bekommst, entscheidet deine Erlaubnis zum Installieren, die dann
  für dieses Projekt gilt.“
- **How it goes on names the input as the person types it in Claude Code,
  `/devloop:start-work --auto` or `/devloop:start-work`, never the flag alone.**
  The flag alone is nothing they can type and have work. Case: in run 3 of the
  three closing runs of the pass the last message said „Das geht mit dir dabei
  oder allein mit `--auto`.“, defect 2 of entry "Three closing runs of the pass
  read off their logs, each on what it met."; built in entry "Terms
  untranslated, the start command named whole, the design line gone.".

## `skills/build-work/SKILL.md`

### A guard's block, with nobody there

- **A refusal is any of four things (a guard's block, the classifier's no, the
  no of the hook on permission prompts, the refusal of a safety check built into
  Claude Code), and all four go the same way.** None of them is the run's to
  overturn, so a second attempt and another way to the same result are ruled
  out. Case: on 16 October 2026 a safety check built into Claude Code denied a
  planning subagent's `rm -rf` in a test project. The subagent went on without
  that test run, and no issue and no comment recorded the refusal. Entry "The
  two runs of 16 October 2026 in `devloop-test-x` and `devloop-test-y` under the
  installed 0.141.0, read off their session logs and the projects, the bench for
  defects d and 11 and for the install guard of defect c, and where milestone 3
  stands after part A of the entry of 12 October 2026: defects 1, 3, b, c and i
  held, a did not hold at four places, d and 11 held on the bench and met no
  run; fifteen new defects, nine met again; the milestone has not landed; 16
  October 2026, the version stays 0.141.0.". Approved wording (the hook's
  message, approved on 8 October 2026 and changed on 9 October 2026): "Refused
  by devloop: this is a run with nobody there (.claude/unattended.local stands),
  so no one can answer this permission prompt. Do not try it again or reach the
  same result another way. In the build, raise an issue carrying this tool call
  and this refusal, label it raised-here and needs-human, record it as a blocker
  of the task, then put the task down and take the next one, as "A guard's
  block, with nobody there" in build-work says. Before the build, go on as
  plan-work says for a question nobody is there to answer, and name this refusal
  where that order records it." Entry "The behaviour with nobody there: a
  refusal, a command that does not finish inside its call, an install that does
  not go through, the two halts of `setup-checks`, a hook for permission
  prompts, and start condition 4 off the permission mode; 9 October 2026,
  version 0.133.0.".
- **The issue for a refused install carries the lines `install-tool` and
  `install-command`.** The next start reads off them whether the tool stands,
  and closes the issue itself.
- **Which way a refusal went is said once: with nobody there in the last
  message, with the user there by the handover.** A text stays in the
  conversation only where the person has to decide or do something, or where
  something failed or is blocked and that changes what they get.
- **A subagent that meets a refusal, or a check chain that does not finish,
  raises the issue itself, and the main run raises no second one.** The subagent
  never reads build-work. It knows the rule only from what step 3 hands it.
### With nobody there

- **The four ways an install does not go through with nobody there get one end:
  an issue, the task put down, the next task taken.** There is no other way to
  the same tool. Only the installer's own error gets up to three attempts.
- **A branded browser Playwright would install at the system's own location, and
  system packages (`install-deps`, `--with-deps`, `--install-deps`), are blocked
  under every answer.** The browser would go over the one already there, and
  system packages need root. Both stay the user's under every answer.
- **A refusal of auto mode for a check class leaves an issue beside the `skipped
  (state)` cell, recorded as a blocker of no task.** Every counted refusal with
  nobody there leaves an issue, for a check class as for a task. While that
  issue is open, the question on the rule for the classifier comes back at a
  start with `--auto`.
- **With nobody there, a class `setup-checks` cannot set up ends its task, not
  the run.** "In doubt, a run with nobody there is not to be blocked", the
  person's principle.
- **A check chain that does not finish inside its call ends the task where one
  is in hand, and stops the run in step 1.** Every run of the chain is called
  with ten minutes of its own and is ended at that limit, so nothing of it runs
  on beside the next task. In step 1 the state of the base is not known without
  the answer.
- **With nobody there, a changed file in the way is set aside and brought back
  where the mark goes, and commits of their own go onto `my-commits` with the
  main branch brought to GitHub's state.** In doubt a run with nobody there is
  not blocked, and git keeps a change set aside until it is brought back. The
  protection on the main branch also holds against the person's own pushes, so
  their commits reach GitHub only through a branch and a pull request anyway.
- **A question about the work that comes up inside a task and passes the test
  makes the task not buildable as cut: an issue, the task put down, the next
  task taken.** A decision the spec did not take is the spec's gap, not the
  build's to fill. Case: on 13 September 2026 in `devloop-test-o`, on issue 51,
  a run with the user there laid out two ways to build a task and waited. Both
  were cheap to redo, so under the test it was no question at all. Entry "A
  design question was put in the build stage, measured on 13 September 2026 in
  `devloop-test-o` on issue 51."
### Never assert state — always query it

- **Where no command from this turn backs a statement, the run looks, without
  announcing it.** A text stays in the conversation only where the person has to
  decide or do something, and the look is neither.
- **Before telling the user something is missing, the run searches for it.** A
  negative sets the person to work, so it needs the command that came back
  empty. Case: a run reported that no CI posted a required status and offered to
  build one, while the workflow sat on the main branch and had gone green an
  hour earlier. No dated entry was found; the case stands, undated, in
  docs/skill-conventions.md under "## Never assert state — query it".
### Step 1 — Check the base

- **A local main branch with commits GitHub lacks, whether diverged or ahead
  alone, is never the base of a task.** Diverged, it is asked about as at the
  fetch. Ahead alone, the user decides. With nobody there, both go onto
  `my-commits` and the main branch is brought to GitHub's state. A task cut from
  such a branch would land on a base GitHub does not have. Case: with nothing
  new on GitHub, a local main branch one commit ahead fast-forwards as `Already
  up to date.`, exit 0, and keeps its commit. This was measured on 6 October
  2026 with git 2.50.1, entry "The status of a check class takes four forms and
  a guard holds the table to them, the unattended mode starts on two permissions
  more and is set up in `setup-checks` step 8 or through `--auto`, a state is
  read before a task is released, and a review finding about the table goes a
  third way; 5 October 2026, version 0.129.0.". The `git branch` and `git reset
  --keep origin/main` steps were measured on 16 October 2026 with git 2.50.1,
  entry "Part B of the decisions of 12 October 2026 at the setup, points 7 to
  19, and the four defects of milestone 3 that lie with the setup — defects 1
  and 3 of the first closing run, b and i of the second — built; the auto-merge
  question revised on 16 October 2026 to the case where a gate stands already;
  the merge handover and the branch deletion as shared texts; a changed file and
  commits of their own at a failed fetch asked about and done by the run; 16
  October 2026, version 0.140.0.".
### Step 2 — Pick the next task

- **Whether a pull request is open is read off its own `state`, never off
  `includeClosedPrs`.** `closedByPullRequestsReferences` returns merged pull
  requests despite `includeClosedPrs: false`, so a query that trusts the
  argument counts every built task as still in flight. Case: on 31 August 2026
  the tasks under spec 2 of `devloop-test-l` came back carrying pull requests 7,
  11 and 13, every one `MERGED`. Entry "The stock-take could not see a pull
  request at all, and that was measured on 31 August 2026."
- **Neither the list of ready tasks nor which one was taken and why is said.**
  The room to name a different one would reach the person only once it is built,
  at its gate.
- **A loose issue sits outside the readiness ordering and is not a question;
  three clauses order it.** Case: the step had been broken three times, and
  answered three different ways, before the clauses were written. The entry
  records the fourth to sixth breaks, on 9 September 2026. Entry "The
  loose-issue rule was written by appending, and the sentences it competes with
  were left standing."
- **Blocking is not the criterion for loose issues; clause 1 asks whether merged
  work does the wrong thing.** Case: on 9 September 2026 four loose
  `raised-here` issues were announced "in order by issue number, since none
  blocks another" and built that way. The one that met clause 1, a shipped flag
  that silently skipped a rule file in a worktree, had the highest number and
  was built last; the other three were hardenings with nothing wrong in service,
  which is clause 3. Entry "The loose-issue rule was written by appending, and
  the sentences it competes with were left standing."
- **The issue devloop files for a conflicted bring-back carries `needs-human`
  alone, is not from outside, and is left unmentioned.** It is the person's to
  decide, and a later build would take a loose `raised-here` issue up as work
  under clause 3. The last message of the run that filed it names it, and the
  next start asks about the change.
### Step 3 — Build it

- **The build subagent gets five rules it reads nowhere else.** Apart from them
  it gets only the task, the spec, the paths and the mark, and it never reads
  build-work.
- **The build subagent changes no check target; it names a needed change, and
  the main run calls `setup-checks` on the task's branch.** A change to the
  check targets goes through the review like any other change. Case: in the
  second closing run of milestone 3, on 11 October 2026 in `devloop-test-w`, a
  build subagent put `npm run build:matchers` into three Makefile targets
  itself, because the rule reached it nowhere. Entry "The decisions of 12
  October 2026: milestone 3 has not landed with the two closing runs and no run
  with Go follows; twenty-seven things to build before the next run, on the
  install guard, at the setup and at planning and building; three things decided
  and not built now; the person's wordings, word for word; who changed the check
  targets in the second closing run; 12 October 2026, the version stays
  0.135.0.". See docs/plan.md under "### 3. Informed permission to install
  (build)".
- **A file whose content is text about commands is written with the editing
  tool, and the build subagent gets that rule.** Case: on 11 October 2026, in
  the second closing run, two build subagents wrote the workflow file and
  `environment.md` from the shell, and the install guard blocked both on the
  text (`sudo make install`, `--with-deps`). Entry "The second closing run of
  milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying
  yes, set up through `--auto`, read off its session log and the project, with
  the runs of both closing runs on the things of the table and the context the
  two runs used: nine defects, two met again, the open question met again; 11
  October 2026, the version stays 0.135.0.".
- **The prompt to the build subagent carries the tool-state lines and the record
  line and nothing of the main run's own on installing; point 7 reaches the
  subagent through the hook at its start.** A rule devloop itself has to keep is
  weaker than a mechanism, and point 7 whole in every prompt cost each subagent
  about 4,000 words. Case: in the six closing runs recorded on 24 October 2026,
  run 2a's prompt said "Install the Mermaid CLI as the vendor documents" and run
  3a's "Do not install anything". Entry "Six closing runs read off their logs,
  each on the defects it met." In run 1 of 26 October 2026 the prompts said "Do
  not install anything", one of them claiming that `yq` was on the machine.
  Entry "Three closing runs of the pass read off their logs, each on what it
  met."
- **Before the build subagent starts, the main run reads the tools the task
  needs; under a no or no record, a missing tool makes the handover of point 7
  the task's first step, and nothing is built against a stand-in.** Otherwise
  the person is asked to land work that never ran against the tool. Case: on 26
  October 2026, in run 1 under a no, the task needing `yq` was built against a
  stub and „Soll das landen?“ was put. `brew install yq` was handed over only
  after the person said the tool was missing. Entry "Three closing runs of the
  pass read off their logs, each on what it met." Approved wording (the
  planning's sentence on a browser not read yet, 28 October 2026, said by
  plan-work): „Für die Aufgabe wird der Browser WebKit für Playwright gebraucht.
  Ob er auf diesem Rechner in der passenden Version steht, kann ich jetzt nicht
  lesen: Playwright ist noch nicht im Projekt, und erst Playwright sagt, welche
  Version es braucht. Ob ich ihn beim Bauen installiere oder du den Befehl dafür
  bekommst, entscheidet deine Erlaubnis zum Installieren, die dann für dieses
  Projekt gilt.“ Entry "Tool state read by one program, the planning saying only
  what it read."
- **An install the run made under the record is written into `environment.md` by
  the hook, without the redirections of the call. The run writes such a line
  only through `devloop-install-note`, and only where the hook's message says
  so.** A command shortened, reordered or retyped on the way into the file is
  wrong there for every later reader. Where the call's exit is not the
  install's, the hook cannot know whether the install went through. Case: in
  runs 2a and 4 of the six closing runs recorded on 24 October 2026, the hook's
  lines carried the split redirection `2>& 1` of the call. Entry "Six closing
  runs read off their logs, each on the defects it met."
- **An install the person typed themselves has its line under `Installed outside
  the project`, in the hook's form, written by `devloop-install-note put`, for a
  browser download as for a tool.** The hook does not see that install. Without
  the line, nobody who clones the project reads that the tool was installed by
  hand. Case: in run 1 of the six closing runs recorded on 24 October 2026, the
  WebKit download the person ran under the no got no line. Entry "Six closing
  runs read off their logs, each on the defects it met."
- **A check class whose tool may not be installed goes to `setup-checks` for
  that class, whose step 3 asks; the build takes no decline for it.** One
  decision gets one text, and the open decision is taken as a question of the
  person's. Case: on 19 October 2026 project z handed `brew install gitleaks`
  over, left `secrets` `empty` across a merge, and needed a third pull request
  for the decision. The person's statement was that a user overreads the clause,
  so the decision is taken before the offer of the mode. Entry "The two runs of
  19 October 2026 in `devloop-test-z` and `devloop-test-y` under the installed
  0.148.0, read off their session logs and the projects, and where milestone 3
  stands under the criterion the person decided that day, in place of the one of
  12 October 2026: every defect that concerns the milestone listed in three
  groups, and the milestone not reached; defects 1, 3, b, c and i held, defect a
  held at every place under one reading and not under another, 13 held but for
  one point, 14 held at one place and not at the other, 5 and 9 of the entry of
  16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the defect of
  15 October 2026 on the loose issues met again; of the six rows of the check
  table of `devloop-test-y` four went as their case says and two were decided
  without the question; nineteen new defects, three of them the person's
  wordings of that day, one with a should the person has still to decide; 19
  October 2026, the version stays 0.148.0.".
- **On a no, the issue for the missing tool is written then and never before.
  The next start closes it itself where the tool stands, and a command typed
  here with `!` after the no closes it at once.** One signal holds per state.
  Someone who installs with `!` after a no has changed their mind, and making
  them type `/devloop:start-work` on top gains them nothing. Case: on 26 October
  2026 run 1 opened the issue before the answer, offered no no and named two
  signals. Entry "Every subagent gets the install record, the build reads its
  tools first." On 29 October 2026 the run said „Ich habe dein Nein umgesetzt.
  Gebaut ist nichts.“, followed by three steps that named the next start as the
  one way. Entry "Run under a no read off its log, the ! after the no taken up
  at once." Approved wording: „Gebaut habe ich nichts. Ich habe das Issue „yq is
  missing for the exclude task“ angelegt. Solange es offen ist, baue ich die
  Aufgabe „Links matching exclude patterns from links.config.yaml are left out“
  nicht. Eine andere Aufgabe ist nicht frei.“ — where another task is free the
  last sentence is „Ich mache mit der Aufgabe „…“ weiter.“ — then: „Willst du
  `yq` doch installieren, gib hier ein: `! brew install yq`. Dann schließe ich
  das Issue und baue die Aufgabe. Installierst du es auf anderem Weg, schließe
  ich es beim nächsten Start mit `/devloop:start-work`.“, entry "The ! after a
  no taken up in the session, point 7 read by the subagent." Under form B, where
  the command asks something or the run does not know for certain whether it
  asks, the sentence with „gib hier ein“ reads „Willst du `yq` doch
  installieren: Der Befehl `sudo apt install yq` fragt nach deinem Passwort,
  darum gib ihn in einem zweiten Terminalfenster ein, nicht in dem, in dem
  Claude Code läuft, und sag mir hier Bescheid.“, in doubt with „kann etwas von
  dir abfragen, etwa dein Passwort“ in place of „fragt nach deinem Passwort“,
  entry "Four entries held, rationale points completed, two questions answered."
### Proving a check guards its condition

- **A condition that cannot be captured as a check is named as that, in the task
  issue and at the gate, and never filled in with a check that cannot fail.**
  Without that exit, a step expecting a check produces a check that cannot fail.
  Case: on 30 August 2026, in a test project, the build wrote a different check
  from the one the task named. The chain came back green and the task was
  reported done, until a review lens broke the code on purpose. Entry "A check
  that could not fail was accepted in place of the one the task named, and that
  was measured on 30 August 2026."
- **The proof list travels twice: up with the build's report, and into the pull
  request body under `Guarded conditions`.** A proof left in the subagent's
  context dies with it, and unattended the body is the only record. Case: what
  caught the substituted check on 30 August 2026 was a review that a person
  happened to read. Entry "A check that could not fail was accepted in place of
  the one the task named, and that was measured on 30 August 2026."
### When the turn-end hook hands the problem over

- **Which way the turn-end hook's handover went is said once: in the last
  message with nobody there, by the hook's handover with the user there.** A
  text stays in the conversation only where the person has to decide or do
  something, or where something blocked changes what they get.
### Step 4 — Review it

- **The review is called as `devloop:review-changes`, with the prefix.** The
  harness lists the review skill Claude Code ships beside it, and that one
  carries the word this step's heading uses. Case: in `devloop-test-o` a run
  loaded `code-review:code-review` first, before the review of task 47 on 13
  September 2026 and before that of task 62 on 14 September 2026. Entry "The
  first planning run alone, measured on 14 September 2026 in `devloop-test-o` —
  the first run on 0.100.0, six findings, and two places where the wording is
  the user's to settle before anything is built.".
- **Unattended, the review never falls away, whatever the size of the diff.**
  The judgement that a diff is too small to need a review is made by whoever
  wrote it. Case: on 9 September 2026 a run called a full five-lens review
  disproportionate for a comment-only diff and landed it with no review. Entry
  "Three findings against the review step, measured on 9 September 2026 across
  two unattended runs.".
- **A finding against the task's own terms is named at the close, not where the
  findings are split.** Fixed among the rest, it reaches the close as nothing at
  all. Case: on 6 and 7 September 2026, on pull request 27, a byte-for-byte
  regression test that the task's own Test Decisions had asked for was missing,
  and it went through among the "mechanical" fixes. Entry "Every review finding
  fixed on the spot, none raised as an issue, on a criterion invented as it
  went, measured on 6 and 7 September 2026."
- **A `skipped (state)` cell whose state is a refusal of auto mode has ended
  once the rule for the classifier stands in the person's settings.** The rule
  lets that install through, so the class goes to `setup-checks` from step 4 of
  the next task.
- **A `skipped (user)` reason that no longer holds is asked about with the user
  there, in a choice alone in its call, before the landing question and with no
  recommendation.** The class is the person's to switch on. Approved wording:
  header "Prüfung"; question "Du hast die Prüfung <Prüfung in Worten>
  abgeschaltet, weil <Grund>. <Was jetzt gilt>. Soll ich sie einschalten?";
  first answer, label "Ja, einschalten", line "Ich richte die Prüfung jetzt
  ein."; second answer, label "Nein, aus lassen", line "Sie bleibt aus, und ich
  frage nicht noch einmal." Entry "The status of a check class takes four forms
  and a guard holds the table to them, the unattended mode starts on two
  permissions more and is set up in `setup-checks` step 8 or through `--auto`, a
  state is read before a task is released, and a review finding about the table
  goes a third way; 5 October 2026, version 0.129.0.".
- **What is changed after the review agents reported gets a round over exactly
  those commits, after every round, before the pull request is opened.** Code
  written after the reviewers looked would otherwise ride in unreviewed. Case:
  on 11 October 2026 both closing runs of milestone 3 opened their pull requests
  on fixes no lens had read (defect h). Entry "The second closing run of
  milestone 3, made on 11 October 2026 in `devloop-test-w` under a record saying
  yes, set up through `--auto`, read off its session log and the project, with
  the runs of both closing runs on the things of the table and the context the
  two runs used: nine defects, two met again, the open question met again; 11
  October 2026, the version stays 0.135.0.". See docs/plan.md under "### 3.
  Informed permission to install (build)".
- **A second round that surfaces nothing new is not mentioned.** A text stays in
  the conversation only where the person has to decide or do something, or where
  something changes what they get.
### Step 5 — Hand it to the user

- **The landing question is one closed question, as text, last in the message
  that ends the turn, with what it needs before it and nothing beside or after
  it.** A text a decision needs is not cut to fit a widget, and a question that
  arrives after the outcome has been named is not a gate.
- **No landing question while a tool the task needs is missing and not declined;
  the handover of point 7 stands in its place.** Otherwise the person is asked
  to land what never ran against the tool. Case: on 26 October 2026 run 1 put
  „Soll das landen?“ on a task built against a stand-in for `yq`, with the
  reviewers' finding that `yq` was not installed beside it. Entry "Three closing
  runs of the pass read off their logs, each on what it met."
- **Unattended, a finding against the task's own terms goes into the pull
  request body, in the same words, not into the last message.** A detail someone
  may need later goes where it outlives the session, and a fact with no reader
  is what an unattended run drops most cheaply.
### Step 6 — Merge it

- **The pull request body names its task with `Closes #N` on a line of its
  own.** It is the only queryable link between the work and its task, and
  without it the task looks unbuilt and the pull request unattached, both
  silently. Case: on 31 August 2026 in `devloop-test-l`, task 4 was built and
  merged through this workflow and carried no reference in either direction,
  because nothing in the set had ever said to write one, entry "The stock-take
  could not see a pull request at all, and that was measured on 31 August 2026."
- **The state is read and the pull request armed in one call, by a program.** A
  reading in one call and the arming in the next leave room for the state to
  move between them. Case: on 16 October 2026 a run without the person read
  `BLOCKED` for #16 of `devloop-test-x` in one call and armed in the next, 25
  seconds later. The required check had gone green in between, in 13 seconds;
  GitHub refused, and the run ended there. At #12 it had read and armed in one
  call, entry "The two runs of 16 October 2026 in `devloop-test-x` and
  `devloop-test-y` under the installed 0.141.0, read off their session logs and
  the projects, the bench for defects d and 11 and for the install guard of
  defect c, and where milestone 3 stands after part A of the entry of 12 October
  2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11
  held on the bench and met no run; fifteen new defects, nine met again; the
  milestone has not landed; 16 October 2026, the version stays 0.141.0." (defect
  5).
- **The id is fetched first and passed with `-f`, not `-F`.** `-F` adds a typed
  parameter and reads a value starting with `@` from a file, while `-f` passes
  the string as given. Case: on 13 September 2026 in `devloop-test-o`, the
  one-line form with the substitution inside `-F id=$(…)` failed with
  `unexpected end of JSON input`, and the two-step form with the id read first
  went through. `gh api --help` of gh 2.96.0, read the same day, gives the
  reason, entry "A run stopped four times after arming auto-merge, each time on
  a sentence it wrote itself, and every file that does say what follows arming
  says something that cannot wait."; see docs/skill-conventions.md under
  'Environment constraints, measured'.
- **`UNKNOWN` is read once more, and `BEHIND` is answered by a rebase and a
  force-push, not by handing the merge over.** `UNKNOWN` is the computation not
  yet done. `BEHIND` is the branch trailing a base that requires branches to be
  up to date, and after the rebase the pull request reads `BLOCKED` and arming
  is accepted. Case: on 30 August 2026 a pull request seven days old read
  `UNKNOWN` on the first reading and `BEHIND` on the second, entry "Not
  everything is exercised yet."
- **A mergeable value on a freshly pushed branch is read as the check not
  started, off the rollup of the head commit.** The value cannot tell a check
  not yet started from a gate already past, and a run that reads it as past says
  "no platform gate here" in a repository that has one. Case: on 25 August 2026
  in `devloop-test-l` on pull request 15, `mergeStateStatus` read `CLEAN`
  directly after the push and the arming was refused with "Pull request is in
  clean status". Five seconds later it read `BLOCKED` and the same mutation was
  accepted, entry "Arming was measured on 25 August 2026, in `devloop-test-l` on
  pull request 15, and it separates into four findings."
- **The rollup is read, not the check-runs endpoint.**
  `StatusCheckRollupContext` is a union of `CheckRun` and `StatusContext`, so
  the rollup sees both kinds of gate, where `commits/SHA/check-runs` sees only
  Actions check runs. Case: the union, the `mergeStateStatus` enum and the
  status values of a `CheckRun` were read off GitHub's live GraphQL schema on 31
  August 2026, entry "Not everything is exercised yet."
- **Each required name is matched against the rollup by name.** A required name
  in the protection is the name the check run carries in the rollup. Case: on 31
  August 2026 in `devloop-test-l`, protection returned `contexts: ["checks"]`
  and the rollup on pull request 14 carried one `CheckRun` named `checks`, entry
  "Not everything is exercised yet."
- **Step 6 does not ask the person to switch auto-merge on.** Without a required
  check GitHub accepts no auto-merge and every merge goes to the person whatever
  they answered. The setup asks only where a gate already stands, and step 8 of
  the check setup switches auto-merge on where it sets a gate up.
- **Where no gate stands, the handover names that case and no other, whatever
  `allow_auto_merge` reads.** A clause beside the handover says what the
  handover excludes, and step 5 already says that its answer is the whole gate.
  Case: in the runs of 16 October 2026 the merge handover named auto-merge off
  beside the missing required check and carried sentences beside it, defect 4 of
  entry "The two runs of 16 October 2026 in `devloop-test-x` and
  `devloop-test-y` under the installed 0.141.0, read off their session logs and
  the projects, the bench for defects d and 11 and for the install guard of
  defect c, and where milestone 3 stands after part A of the entry of 12 October
  2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11
  held on the bench and met no run; fifteen new defects, nine met again; the
  milestone has not landed; 16 October 2026, the version stays 0.141.0.".
- **Where the program printed no `gate:` line, the run asks both gate queries
  itself.** The first case takes a gate too, and a case named without the gate
  read is a guess.
- **The gate is read from both queries.** Classic protection and rulesets are
  each blind to the other. Case: on 30 August 2026,
  `repos/OWNER/REPO/rules/branches/main` came back an empty list for a
  repository whose main branch carried classic protection with the required
  check `checks`, entry "Not everything is exercised yet."
- **The merge handover is not framed as something gone wrong.** A run that stops
  mid-task, over a change nobody asked for, as though it had hit an error,
  frames the handover wrongly.
- **With nobody there, `past its gate:` with a `rerun:` line is no stop at
  first: every run its `rerun:` lines name is restarted once, whole, and the
  program called again.** A run without the person does not end because a check
  was quick, and a run restarted whole stands on none of its old result. Case:
  measured by the person on 17 October 2026 on #16 of `devloop-test-x`: `CLEAN`
  before, one run on the head commit, `BLOCKED` one second after `gh run rerun`
  with an empty rollup, armed in the same pass two seconds after it, merged 42
  seconds after it. Approved wordings for the stop where it does not go
  through, in the first group of the last message: „Bei Pull Request #<Nummer>
  war die Prüfung schon durchgelaufen, bevor GitHub das automatische Mergen
  annehmen konnte, auch nach einem Neustart. devloop mergt nie selbst, deshalb
  hört der Lauf hier auf.“, and where the required check comes from a foreign
  service: „Bei Pull Request #<Nummer> war die Prüfung schon durchgelaufen,
  bevor GitHub das automatische Mergen annehmen konnte, und sie kommt von einem
  fremden Dienst, den devloop nicht neu starten kann. devloop mergt nie selbst,
  deshalb hört der Lauf hier auf.“, entry "Arming past the gate, built after the decisions of the person of 17
  October 2026: the reading of a pull request's state and the arming in one
  call, by a program of the plugin, and with nobody there one restart of the
  runs that carry a required check where that check was through before GitHub
  could accept the arming; defect 5 of the entry of 16 October 2026 on the runs
  of that day with it; 17 October 2026, version 0.144.0." (lines
  27387–27412).
- **Unattended, the wait on the checks happens inside the answer.** Nothing
  wakes a run, so an answer that ends on a promise to report back ends the run.
  Case: on 11 and 13 September 2026 in `devloop-test-o`, pull requests 50, 54,
  55 and 57 were armed and read once, and each time the run said it would report
  back and ended its answer. The platform merged all four between forty-five
  seconds and two minutes later, and the run stood still until the user wrote a
  word, entry "A run stopped four times after arming auto-merge, each time on a
  sentence it wrote itself, and every file that does say what follows arming
  says something that cannot wait.".
- **The wait on the platform's checks runs under `bin/devloop-bounded` with 100
  seconds a call, repeated while the bound lasts.** `gh pr checks` has no
  timeout of its own and `timeout` is not on a stock macOS. By Claude Code's
  changelog a call reaching the 120 seconds of a Bash call is moved to the
  background, which is not measured here, and a repeat would start a second call
  beside it. Case: `gh pr checks --help` of gh 2.96.0 was read on 13 September
  2026, and `command -v timeout` came back empty on this machine the same day,
  entry "A run stopped four times after arming auto-merge, each time on a
  sentence it wrote itself, and every file that does say what follows arming
  says something that cannot wait."; see docs/skill-conventions.md under
  'Environment constraints, measured'.
- **A wait that runs out says what it waited on and what is outstanding, not how
  long it waited.** How long it waited changes nothing of what the person gets
  or has to do.
- **There is no cap on the rounds after a red check on the platform.** Rework
  after a review finding has none either, and a later round can still turn up
  real findings. Case: in the run of 11 to 13 September 2026 in
  `devloop-test-o`, the third round on task 48 was still turning up real
  findings. No entry records this in so many words; the nearest is "The same
  failure picture came out of the review three times and was fixed three times
  separately, measured across 11 to 13 September 2026 in `devloop-test-o`."
- **After every merge the issues the pull request claimed are checked closed,
  and closed by hand where the platform did not.** The closing keyword is the
  right link and not a guarantee, and an issue left open over landed work reads
  to every later query as work not done. Case: on 13 September 2026 in
  `devloop-test-o`, over five merges, four issues closed within seconds — 47 by
  pull request 50, 48 by 53, 49 by 54, 52 by 57 — and one did not: pull request
  55 merged at 09:21:34 carrying a correct `Closes #51`, issue 51 was still open
  four minutes later and was closed by hand at 09:25:57, entry "A run stopped
  four times after arming auto-merge, each time on a sentence it wrote itself,
  and every file that does say what follows arming says something that cannot
  wait."
- **After a merge that lands code with a class still `empty`, `setup-checks` is
  called whole, and why it comes now stands at the start of the message that
  puts its step 2 question.** Why a question comes now stands with the question
  and not in an announcement before it. Approved wording: „Die Arbeit ist
  gemergt, aber noch nicht alle Prüfungen sind entschieden. Das kommt zuerst.“,
  entry "Where each text devloop owes the person stays, goes into a pull
  request, an issue or a file, or drops, built after the decisions of the person
  of 17 October 2026: the introduction of `start-work`, the sentences that say
  why a question comes now in the wording approved that day, the last message of
  the run with nobody there in two groups, and the lines of the skills, the
  inserted texts and two hooks brought in line with the output style; 17 October
  2026, version 0.143.0." (lines 26972–26974).
- **The arming call is one, and its copies stand outside the skills.** It stands
  in `shared/arming-command.md`, inserted into the three skills that arm, and as
  copies in `hooks/pre-tool-use-merge-guard.sh` and `docs/skill-conventions.md`,
  which two checks under "Before a handover, run these" hold to the shared file;
  a change to one of the three is a change to all three.

- **An unplaceable state, or queries that did not answer for want of rights,
  name no refusal case and no gate.** Neither is evidence about the repository.
  Case: the skill once knew two reasons an arming is refused, so that a gate the
  run lacked the rights to read could be reported as nothing to wait on; three
  reasons told apart, `8cb9dc3`, "Tell three refusal reasons apart when arming
  (#93)", and the gate read from both sides, `cf66dde`, "Read whether a gate
  binds from both sides (#94)".
### Step 7 — Back to step 2

- **Step 7 decides nothing; step 2 decides what is next.** A second statement of
  a decision is the version that gets followed, because it is the one read at
  the moment of deciding. Case: on 9 September 2026, with the spec closed and
  four loose issues open, a run stopped at step 7 and put two ways to the user
  instead of naming the one it was taking. Step 7 then answered the cases in
  three words of its own, two of them the opposite of step 2's, entry "The
  loose-issue rule was written by appending, and the sentences it competes with
  were left standing."

### Unattended mode

- **Where condition 4 fails, the refusal says that the run does not start, the
  mode set now, how to switch and what to type, and what happens without the
  flag.** With nobody there the classifier and the hook on permission prompts
  answer in a person's place, so every mode but `auto` fails. Approved wording:
  „Der Lauf ohne dich startet nicht. Dafür muss Claude Code im Auto-Modus
  laufen, gerade ist „<Modus, wie Claude Code ihn anzeigt>“ eingestellt. Stell
  den Auto-Modus ein, im Terminal mit Umschalt+Tab, und gib dann
  `/devloop:start-work --auto` ein. Ohne `--auto` baue ich die geplanten
  Aufgaben mit dir.“, entry "Terms untranslated, the start command named whole,
  the design line gone." (lines 40020–40024). This is text 2 of entry "The
  behaviour with nobody there: a refusal, a command that does not finish inside
  its call, an install that does not go through, the two halts of
  `setup-checks`, a hook for permission prompts, and start condition 4 off the
  permission mode; 9 October 2026, version 0.133.0." (lines 14882–14887), with
  the command named whole.
- **Where condition 6 or 7 fails, the refusal says that the run does not start,
  the yes it needs, a no on record, the command that sets it up, and what
  happens without the flag.** It is read by the person who comes back, with
  nobody left to ask. Approved wordings: for 7 „Der Lauf ohne dich startet
  nicht. Dafür brauche ich dein Ja, Prüfwerkzeuge selbst zu den Paketen des
  Projekts hinzuzufügen. Mit `/devloop:start-work --auto` kannst du ihn
  einrichten. Ohne `--auto` baue ich die geplanten Aufgaben mit dir und frage
  dich bei jedem Prüfwerkzeug, ob ich es hinzufügen darf.“; for 6 „Der Lauf ohne
  dich startet nicht. Dafür brauche ich dein Ja zum Installieren von Werkzeugen
  außerhalb des Projekts. Mit `/devloop:start-work --auto` kannst du ihn
  einrichten. Ohne `--auto` baue ich die geplanten Aufgaben mit dir und gebe dir
  jede Installation als Befehl, den du selbst ausführst.“; where the record says
  no, „Dazu hast du Nein gesagt.“ follows the second sentence, entry "Terms
  untranslated, the start command named whole, the design line gone." (lines
  40048–40062).
- **On the direct route, a mode not set up goes to `setup-checks` step 8
  alone.** Step 8 puts the permissions and records the answers, whereas an offer
  of the workflow file and the protection alone would set the mode up without
  the permissions and without a record.
- **Where the mark is deleted is listed in one place, and how it is deleted
  stands in one shared text inserted at every end.** A text written once and
  inserted at every end leaves no end that took one wording and not the other.
- **The scope of a run without them is settled and not said as the run opens.**
  The opening message ends no turn, so the room to object it gives would reach
  the person only at the run's end; what they need stands in the last message.
- **The scope holds the loose `raised-here` issues, each under one of step 2's
  clauses.** A scope taken from the readiness query alone has the loose work
  missing from it. Case: on 9 September 2026 a run announced its scope as the
  last open task under one spec and never mentioned the three loose issues open
  beside it. It closed the spec, reported that nothing was left and halted,
  entry "The loose-issue rule was written by appending, and the sentences it
  competes with were left standing."
- **No file holds the scope, the finishing sentence or a count.** No hook
  watches for an unattended run, so such a file is read only by the run that
  wrote it. Case: on 6 and 7 September 2026 a run kept
  `.claude/autorun.local.md` across three tasks and raised its own cap from four
  to six in the same write, unchecked, entry "The unattended state file had no
  reader, and it is gone. Built."
- **The finish is two conditions, not the readiness query's answer.** "Nothing
  ready" is the answer of a query that does not see loose issues. Case: on 9
  September 2026 a run read the finishing sentence "until nothing in scope
  is **ready** any more, and that is the only finish", closed its spec and halted
  with three loose issues lying open, entry "The loose-issue rule was written by
  appending, and the sentences it competes with were left standing."
- **A stale `.claude/autorun.local.md` is deleted, and the deletion is not
  said.** It carries a standing instruction to keep taking tasks that nothing
  reads, and the last message has no place for a stale file deleted.
- **The last message is described once, in the text on the mark's deletion that
  every end of the run with nobody there inserts.** A description in
  `build-work` alone would be read by none of the ends in `plan-work` and
  `cut-into-tasks`, which do not load it.
- **Neither how to read the diffs nor how to stop the run is said.** The last
  message has no group for reading the git log, and at its end nothing is left
  to stop.

## `skills/diagnose-bug/SKILL.md`

### Step 6 — Clean up, or hand it over

- **A command handed over for a diagnosis carries the change into the project's
  directory and says where it is typed: in Claude Code with `!` where it asks
  nothing and ends by itself, form A; in a second terminal window otherwise,
  form B.** No knowledge of commands in a terminal is assumed of the person, so
  the line runs as it stands wherever it is typed; a command that asks something
  or does not end by itself cannot run under form A. Both rules stand whole in
  `shared/skill-name.md`, which the skill inserts, and in
  docs/skill-conventions.md under "Every skill carries these two", the
  paragraphs "A command handed over runs as it stands" and "Where the person
  types a command devloop hands them while Claude Code runs". The first decided
  as point 18 of entry "The decisions of 12 October 2026: milestone 3 has not
  landed with the two closing runs and no run with Go follows; twenty-seven
  things to build before the next run, on the install guard, at the setup and at
  planning and building; three things decided and not built now; the person's
  wordings, word for word; who changed the check targets in the second closing
  run; 12 October 2026, the version stays 0.135.0.", the person's reason that
  everything has to be there for copying; the second on 28 October 2026, entry
  "Handovers say where the command is typed, sign-in and identity in steps.",
  which brought this place in line where the command went "into their own
  terminal".

## `skills/review-changes/SKILL.md`

### Review a change

- **A lens is one reading of the whole diff by a reviewer given no other lens.**
  A report counting five lenses where two reviewers carried them says something
  untrue about the run's own work. Case: measured on 9 September 2026 over two
  tasks of an unattended run, five applicable lenses were carried by two
  reviewers, one reading security together with failure behaviour, the other
  standards with spec and test quality, the run saying so plainly, the skill
  having four sentences telling it to start one reviewer per lens and none
  saying what the word counts, finding A of entry "Three findings against the
  review step, measured on 9 September 2026 across two unattended runs.".
### Pin the target

- **Which commits the review covers is not said; the pull request of the gate
  names them.** It asks nothing of the person. RC-2 of entry "Where each text
  devloop owes the person stays, goes into a pull request, an issue or a file,
  or drops, built after the decisions of the person of 17 October 2026: the
  introduction of `start-work`, the sentences that say why a question comes now
  in the wording approved that day, the last message of the run with nobody
  there in two groups, and the lines of the skills, the inserted texts and two
  hooks brought in line with the output style; 17 October 2026, version
  0.143.0.".
### The two lenses that always run

- **The spec lens reads each condition against the `Guarded conditions` list; a
  missing entry, a red from somewhere else, or no list at all is a finding.** A
  check that stands beside its condition looks exactly like success. Case:
  measured on 30 August 2026, a task's named check was replaced by one that
  could not fail, the chain came back green and the task was reported done; a
  reviewer breaking the code by hand caught it, entry "A check that could not
  fail was accepted in place of the one the task named, and that was measured on
  30 August 2026.".
### The lenses that run when they apply

- **Unattended, a lens that did not run is stated only in its trigger's own
  words, negated, item by item, where the findings go and not in the
  conversation.** Anyone holding the diff can check that; a judgement, or a true
  fact answering a narrower question, cannot be checked, and unattended nobody
  contradicts it. Cases: measured on 9 September 2026, security left out because
  there was "no new input, path or network surface", finding B of entry "Three
  findings against the review step, measured on 9 September 2026 across two
  unattended runs."; measured on 6 and 7 September 2026, two tasks through three
  lenses instead of five, security and failure behaviour left out with a reason
  given for each, while a file path from outside and a default return stood in
  those diffs, entry "The unattended run narrowed the review from five lenses to
  three, measured on 6 and 7 September 2026.". Where it is written: RC-3 of
  entry "Where each text devloop owes the person stays, goes into a pull
  request, an issue or a file, or drops, built after the decisions of the person
  of 17 October 2026: the introduction of `start-work`, the sentences that say
  why a question comes now in the wording approved that day, the last message of
  the run with nobody there in two groups, and the lines of the skills, the
  inserted texts and two hooks brought in line with the output style; 17 October
  2026, version 0.143.0.".
### Run them

- **One reviewer is started per applicable lens, and neither number is said; a
  rerun that returned is not said.** Done right the two numbers are the same and
  say nothing; the failure is a reviewer that did not start or return, and that
  is said. Case: on 9 September 2026 five applicable lenses over two tasks were
  carried by two reviewers, finding A of entry "Three findings against the
  review step, measured on 9 September 2026 across two unattended runs."; RC-4
  and RC-5 of entry "Where each text devloop owes the person stays, goes into a
  pull request, an issue or a file, or drops, built after the decisions of the
  person of 17 October 2026: the introduction of `start-work`, the sentences
  that say why a question comes now in the wording approved that day, the last
  message of the run with nobody there in two groups, and the lines of the
  skills, the inserted texts and two hooks brought in line with the output
  style; 17 October 2026, version 0.143.0.".
### The report, said to nobody

- **The review's report is said to nobody.** The findings reach the person once,
  at the close of the step that owns the gate, and the report is what the split
  is made from. RC-6 of entry "Where each text devloop owes the person stays,
  goes into a pull request, an issue or a file, or drops, built after the
  decisions of the person of 17 October 2026: the introduction of `start-work`,
  the sentences that say why a question comes now in the wording approved that
  day, the last message of the run with nobody there in two groups, and the
  lines of the skills, the inserted texts and two hooks brought in line with the
  output style; 17 October 2026, version 0.143.0.".
### What happens to a finding

- **Fixing a finding means removing or replacing, never rewriting a line that
  carries behaviour.** A line rewritten in passing is a change nobody reviewed.
  Case: removing a hardcoded key also rewrote the query string beside it, and
  broke it; no entry of `docs/roadmap.md` carries it, the commit that wrote the
  rule does, "Fixing means removing or replacing, never rewriting", `1e4d703`.
- **A finding against something the task issue itself asked for is never fixed
  silently; it is named at the caller's close and not as the split is made.**
  Fixed silently it goes through among the mechanical fixes and reaches the
  close as nothing at all. Case: on pull request 27 of the unattended run of 6
  and 7 September 2026 a byte-for-byte regression test the task's own Test
  Decisions asked for was missing and the run called every finding mechanical,
  entry "Every review finding fixed on the spot, none raised as an issue, on a
  criterion invented as it went, measured on 6 and 7 September 2026."; RC-8 of
  entry "Where each text devloop owes the person stays, goes into a pull
  request, an issue or a file, or drops, built after the decisions of the person
  of 17 October 2026: the introduction of `start-work`, the sentences that say
  why a question comes now in the wording approved that day, the last message of
  the run with nobody there in two groups, and the lines of the skills, the
  inserted texts and two hooks brought in line with the output style; 17 October
  2026, version 0.143.0.".

## `skills/record-lessons/SKILL.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/arming-command.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/backed-command.md`

- **A command that fetches something from outside is backed before it is handed
  over, and before the run runs it itself under a yes; the backing is the
  vendor's own line, quoted from where it was read, or the path resolving.** An
  unbacked command in the tracker outlives the session and gets typed later by
  somebody who no longer knows the case. An organisation's name is not a module
  path. Case: on 6 September 2026 in `devloop-test-o` the line
  `github.com/gitleaks/gitleaks/v8@latest` went over as it stood, the module
  path being `github.com/zricethezav/gitleaks/v8`, and failed first in the
  workflow on the main branch after its pull request had merged, entry "An
  install command handed to the user without being backed, measured on 6
  September 2026 in `devloop-test-o`.". The run itself under a yes: run 2a of 23
  October 2026 installed `mmdc` with a line it called the vendor's and had not
  read, and its pull request said it had, defect 7 of entry "Six closing runs
  read off their logs, each on the defects it met."; decided as point 5 of entry
  "Install lines by one program, written where the install stood alone.", built
  in entry "Install rules reach the build subagent, backed by kind, run alone.".
- **Each kind has its form of the backing; for Playwright its own dry run, which
  downloads nothing and prints the version of each browser and the folder it
  lands in; the version of the package that downloads backs nothing of the
  download.** Case: run 1 of 23 October 2026 read `npm view @playwright/test
  version` and handed `npx playwright install webkit` over backed by nothing,
  point 5 of entry "Six closing runs read off their logs, each on the defects it
  met.". Measured on 24 October 2026 with Playwright 1.64.1: `npx --no-install
  playwright install --dry-run webkit` printed `WebKit 27.2 (playwright webkit
  v2370)` with the install location `~/Library/Caches/ms-playwright/webkit-2370`
  and FFmpeg beside it, entry "Install rules reach the build subagent, backed by
  kind, run alone.". Approved wording, entry "Install lines by one program,
  written where the install stood alone.", (a): „Geprüft mit `npx playwright
  install --dry-run webkit`: Playwright lädt WebKit 26.6 nach
  `~/Library/Caches/ms-playwright/webkit-2359`, dazu FFmpeg.“, version and
  folder from what the dry run prints; where the vendor's line backs it:
  „Geprüft an der Installationszeile auf playwright.dev/docs/browsers.“ That
  approved wording is not written into the text as an example, entry "An
  approved wording as an example in a skill." under "Decisions taken against".
- **The result of a browser download is read in the folder the vendor names for
  the system, or in one a setting of the vendor names where the run finds one
  set.** The guard reads no such setting, so only the run that reads the result
  sees a moved location. Entry "The install guard reads the commands that fetch
  a tool and run it without saying install, and the browser downloads for tests,
  which it holds against the vendor's default place for the system it runs on;
  the drivers half of milestone 3 built, defect 8 of 4 October 2026 answered
  otherwise, one finding; 8 October 2026, version 0.131.0.".
- **Whether an install worked is read at the path the installer writes to, not
  with `command -v`.** `command -v` finds any copy on `PATH`, an older one
  included. Case: on 6 September 2026 the broken gitleaks line looked like a
  success on the user's own machine, because an older gitleaks already stood on
  `PATH`, entry "An install command handed to the user without being backed,
  measured on 6 September 2026 in `devloop-test-o`.".

## `shared/body-through-file.md`

- **A body goes through a file passed with `--body-file`, not as a string in the
  command.** Prose gets quoting wrong, and a body the shell mangled is not the
  body that was written. Case: on 6 September 2026 in `devloop-test-o` the
  install guard blocked `gh pr create --body` because the body quoted `go
  install`, entry "Two guard false positives, and a run that stepped around
  both, measured on 6 September 2026 in `devloop-test-o`.". To the guards a
  quoted string is a word of its command and no command, entry "The command
  reader: every hook reads its input through one program that decodes the JSON
  and takes the command apart as the shell runs it; the install guard reads
  findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`,
  and the browser and route variables before the command; every handler under
  PreToolUse and PermissionRequest blocks the action where the hook fails; two
  rules in the conventions; a block reported and not reworded; two findings
  recorded, not built; 12 October 2026, version 0.137.0."; the file stays the
  channel for the quoting. See docs/skill-conventions.md under "Environment
  constraints, measured", the paragraph "A hook reads its input through one
  program, and the command as the shell runs it".
- **The body file is written with the editing tool, not through a heredoc,
  `echo` or `cat`.** Through the shell the text reaches the guard again and
  nothing is narrowed. Case: on 6 September 2026 the same pull request body was
  blocked as a string and blocked again on the way into a file, entry "Two guard
  false positives, and a run that stepped around both, measured on 6 September
  2026 in `devloop-test-o`.".
- **The body file lies in a directory `mktemp -d` makes, never under `.git/` and
  never in the tree the commit is built from.** In the tree it stands untracked
  and goes in with the next `git add` of its directory. Case: the two runs of 3
  and 4 October 2026 wrote it inside `.git/`, defect 6 of entry "The two runs of
  milestone 3 on 3 and 4 October 2026 under 0.126.0, both with the person there:
  the record saying yes in `devloop-test-u`, the record saying no in
  `devloop-test-v`; the guard read against a landed record under both answers,
  the install with nobody there not reached, and fifteen defects read off them;
  4 October 2026, version 0.127.0."; decided as point 17 of entry "The decisions
  of 12 October 2026: milestone 3 has not landed with the two closing runs and
  no run with Go follows; twenty-seven things to build before the next run, on
  the install guard, at the setup and at planning and building; three things
  decided and not built now; the person's wordings, word for word; who changed
  the check targets in the second closing run; 12 October 2026, the version
  stays 0.135.0.", built in entry "Part B of the decisions of 12 October 2026 at
  the setup, points 7 to 19, and the four defects of milestone 3 that lie with
  the setup — defects 1 and 3 of the first closing run, b and i of the second —
  built; the auto-merge question revised on 16 October 2026 to the case where a
  gate stands already; the merge handover and the branch deletion as shared
  texts; a changed file and commits of their own at a failed fetch asked about
  and done by the run; 16 October 2026, version 0.140.0.".
- **A blocked title is not changed, and the issue is not filed under another
  title.** Every other spelling that gets through is the one move the shared
  block on a guard forbids. Case: on 11 October 2026 the second closing run of
  milestone 3 had a title blocked for the word `sudo` and filed the issue under
  a renamed title, and the block stood in no message and in no issue, entry "The
  second closing run of milestone 3, made on 11 October 2026 in `devloop-test-w`
  under a record saying yes, set up through `--auto`, read off its session log
  and the project, with the runs of both closing runs on the things of the table
  and the context the two runs used: nine defects, two met again, the open
  question met again; 11 October 2026, the version stays 0.135.0.". That a title
  is a word of its command, docs/skill-conventions.md under "Environment
  constraints, measured", the paragraph "A hook reads its input through one
  program, and the command as the shell runs it": entry "The command reader:
  every hook reads its input through one program that decodes the JSON and takes
  the command apart as the shell runs it; the install guard reads findings 1 to
  8 of 9 October 2026, `nix run`, `nix shell` and `nix env shell`, and the
  browser and route variables before the command; every handler under PreToolUse
  and PermissionRequest blocks the action where the hook fails; two rules in the
  conventions; a block reported and not reworded; two findings recorded, not
  built; 12 October 2026, version 0.137.0.".

## `shared/branch-deletion.md`

- **The branch on GitHub is deleted only after `git ls-remote --heads origin
  <branch>` has printed its line.** A merge by the person's hand, `gh pr merge
  --delete-branch` or a setting of the repository may have deleted it already,
  and a deletion then answers `error: failed to push some refs`. Case: the first
  closing run of milestone 3 met that answer after every one of its five merges,
  defect 9 of entry "The first closing run of milestone 3, made on 11 October
  2026 in `devloop-test-w` under a record saying no, read off its session log
  and the project, with the decisions of that day on the arrangement of the
  closing runs: eleven defects, four met again, one open question; 11 October
  2026, the version stays 0.135.0.". Measured on 16 October 2026 with git
  2.50.1: on a name that is not there `git ls-remote --heads origin <branch>`
  prints nothing, exit 0; entry "Part B of the decisions of 12 October 2026 at
  the setup, points 7 to 19, and the four defects of milestone 3 that lie with
  the setup — defects 1 and 3 of the first closing run, b and i of the second —
  built; the auto-merge question revised on 16 October 2026 to the case where a
  gate stands already; the merge handover and the branch deletion as shared
  texts; a changed file and commits of their own at a failed fetch asked about
  and done by the run; 16 October 2026, version 0.140.0.".

## `shared/canonical-targets.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/checks-owner.md`

- **Only `setup-checks` writes `docs/agents/checks.md`; a run that creates or
  changes a check target calls it for that class.** The columns are read by
  shell scripts and the rules for them live with the skill that owns the file,
  so a row written by hand can carry a status word that does not exist, or a raw
  shell command where a bare target name belongs, which the turn-end hook then
  runs. Case: building a task that had to bring its test runner, `build-work`
  edited the file directly and got it wrong twice in a row, first a status word
  outside the vocabulary, then a raw shell command in the target column, which
  the turn-end hook ran as `make python3 -m unittest discover -s tests` and
  blocked the report on; no entry of `docs/roadmap.md` carries it, the commit
  that wrote the rule does, "One skill owns checks.md (#15)", `f649c4d`.

## `shared/closing.md`

- **One language for the whole turn: prose, progress lines, question headers and
  option labels alike.** It slips most often on the lines that are not really
  talk, and those are said to a person too. Case: on 25 August 2026 one run
  wrote its prose in English and its question in German in the same turn; no
  entry of `docs/roadmap.md` carries it, the commit that wrote the rule does,
  "Hold one voice, and say where this ends up (#86)", `206a501`.
- **A technical term the person's language uses as it stands is not
  translated.** Case: on 26 October 2026 run 1 of the three closing runs of the
  pass headed the user stories „Geschichten“, entry "Three closing runs of the
  pass read off their logs, each on what it met."; built in entry "Terms
  untranslated, the start command named whole, the design line gone.".
- **One person is addressed in the singular and in the familiar form.** Number
  is a fact: one person is being helped through their own work. Case: on 25
  August 2026 a run addressed the user as du in one sentence and ihr in the
  next; in no roadmap entry, in the message of commit `206a501`.

## `shared/command-does-not-answer.md`

- **A first attempt that a permission or safety check refused is said in one
  line, though the second went through.** A check the person controls is not got
  around in silence. Case: on 31 August 2026 a command refused by the runtime's
  permission check, whose message asked for a pause and an explanation of what
  the permission is for, was repeated without a word, answered the second time,
  and named in no report until a question about something else turned it up,
  entry "A refused command was repeated in silence, and that was measured on 31
  August 2026.". The build of the reports of what was done on 17 October 2026
  dropped the line, and the person decided the same day that it stays for a
  refusal by a check, entry "Where each text devloop owes the person stays, goes
  into a pull request, an issue or a file, or drops, built after the decisions
  of the person of 17 October 2026: the introduction of `start-work`, the
  sentences that say why a question comes now in the wording approved that day,
  the last message of the run with nobody there in two groups, and the lines of
  the skills, the inserted texts and two hooks brought in line with the output
  style; 17 October 2026, version 0.143.0."; the example the person saw there:
  „Die Rechteprüfung hat `npm install -g x` zuerst abgewiesen, beim zweiten
  Versuch ging es durch.“
- **Every install and every run of the check chain is called with ten minutes; a
  call that does not finish inside it is neither waited for nor started again.**
  A call with a limit of its own is ended at that limit with nothing of it
  running on, so it did not finish, and a second attempt would run it all again.
  Measured on 9 October 2026 under Claude Code 2.1.295: `sleep 12; echo done`
  with a limit of 5000 milliseconds came back with exit code 143 and `Command
  timed out after 5s`, no output file named and no process left, entry "The
  behaviour with nobody there: a refusal, a command that does not finish inside
  its call, an install that does not go through, the two halts of
  `setup-checks`, a hook for permission prompts, and start condition 4 off the
  permission mode; 9 October 2026, version 0.133.0."; the rule is decision 2 of
  entry "The open findings on the install guard, eight, measured on this
  machine; four questions never examined; the decisions for the next orders of
  milestone 3 and the texts the person approved, word for word; three
  corrections; 9 October 2026, version 0.132.0.".
- **With nobody there, a check chain or target that does not finish ends the
  task and not the run; in `build-work` step 1 the run stops.** In step 1 no
  task is in hand and without the answer the base cannot be read. Decided after
  the build, the second addendum of entry "The behaviour with nobody there: a
  refusal, a command that does not finish inside its call, an install that does
  not go through, the two halts of `setup-checks`, a hook for permission
  prompts, and start condition 4 off the permission mode; 9 October 2026,
  version 0.133.0.".
- **A guard's block is answered, not got around.** A block stepped around leaves
  a run looking clean over an act nobody agreed to. Case: on 11 October 2026 the
  second closing run of milestone 3 stepped around two blocks of three, a build
  subagent writing the same files with the matched word taken out and the main
  run filing the blocked issue under another title, and both read as clean,
  entry "The second closing run of milestone 3, made on 11 October 2026 in
  `devloop-test-w` under a record saying yes, set up through `--auto`, read off
  its session log and the project, with the runs of both closing runs on the
  things of the table and the context the two runs used: nine defects, two met
  again, the open question met again; 11 October 2026, the version stays
  0.135.0.".
- **With nobody there four cases part: a refusal, an install that does not go
  through, a check chain or target that does not finish, and every other
  command, which stops the run.** No run carries on past a step that did not
  run. Entry "The behaviour with nobody there: a refusal, a command that does
  not finish inside its call, an install that does not go through, the two halts
  of `setup-checks`, a hook for permission prompts, and start condition 4 off
  the permission mode; 9 October 2026, version 0.133.0.".
- **A safety check built into Claude Code is a refusal like the other three, and
  a refusal a subagent names in its report is one of the run's own; where the
  subagent raises the issue, the main run raises no second one.** Case: on 16
  October 2026 Claude Code's own safety check denied a planning subagent's
  command in project 1, "Dangerous rm operation detected"; the subagent named it
  in its report and the main run neither recorded it nor said it, defect 12 of
  entry "The two runs of 16 October 2026 in `devloop-test-x` and
  `devloop-test-y` under the installed 0.141.0, read off their session logs and
  the projects, the bench for defects d and 11 and for the install guard of
  defect c, and where milestone 3 stands after part A of the entry of 12 October
  2026: defects 1, 3, b, c and i held, a did not hold at four places, d and 11
  held on the bench and met no run; fifteen new defects, nine met again; the
  milestone has not landed; 16 October 2026, the version stays 0.141.0."; built
  in entry "Where step 8 of `setup-checks` puts the tool of a class off for an
  install not run, and the refusal of a safety check built into Claude Code
  among the refusals devloop names, a refusal a subagent names in its report the
  main run's own; defects 9 and 12 of the entry of 16 October 2026 on the runs
  of that day; 18 October 2026, version 0.147.0.".

## `shared/criterion.md`

- **Each finding is announced under the written criterion: with the person there
  at the close of the task, with nobody there in the pull request body, not as
  the split is made.** A word reached for at the moment of deciding reads like a
  criterion and is not one, and nobody can disagree with it. Case: on 6 and 7
  September 2026 an unattended run called every review finding mechanical and
  filed none, with both halves of the criterion written, entry "Every review
  finding fixed on the spot, none raised as an issue, on a criterion invented as
  it went, measured on 6 and 7 September 2026.". When it is said: SH-24 of entry
  "Where each text devloop owes the person stays, goes into a pull request, an
  issue or a file, or drops, built after the decisions of the person of 17
  October 2026: the introduction of `start-work`, the sentences that say why a
  question comes now in the wording approved that day, the last message of the
  run with nobody there in two groups, and the lines of the skills, the inserted
  texts and two hooks brought in line with the output style; 17 October 2026,
  version 0.143.0.".

## `shared/cut-branch.md`

- **The branch is cut as an action of its own, after the last question and
  before anything writes a file.** A run that reads past it hits the main-branch
  guard on every edit; a branch cut before the questions stays behind when the
  user breaks off, looking like work begun and being none. Cases: a run reading
  past the rule and hitting the guard happened three times, twice after the rule
  had been sharpened in prose; on 9 September 2026 `setup-project` cut its
  branch before it asked anything, the user broke off, and the branch was in the
  way at the next start, `git branch -D` refusing it as the checked-out branch,
  entry "The setup cuts its branch before the first question is answered,
  measured on 9 September 2026.".
- **A fresh cut is made from the main branch as the remote holds it: fetch, read
  whether the main branch stands there, switch and fast-forward.** A setup that
  lands by the person's hand may end its session before the fetch after the
  merge, and `git switch main` alone then cuts from the state before it. Entry
  "The status of a check class takes four forms and a guard holds the table to
  them, the unattended mode starts on two permissions more and is set up in
  `setup-checks` step 8 or through `--auto`, a state is read before a task is
  released, and a review finding about the table goes a third way; 5 October
  2026, version 0.129.0.".
- **A local main branch with commits of its own while the remote has nothing new
  is not caught before the cut.** Such commits arise only outside this workflow.
  Measured on 6 October 2026 with git 2.50.1 in fresh clones of a bare remote: a
  commit of its own and nothing new on the remote, `Already up to date.`, exit
  0; with a new commit on the remote, `fatal: Not possible to fast-forward,
  aborting.`, exit 128; a changed file the fast-forward also changes, `error:
  Your local changes to the following files would be overwritten by merge:
  README.md`, exit 1; a changed and a new file it does not touch, fast-forwarded
  and kept; the gap recorded in the third addendum of entry "The status of a
  check class takes four forms and a guard holds the table to them, the
  unattended mode starts on two permissions more and is set up in `setup-checks`
  step 8 or through `--auto`, a state is read before a task is released, and a
  review finding about the table goes a third way; 5 October 2026, version
  0.129.0.".
- **A branch whose pull request merged at its own tip, with a clean tree, is
  deleted and cut afresh.** A squash merge leaves the branch's own commits off
  the main branch, so the ancestry test reads a landed branch as written on.
  Measured on 5 October 2026 with git 2.50.1: `git merge-base --is-ancestor
  devloop-checks main` exits 1 after the squash while `git status --short`
  prints nothing; entry "The status of a check class takes four forms and a
  guard holds the table to them, the unattended mode starts on two permissions
  more and is set up in `setup-checks` step 8 or through `--auto`, a state is
  read before a task is released, and a review finding about the table goes a
  third way; 5 October 2026, version 0.129.0.".

## `shared/editing-tool.md`

- **A file whose content is text about commands — `environment.md`, the workflow
  file, a body file — is written with the editing tool, not from the shell.**
  The shell puts the text where the guards read it and goes past the per-file
  hooks. Case: on 11 October 2026 two build subagents of the second closing run
  of milestone 3 were blocked writing the workflow file and `environment.md`
  from the shell, defect c of entry "The second closing run of milestone 3, made
  on 11 October 2026 in `devloop-test-w` under a record saying yes, set up
  through `--auto`, read off its session log and the project, with the runs of
  both closing runs on the things of the table and the context the two runs
  used: nine defects, two met again, the open question met again; 11 October
  2026, the version stays 0.135.0."; decided as point 26 of entry "The decisions
  of 12 October 2026: milestone 3 has not landed with the two closing runs and
  no run with Go follows; twenty-seven things to build before the next run, on
  the install guard, at the setup and at planning and building; three things
  decided and not built now; the person's wordings, word for word; who changed
  the check targets in the second closing run; 12 October 2026, the version
  stays 0.135.0.", built in entry "Part B of the decisions of 12 October 2026 at
  planning and building, points 20 to 26, built; the run with nobody there at a
  changed file in the way of the main branch and at commits of its own on it,
  decided by the person on 16 October 2026 and built — the change set aside
  under a name devloop knows and brought back where the mark goes, the commits
  onto a branch of their own, the question at the next start; the branch's name
  revised to `my-commits`; four shared texts; 16 October 2026, version
  0.141.0.".
- **The line of an install under `Installed outside the project` is written by
  `bin/devloop-install-note put`.** One program holds the form of that line, for
  the hook and the run alike, and its command in single quotes is a word of that
  call to the guards. Entry "Install lines by one program, written where the
  install stood alone.". See docs/skill-conventions.md under "Environment
  constraints, measured", the paragraph "A hook reads its input through one
  program, and the command as the shell runs it".

## `shared/empty-read.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/fetch-and-run.md`

- **The install guard reads the forms that fetch a tool and run it without
  saying install by name, and a form it does not read counts as an install all
  the same.** Such a command puts a tool on the machine without saying install,
  so under a record saying no it passed the guard. Cases: `go run` of gitleaks
  at a version in a `Makefile` target ran under a record saying no, entry "The
  install guard reads the commands that fetch a tool and run it without saying
  install, and the browser downloads for tests, which it holds against the
  vendor's default place for the system it runs on; the drivers half of
  milestone 3 built, defect 8 of 4 October 2026 answered otherwise, one finding;
  8 October 2026, version 0.131.0."; `nix run` and `nix shell` found read
  nowhere at the first closing run of milestone 3, defect 11 of entry "The first
  closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under
  a record saying no, read off its session log and the project, with the
  decisions of that day on the arrangement of the closing runs: eleven defects,
  four met again, one open question; 11 October 2026, the version stays
  0.135.0."; `nix-shell -p` found unread at the review of pull request #171,
  entry "The command reader: every hook reads its input through one program that
  decodes the JSON and takes the command apart as the shell runs it; the install
  guard reads findings 1 to 8 of 9 October 2026, `nix run`, `nix shell` and `nix
  env shell`, and the browser and route variables before the command; every
  handler under PreToolUse and PermissionRequest blocks the action where the
  hook fails; two rules in the conventions; a block reported and not reworded;
  two findings recorded, not built; 12 October 2026, version 0.137.0.". See
  docs/skill-conventions.md under "Every skill carries these two", the paragraph
  "A command handed over runs as it stands, from wherever the person is".

## `shared/fetch-failed.md`

- **A failed fetch of the setup state is said at the next message that ends a
  turn with text, or in the question field of the question it bears on, and not
  before the answer is acted on.** The run goes on with the state as last
  fetched, which may be stale; where the text stands follows the output style.
  SH-45 of entry "Where each text devloop owes the person stays, goes into a
  pull request, an issue or a file, or drops, built after the decisions of the
  person of 17 October 2026: the introduction of `start-work`, the sentences
  that say why a question comes now in the wording approved that day, the last
  message of the run with nobody there in two groups, and the lines of the
  skills, the inserted texts and two hooks brought in line with the output
  style; 17 October 2026, version 0.143.0.".

## `shared/fetch-three-times.md`

- **A fetch that something is built on is tried three times, each attempt
  bounded to thirty seconds and ten seconds apart; an attempt followed by one
  that answers is not said.** A fetch that fails says only that the remote could
  not be reached just now, which may be transient, and without the repetition
  one short outage stops a run with nobody there until somebody is back; the
  bound keeps the three under the 120 seconds of one Bash call, past which, by
  the changelog of Claude Code and not measured here, a command moves to the
  background, and a repeated fetch would start a second one beside it. GitHub's
  own checkout action tries every fetch up to three times with a pause of ten to
  twenty seconds — `actions/checkout`, `src/retry-helper.ts` lines 3–5 and
  25–43, used by its fetch in `src/git-command-manager.ts` lines 277–318, read
  on 6 October 2026 at `f548e57` — entry "The status of a check class takes four
  forms and a guard holds the table to them, the unattended mode starts on two
  permissions more and is set up in `setup-checks` step 8 or through `--auto`, a
  state is read before a task is released, and a review finding about the table
  goes a third way; 5 October 2026, version 0.129.0.". Measured on 7 October
  2026 with git 2.50.1: against a remote that is not there, three times `fatal:
  Could not read from remote repository.`, exit 128, twenty seconds, where the
  attempts unbounded and fifteen seconds apart, measured the same way on 6
  October 2026, took thirty; against a server on this machine that accepts the
  connection and never answers, three times `no answer within 30 seconds: git
  fetch -q origin`, exit 124, 110 seconds in one call, entry "The consistency
  audit of 7 October 2026 before the handover, ordered on 6 October 2026, read
  against the entry beside it: the entry of 5 October 2026 with its eight
  addenda held against itself, its records and the code at `03c78af`, three
  statements of it corrected in place, five notes of the table corrected, four
  findings, and the five things the order settled, three built and two recorded;
  7 October 2026, version 0.130.0.". That an attempt followed by one that
  answers is not said: SH-42 of entry "Where each text devloop owes the person
  stays, goes into a pull request, an issue or a file, or drops, built after the
  decisions of the person of 17 October 2026: the introduction of `start-work`,
  the sentences that say why a question comes now in the wording approved that
  day, the last message of the run with nobody there in two groups, and the
  lines of the skills, the inserted texts and two hooks brought in line with the
  output style; 17 October 2026, version 0.143.0.". See
  docs/skill-conventions.md under "Environment constraints, measured".
- **A permission or safety check that refused the call carrying the three, where
  the call went through when made again, gets one line.** A check the person
  controls is not got around in silence; case and decision under
  `shared/command-does-not-answer.md`.
- **Where the third attempt fails, GitHub not reached and the sign-in refused
  only they can clear: the run stops and says what is in the way, git's message,
  and that it picks up as soon as they say it is cleared and nothing happens
  until then.** Claude Code does nothing until the next message arrives, so a
  run that says it will carry on by itself promises what it cannot do; see
  docs/skill-conventions.md under "Environment constraints, measured", "Nothing
  resumes on its own", and the case of 25 August 2026 that entry "Not everything
  is exercised yet." names. Approved wordings: the three openings, entry "The
  status of a check class takes four forms and a guard holds the table to them,
  the unattended mode starts on two permissions more and is set up in
  `setup-checks` step 8 or through `--auto`, a state is read before a task is
  released, and a review finding about the table goes a third way; 5 October
  2026, version 0.129.0.": before anything begins „Ich kann deinen lokalen
  Hauptzweig nicht auf den Stand von GitHub bringen, deshalb fange ich hier
  nichts an. <in einfachen Worten, was im Weg ist und was du dagegen tun kannst,
  mit dem Befehl, wo es einen gibt> git meldet: `<Meldung von git>`. Sag
  Bescheid, sobald das behoben ist, dann mache ich hier weiter. Bis dahin
  passiert nichts.“; after a merge „Der Merge ist auf GitHub gelandet, nichts
  ist verloren. Nur deinen lokalen Hauptzweig kann ich nicht auf diesen Stand
  bringen. <in einfachen Worten, was im Weg ist und was du dagegen tun kannst,
  mit dem Befehl, wo es einen gibt> git meldet: `<Meldung von git>`. Sag
  Bescheid, sobald das behoben ist, dann mache ich hier weiter. Bis dahin
  passiert nichts.“; before a rebase „Der Pull Request muss auf den neuesten
  Stand des Hauptzweigs gebracht werden, bevor er gemergt werden kann, und das
  geht gerade nicht. <in einfachen Worten, was im Weg ist und was du dagegen tun
  kannst, mit dem Befehl, wo es einen gibt> git meldet: `<Meldung von git>`. Sag
  Bescheid, sobald das behoben ist, dann mache ich hier weiter. Bis dahin
  passiert nichts.“. GitHub not reached, point 19 of entry "The decisions of 12
  October 2026: milestone 3 has not landed with the two closing runs and no run
  with Go follows; twenty-seven things to build before the next run, on the
  install guard, at the setup and at planning and building; three things decided
  and not built now; the person's wordings, word for word; who changed the check
  targets in the second closing run; 12 October 2026, the version stays
  0.135.0.": „GitHub war bei drei Versuchen nicht erreichbar. Prüfe deine
  Internetverbindung und sag Bescheid, wenn sie wieder steht."
- **The refused sign-in is handed over step by step in a second terminal window,
  as `gh auth login --web --git-protocol https`, and what the program guides is
  not described after it.** The sign-in puts questions to the person, which go
  only to the terminal it runs in; `--git-protocol https` keeps `gh` from asking
  for the protocol and `--web` takes the way through the browser; a description
  of another's flow stops being true once its maker changes it. The manual
  `cli.github.com/manual/gh_auth_login`, read on 28 October 2026: "The git
  protocol to use for git operations on this host can be set with
  --git-protocol, or during the interactive prompting." and "The default
  authentication mode is a web-based browser flow." Entry "Handovers say where
  the command is typed, sign-in and identity in steps.", (2); the approved
  wording is quoted under `shared/skill-name.md`. See docs/skill-conventions.md
  under "Every skill carries these two", the paragraph "Where the person types a
  command devloop hands them while Claude Code runs", form B, and the paragraph
  "Where a text to the person says they have to do something at the computer, it
  says how, step by step".
- **A changed file in the way, and commits of their own on the main branch while
  GitHub has new ones, are their own work: the run asks, and with nobody there
  it sets the file aside and puts the commits on a branch of their own without
  asking.** In doubt a run with nobody there is not blocked; git keeps a change
  set aside until it is brought back; the protection on the main branch holds
  against their own pushes too, so their commits reach GitHub only through a
  branch and a pull request in any case. Decided in entry "Part B of the
  decisions of 12 October 2026 at planning and building, points 20 to 26, built;
  the run with nobody there at a changed file in the way of the main branch and
  at commits of its own on it, decided by the person on 16 October 2026 and
  built — the change set aside under a name devloop knows and brought back where
  the mark goes, the commits onto a branch of their own, the question at the
  next start; the branch's name revised to `my-commits`; four shared texts; 16
  October 2026, version 0.141.0.". Approved wordings, point 19 of entry "The
  decisions of 12 October 2026: milestone 3 has not landed with the two closing
  runs and no run with Go follows; twenty-seven things to build before the next
  run, on the install guard, at the setup and at planning and building; three
  things decided and not built now; the person's wordings, word for word; who
  changed the check targets in the second closing run; 12 October 2026, the
  version stays 0.135.0.": the changed file, the question „In deinem Projekt ist
  `README.md` geändert und nicht committet. Um weiterzumachen, muss ich den
  Stand von GitHub holen, und das würde diese Datei ändern. Soll ich deine
  Änderung so lange beiseitelegen?"; „Ja, beiseitelegen" with „Ich hole sie
  zurück, wenn ich fertig bin."; „Nein" with „Dann halte ich hier an, bis du
  Bescheid gibst."; the commits, the question „Auf deinem Hauptzweig liegen
  Commits, die auf GitHub fehlen, und auf GitHub ist inzwischen Neues
  dazugekommen. Soll ich deine Commits auf einen eigenen Zweig `meine-commits`
  legen und den Hauptzweig auf den Stand von GitHub bringen?"; „Ja" with „Deine
  Commits bleiben auf `meine-commits` erhalten."; „Nein" with „Dann halte ich
  hier an.", the branch's name set to `my-commits`, the same in every language,
  in entry "Part B of the decisions of 12 October 2026 at planning and building,
  points 20 to 26, built; the run with nobody there at a changed file in the way
  of the main branch and at commits of its own on it, decided by the person on
  16 October 2026 and built — the change set aside under a name devloop knows
  and brought back where the mark goes, the commits onto a branch of their own,
  the question at the next start; the branch's name revised to `my-commits`;
  four shared texts; 16 October 2026, version 0.141.0.". The wordings with
  nobody there are quoted under `shared/mark-deletion.md`.
- **Commits of their own are moved with `git branch <name>` and then `git reset
  --keep origin/main`.** The reset keeps the commits on the new branch, and
  where a changed file stands in its way it refuses and changes nothing.
  Measured on 6 October 2026 with git 2.50.1 in throwaway clones: clean tree,
  exit 0, the main branch at the remote's commit and the own commit on the new
  branch; a changed file the reset would touch, `error: Entry 'README.md' not
  uptodate. Cannot merge.`, exit 128, nothing changed; a changed file it would
  not touch, exit 0 and the change kept; entry "The status of a check class
  takes four forms and a guard holds the table to them, the unattended mode
  starts on two permissions more and is set up in `setup-checks` step 8 or
  through `--auto`, a state is read before a task is released, and a review
  finding about the table goes a third way; 5 October 2026, version 0.129.0.".

## `shared/finding-not-in-conversation.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/finding-on-check-table.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/guard-block-intro.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/how-to-ask.md`

- **A question about how this workflow runs is put only where the answer changes
  something of theirs, and carries no recommendation.** A recommendation stands
  only on a question about the product being built. Case: both runs of 3 and 4
  October 2026 attached a recommendation to a question about how the workflow
  runs, defect 4 of entry "The two runs of milestone 3 on 3 and 4 October 2026
  under 0.126.0, both with the person there: the record saying yes in
  `devloop-test-u`, the record saying no in `devloop-test-v`; the guard read
  against a landed record under both answers, the install with nobody there not
  reached, and fifteen defects read off them; 4 October 2026, version 0.127.0.";
  decided in entry "Milestone 3, part 1, the install question, built as the
  person decided on 20 October 2026: the refresh of `setup-project` puts the
  install question where no record stands on the main branch and writes the
  record; no question of its step 4 carries a recommendation, the rule standing
  in `shared/how-to-ask.md`; the call of the install question stays alone,
  without a mechanism, for the reason that what needs weighing goes alone; the
  no of the install question names the exception of a package that downloads
  something when it is installed, in the wording approved that day; the bullet
  of `setup-project` for a blocked install with nobody there says the case
  cannot arise, and the insert of `shared/backed-command.md` goes; the person's
  decisions of that day on the clusters of the checked list recorded with what
  follows from the rules; four findings of the tool brought in as defects, three
  of them built and one closed, four defects closed as left on purpose and one
  as lapsed; 20 October 2026, version 0.152.0.".
- **A decision is said only where it reaches them before the work it shapes;
  otherwise it stands only where it is recorded.** Room to overturn it would
  reach them when overturning it costs the work. B3 of entry "Where each text
  devloop owes the person stays, goes into a pull request, an issue or a file,
  or drops, built after the decisions of the person of 17 October 2026: the
  introduction of `start-work`, the sentences that say why a question comes now
  in the wording approved that day, the last message of the run with nobody
  there in two groups, and the lines of the skills, the inserted texts and two
  hooks brought in line with the output style; 17 October 2026, version
  0.143.0.".
- **Why a question comes now stands in the question, in the question field or in
  the message that puts it as text, and not in an announcement before it.** Text
  before the call that shows the widget can land in a collapsed note. Case: the
  bench of 16 October 2026, entry "Where the text devloop owes the person
  stands, decided by the person on 17 October 2026, and every question put to
  it: what a decision needs in the question, everything else in the message that
  ends the turn, nothing between two tool calls; the mode question of
  `setup-checks` step 8 in the wording approved that day, in its fields and with
  nothing before it; 17 October 2026, version 0.142.0."; B11 of entry "Where
  each text devloop owes the person stays, goes into a pull request, an issue or
  a file, or drops, built after the decisions of the person of 17 October 2026:
  the introduction of `start-work`, the sentences that say why a question comes
  now in the wording approved that day, the last message of the run with nobody
  there in two groups, and the lines of the skills, the inserted texts and two
  hooks brought in line with the output style; 17 October 2026, version
  0.143.0.".

## `shared/install-alone.md`

- **An install the run makes itself stands alone in its call: no other command,
  no change of directory, no pipe, no redirection of its output, not in the
  background.** The hook writes the line under `Installed outside the project`
  only for an install that stood alone, since only then is the call's exit the
  install's. Case: runs 2a and 4 of 23 October 2026 ran `brew install gitleaks
  2>&1 | tail -5`; the cut output hid what the install did, point 8 of entry
  "Six closing runs read off their logs, each on the defects it met."; decision
  (2) of entry "Install lines by one program, written where the install stood
  alone.", built in entry "Install rules reach the build subagent, backed by
  kind, run alone.".
- **The report says what the whole output shows and nothing assumed; the folders
  for browsers are read before and after the install.** A report written past a
  cut output says what never happened, and a browser download inside the install
  call is seen only in the folders. Cases: run 4 of 23 October 2026 reported
  that brew "also fetched its own index and cleaned up unasked", which its cut
  output never showed; run 2a's `npm install -g @mermaid-js/mermaid-cli`
  downloaded Chrome into `~/.cache/puppeteer` inside the install call, which its
  report named as a download on first use; point 8 of entry "Six closing runs
  read off their logs, each on the defects it met.".

## `shared/install-issue.md`

- **An issue for a missing tool carries an `install-tool:` and an
  `install-command:` line, each at the start of a line of its own.** The next
  start reads them with `bin/devloop-install-issues`, finds whether the tool
  stands now and closes the issue itself, so the person is never the one to
  close it. Decided as (5) of entry "Tool state read by one program, the
  planning saying only what it read.", in place of the person closing the issue;
  built in entry "Every subagent gets the install record, the build reads its
  tools first.". No wording of the issue is approved: the skills say what it
  carries.
- **An install typed with `!` after a no, or said done under form B, closes its
  issue at once; the issue's text still names the way a later session takes.**
  The message after the no names both ways, so an issue naming the later one
  does not contradict it. Case: in the run of 29 October 2026 under a no the
  person typed `! brew install yq` after declining, and the run closed the issue
  with a comment naming a start that had not happened, entry "Run under a no
  read off its log, the ! after the no taken up at once."; decided in entry "The
  ! after a no taken up in the session, point 7 read by the subagent.".
- **The issue says where the command is typed — with `!` in Claude Code where it
  asks nothing, else in a second terminal window, what it asks named — and that
  `/devloop:start-work` follows.** Typed with `!`, the command and its output
  land in the conversation and the run answers them; a command that asks
  something can be answered only in a terminal of its own. Entry "Handovers say
  where the command is typed, sign-in and identity in steps."; the forms of
  docs/skill-conventions.md under "Every skill carries these two".

## `shared/install-issues-read.md`

- **Every start runs `bin/devloop-install-issues` once, before the first thing
  that reads an open issue — the in-flight query of `start-work`, the readiness
  query or the question on the rule for the classifier, whichever comes first.**
  Devloop, and not the person, closes an issue whose tool stands now, before
  anything of the start reads it as open. Decided as (5) of entry "Tool state
  read by one program, the planning saying only what it read.", built in entry
  "Every subagent gets the install record, the build reads its tools first.".
  Case for the in-flight query: in the short run `start-work` read the tool
  itself with `command -v` and sent its own `gh issue close` before the program
  ran, entry "Short run read off its two logs, the ! after a no and the next
  start."; built in entry "start-work runs the install-issues program before it
  reads an issue.".
- **Where the search path does not reach a command's tool, the program also
  reads the installer's folder with `--installed` and prints a `folder:` line;
  the issue stays open and the run gives the five steps that put the folder on
  the search path.** Otherwise a tool installed off the `PATH` leaves the issue
  open with no word to a person who did what it asked. Finding D5 of entry
  "Handovers say where the command is typed, sign-in and identity in steps.".
  Approved wording, same entry, for a task: „Der Befehl aus dem Issue „yq
  installieren“ hat `yq` nach `~/go/bin` installiert, aber dieser Ordner steht
  nicht in deinem `PATH`, darum finde ich `yq` nicht, und das Issue bleibt
  offen. So nimmst du ihn auf:“, the five steps as under
  `shared/install-tool.md`, then „Dann finde ich `yq`, schließe das Issue und
  baue die Aufgabe.“; for a check class: „Der Befehl aus dem Issue „gitleaks
  installieren“ hat `gitleaks` nach `~/go/bin` installiert, aber dieser Ordner
  steht nicht in deinem `PATH`, darum finde ich `gitleaks` nicht, und das Issue
  bleibt offen. So nimmst du ihn auf:“, the five steps, then „Dann finde ich
  `gitleaks`, schließe das Issue und richte die Prüfung ein.“
- **An issue devloop closed at a start is said in one line per issue.** Approved
  wording, (5) of entry "Every subagent gets the install record, the build reads
  its tools first.": „`yq` steht jetzt auf diesem Rechner. Darum habe ich das
  Issue „yq installieren“ geschlossen, und die Aufgabe „Konfiguration mit yq
  lesen“ ist wieder frei.“; where it concerned a check class the sentence ends
  „…, und die Prüfung richte ich wieder ein.“
- **The program runs again at the start of a build after a planning, and in
  `build-work` and `plan-work` after `start-work`, in the same session; after a
  no it runs with `--after-install` where the person typed the command with `!`
  or said it ran under form B.** An issue closed is not found again and the
  second read costs nothing but the listing; who installs with `!` after a no
  has changed their mind. Entries "start-work runs the install-issues program
  before it reads an issue." and "The ! after a no taken up in the session,
  point 7 read by the subagent.".

## `shared/install-not-through.md`

- **With nobody there the four ways an install does not go through end the same:
  an issue with the command, the message, what stands at the destination and the
  two lines of `install-tool` and `install-command`, blocking the task; the task
  put down and the next taken; no other way to the same tool.** A failed install
  is never got around by another route, another package manager or a copy by
  hand. Decision 4 of entry "The open findings on the install guard, eight,
  measured on this machine; four questions never examined; the decisions for the
  next orders of milestone 3 and the texts the person approved, word for word;
  three corrections; 9 October 2026, version 0.132.0.", built in entry "The
  behaviour with nobody there: a refusal, a command that does not finish inside
  its call, an install that does not go through, the two halts of
  `setup-checks`, a hook for permission prompts, and start condition 4 off the
  permission mode; 9 October 2026, version 0.133.0.". The refusal of a safety
  check built into Claude Code goes as the classifier's: case and building under
  `shared/command-does-not-answer.md`.
- **A refusal of auto mode on one of the counted ways, for a check class, leaves
  an issue beside the `skipped (state)` cell, blocking no task; that issue
  brings the question on the rule for the classifier to the next start with
  `--auto`, and the person's yes closes it.** The open issue is what brings the
  question back: nothing is stored on a no. Entry "Conditions 6 and 7 at the
  mark, the rule asked after a refusal, titles.".
- **The counted ways are the rule's ways, in its spelling: brew install, go
  install, npm install -g, pnpm add -g, yarn global add, bun add -g, cargo
  install, gem install, pipx install, uv tool install, pip install, playwright
  install, cypress install, puppeteer browsers install.** The rule's ways, the
  routes the guard reads as an install and the ways the question counts are held
  equal by one self-test. Case: the audit of 23 October 2026 found the rule
  naming five tools and three browser installers, D8 of entry "Six entries held
  against the code: lines corrected, defects recorded."; widened in entry "The
  rule for auto mode names the guard's routes; audit defects built.". Approved
  wording of the rule, same entry: "Installing or updating a tool or a browser
  for tests that the current task needs is allowed in a repository set up with
  devloop, by these commands: brew install, go install, npm install -g, pnpm add
  -g, yarn global add, bun add -g, cargo install, gem install, pipx install, uv
  tool install and pip install, and playwright install, cypress install or
  puppeteer browsers install for a browser. A devloop hook reads the project's
  install permission and where each such command installs before it runs, and
  blocks it where the person has not said yes or where it installs to a place
  the permission does not name."
- **Only the installer's own error gets up to three attempts; an attempt
  followed by one that goes through is not said; where all three fail, the
  third's message is given, and an earlier one only where it names something in
  the way the third's does not.** The attempt that recovered changes nothing the
  person gets; without the three failures the issue reads as one failed call.
  Case: the audit of 18 October 2026 found the install text naming every failed
  attempt while the fetch text named only the third, entry "The consistency
  audit of 18 October 2026 before the handover, read against the eleven entries
  since the catch-up of 14 October 2026 and the code at `786b71f`: thirty-three
  disagreements, nineteen mended — nine in the documents, three dated entries'
  line numbers corrected in place and seven said right here — three rows of the
  table brought to the tool's rule and eleven recorded; the two points of the
  order answered; 18 October 2026, the version stays 0.147.0."; decided by the
  three tests of docs/skill-conventions.md under "A text is as long as what
  carries the decision, and written for its form", entry "The catch-up of 19
  October 2026 after the consistency audit of 18 October 2026: the eleven
  findings its entry records as they are, built — a stop at `no required check:`
  with nobody there, the two cases past the gate named, a read before every pop
  and drop of a change set aside, the mark at the three fetch stops of
  `build-work`, the failed attempts of an install, the issue of a conflicted
  bring-back no longer read as from outside, two comments, the header of a
  question a name of at most twelve characters by the person's decision of that
  day, a should a later decision changes, and what the comparison before the
  first change shows; 19 October 2026, version 0.148.0.".
- **A call that did not finish inside its ten minutes is not started a second
  time.** Decision 2 of entry "The open findings on the install guard, eight,
  measured on this machine; four questions never examined; the decisions for the
  next orders of milestone 3 and the texts the person approved, word for word;
  three corrections; 9 October 2026, version 0.132.0.".

## `shared/install-question.md`

- **The install question names browsers for tests in its subject, its yes and
  its first no.** The guard holds a browser download for tests against the
  record as it does a tool. Entry "The install guard reads the commands that
  fetch a tool and run it without saying install, and the browser downloads for
  tests, which it holds against the vendor's default place for the system it
  runs on; the drivers half of milestone 3 built, defect 8 of 4 October 2026
  answered otherwise, one finding; 8 October 2026, version 0.131.0.". Approved
  wording, same entry: question "Darf ich für dieses Projekt künftig Werkzeuge
  und Browser für Tests installieren, die außerhalb des Projekts auf diesem
  Rechner landen?"; first answer, label "Ja, selbst installieren", line "Ab
  jetzt installiert der Lauf solche Werkzeuge und Browser selbst, ohne erneut zu
  fragen."; second answer, label "Nein, nicht selbst installieren".
- **The no names the exception: some packages of the project download something
  themselves when they are installed, a browser for tests say, and the no does
  not stop that.** Such a download stays outside the install guard, so a no that
  said nothing of it would imply something untrue; see docs/skill-conventions.md
  under "Works with nothing else installed". Case: finding 19 of the stock-take
  tool, the no saying nothing is installed without the person while a package's
  installation downloads a browser all the same; decided in entry "Milestone 3,
  part 1, the install question, built as the person decided on 20 October 2026:
  the refresh of `setup-project` puts the install question where no record
  stands on the main branch and writes the record; no question of its step 4
  carries a recommendation, the rule standing in `shared/how-to-ask.md`; the
  call of the install question stays alone, without a mechanism, for the reason
  that what needs weighing goes alone; the no of the install question names the
  exception of a package that downloads something when it is installed, in the
  wording approved that day; the bullet of `setup-project` for a blocked install
  with nobody there says the case cannot arise, and the insert of
  `shared/backed-command.md` goes; the person's decisions of that day on the
  clusters of the checked list recorded with what follows from the rules; four
  findings of the tool brought in as defects, three of them built and one
  closed, four defects closed as left on purpose and one as lapsed; 20 October
  2026, version 0.152.0.". Approved wording, same entry, at the first asking:
  „Ich installiere nichts außerhalb des Projekts. Fehlt ein Werkzeug oder
  Browser, bekommst du den Befehl und entscheidest selbst. Ausnahme: Manche
  Pakete deines Projekts laden beim Installieren selbst etwas nach, etwa einen
  Browser für Tests.“; at the second asking: „Ich installiere nichts außerhalb
  des Projekts. Ausnahme: Manche Pakete deines Projekts laden beim Installieren
  selbst etwas nach, etwa einen Browser für Tests. Mit Nein kann ich nicht ohne
  dich arbeiten.“
- **The question says nothing about runtimes.** That compilers and runtimes stay
  the person's under every answer is a rule on the run, not an assurance the
  guard holds; said in the question, it reaches the person as that assurance.
  See docs/skill-conventions.md under "Works with nothing else installed",
  "Runtimes are not a kind the permission may cover". Case: both runs of 30
  September 2026 delivered the boundary as an assurance, entry "The install
  question's points stand in the fields of the harness's choice widget — the
  question line carrying the subject, its scope and the leak, the yes and the no
  each a label and a line — the form rule rewritten so that prose before the
  widget carries only a point no field can carry, and the boundary on runtimes
  and the unattended half of the no out of the question as rules on the run; 3
  October 2026, version 0.126.0."; the run of 3 October 2026 again, the fifth
  time in five runs, entry "The consistency audit of 4 October 2026, read
  against the entry beside it: two counts on its fifteen defects, those fifteen
  corrected there in place, and twenty defects of its own; 4 October 2026,
  version 0.128.0."; left out of the question in entry "The status of a check
  class takes four forms and a guard holds the table to them, the unattended
  mode starts on two permissions more and is set up in `setup-checks` step 8 or
  through `--auto`, a state is read before a task is released, and a review
  finding about the table goes a third way; 5 October 2026, version 0.129.0.".

## `shared/install-record.md`

- **Under a no the record carries the answer and the date alone; the place and
  route lines are written under a yes alone, and a changed answer writes the
  section anew.** Under a no the places do nothing, the guard blocking on
  `install-tools: no` before it reads a place, and listed they read as though
  something were open. Case: on 30 September 2026 in `devloop-test-t` the record
  under a no listed six places and a route, and the line at session start
  printed them, defect E of entry "The two runs milestone 3 ends with, both on
  30 September 2026 under 0.120.0 and both attended: the record saying yes in
  `devloop-test-s`, the record saying no in `devloop-test-t`; what they
  establish, what they do not, and the findings read off them; 30 September
  2026, version 0.120.1."; decided as cluster 8 of entry "Milestone 3, part 2,
  the saved answer, built as the person decided on 20 October 2026: under
  `install-tools: no` the record carries the answer and the date alone and the
  line at session start says `places: none` and `routes: none`, whatever an
  older record under a no carries; `README.md` says in the wording approved that
  day that the question is put at setup and at a refresh where no record stands
  on the main branch and that the record travels with the repository, and
  `docs/skill-conventions.md` and the comment of `hooks/session-start.sh` say
  that the line at session start reaches the run and not the person; `README.md`
  carries no date and says the state of today, eight dates and a version pair
  gone, the rule in the conventions, and a step of the job `stock-take` is red
  where it carries one; the hook run on a bench in four cases and the step's
  command on the tree and on a copy with a date over a line break; 20 October
  2026, version 0.153.0.".
- **A record under a no that still carries places and routes, and a record under
  a yes with the six bin directories and not the five places for browsers, are
  not amended.** The line at session start says `places: none` and `routes:
  none` under a no whatever the record carries; under the older yes the guard
  blocks a browser download naming the place until the five are added with the
  person there. Entries "Milestone 3, part 2, the saved answer, built as the
  person decided on 20 October 2026: under `install-tools: no` the record
  carries the answer and the date alone and the line at session start says
  `places: none` and `routes: none`, whatever an older record under a no
  carries; `README.md` says in the wording approved that day that the question
  is put at setup and at a refresh where no record stands on the main branch and
  that the record travels with the repository, and `docs/skill-conventions.md`
  and the comment of `hooks/session-start.sh` say that the line at session start
  reaches the run and not the person; `README.md` carries no date and says the
  state of today, eight dates and a version pair gone, the rule in the
  conventions, and a step of the job `stock-take` is red where it carries one;
  the hook run on a bench in four cases and the step's command on the tree and
  on a copy with a date over a line break; 20 October 2026, version 0.153.0."
  and "The install guard reads the commands that fetch a tool and run it without
  saying install, and the browser downloads for tests, which it holds against
  the vendor's default place for the system it runs on; the drivers half of
  milestone 3 built, defect 8 of 4 October 2026 answered otherwise, one finding;
  8 October 2026, version 0.131.0.".
- **The run that writes the record does not ask a route where it puts things.**
  The guard asks at the moment of every command and names a route that does not
  answer, with its cause, in its block, so asking changes nothing in the record.
  Case: runs 3b and 4 of 23 October 2026 wrote `install-route: npm` without
  asking, defect 8 of entry "Six closing runs read off their logs, each on the
  defects it met."; the duty taken out as (6) of entry "Install lines by one
  program, written where the install stood alone.".

## `shared/install-tool.md`

- **A browser for tests that Playwright, Cypress or Puppeteer downloads into the
  vendor's cache counts as a tool outside the repository.** Its download is an
  install command whose vendor names a place outside the repository. Case: `npx
  playwright install` passed the install guard as measured on 19, 28 and 29
  September 2026, entry "The install guard reads the commands that fetch a tool
  and run it without saying install, and the browser downloads for tests, which
  it holds against the vendor's default place for the system it runs on; the
  drivers half of milestone 3 built, defect 8 of 4 October 2026 answered
  otherwise, one finding; 8 October 2026, version 0.131.0.".
- **A tool the task needs is not replaced by a stand-in because the run takes
  itself not to be allowed to install it.** A task built against stand-ins lands
  with the real tool never run. Case: run 3a of 23 October 2026 built the task
  needing `yq` against stand-ins under a yes and merged it with `yq` never run,
  defect 2 of entry "Six closing runs read off their logs, each on the defects
  it met."; built in entry "Install rules reach the build subagent, backed by
  kind, run alone.".
- **The result of a handed-over install is read after the form's signal, with
  both lines of `devloop-tool-state --installed`.** The folder line says whether
  the command installed; the search-path line says whether the build and the
  checks can call the tool, since `go install` puts a tool into `~/go/bin`,
  which often stands on no search path. Entry "Every subagent gets the install
  record, the build reads its tools first."; the forms A and B of
  docs/skill-conventions.md under "Every skill carries these two", decided in
  entry "Handovers say where the command is typed, sign-in and identity in
  steps.".
- **Where the folder is off the search path, the run says how to put it there,
  in numbered steps in the order the person can take them.** A text that says
  what to do and not how leaves the person without the way; the person can type
  in the terminal only once Claude Code is ended. Case: on 28 October 2026 the
  first proposal said what is to be done and not how and was not approved,
  against the person's rule of that day: „alles was der Nutzer an befehlen oder
  schritten tun muss am computer sollte beschrieben sein bzw. in gesagt werde
  wie er vorzugehen hat, solange die Schritte dazu klar sind und das LLM weiß.“,
  entry "Every subagent gets the install record, the build reads its tools
  first.". Approved wording, for the shell zsh, in that entry: „Der Befehl hat
  `yq` nach `~/go/bin` installiert, aber dieser Ordner steht nicht in deinem
  `PATH`, darum findet der Bau `yq` nicht. So nimmst du ihn auf:“, then the
  steps, numbered: „1. Beende Claude Code: `/exit`“, „2. Trag den Ordner im
  Terminal in deinen `PATH` ein: `echo 'export PATH="$HOME/go/bin:$PATH"' >>
  ~/.zshrc`“, „3. Lade die Datei neu: `source ~/.zshrc`“, „4. Starte Claude Code
  wieder im Projekt: `cd ~/mein-projekt && claude`“, „5. Gib dort
  `/devloop:start-work` ein.“, then „Dann finde ich `yq` und baue die Aufgabe.“
  See docs/skill-conventions.md under "Every skill carries these two", "Where a
  text to the person says they have to do something at the computer, it says
  how, step by step".
- **For a shell without a sure form, the run reads the command in the maker's
  guide first and gives it with the source; only where that yields none does the
  step name no command.** The person gets the maker's own command, and none the
  guide warns against. Decided as the addition to the rule above in entry
  "Handovers say where the command is typed, sign-in and identity in steps.".
- **The standing fact of an install is written into `environment.md` by the
  hook, from what the guard read; the run writes no second line.** The guard's
  reading is the one reading. Entry "Milestone 3, part 4, built as the person
  decided on 20 and 21 October 2026: a hook on `PostToolUse` writes what an
  install the record let through did into `docs/agents/environment.md` under `##
  Installed outside the project`, the command as its words ran and the folder it
  installed into, from the facts the install guard leaves at its pass under a
  yes, so that the guard's reading is the one reading; the two hooks that run
  the check chain read a tool not found on its search path through one program
  and say that the check did not run, which tool is missing and that what closes
  it belongs in the repository; the guard's cause for a yes without a place says
  no place; the causes of `bin/devloop-setup-state` are whole clauses and the
  session-start line joins them behind "because"; `setup-checks` step 3 puts the
  decision on a class whose tool is missing under a no as a question at once,
  install it themselves or the check off, before the offer of the mode; four
  defects built, one found and one question halted; 21 October 2026, version
  0.155.0.".
- **What the run installed under a yes is said in one line at the next message
  that ends a turn with text, with nobody there in the last message; its details
  stand in the pull request.** Something installed on their machine they did not
  start stays in the conversation; its details go where they outlive the
  session. Entries "Where the text devloop owes the person stands, decided by
  the person on 17 October 2026, and every question put to it: what a decision
  needs in the question, everything else in the message that ends the turn,
  nothing between two tool calls; the mode question of `setup-checks` step 8 in
  the wording approved that day, in its fields and with nothing before it; 17
  October 2026, version 0.142.0." and "Where each text devloop owes the person
  stays, goes into a pull request, an issue or a file, or drops, built after the
  decisions of the person of 17 October 2026: the introduction of `start-work`,
  the sentences that say why a question comes now in the wording approved that
  day, the last message of the run with nobody there in two groups, and the
  lines of the skills, the inserted texts and two hooks brought in line with the
  output style; 17 October 2026, version 0.143.0.".
- **The report of an install says what the package manager did besides.** A
  package manager does more than the package it names, none of it asked for.
  Case: on 28 September 2026 one `brew install shellcheck`, run in auto mode
  with nobody answering, updated Homebrew itself, fetched a portable Ruby,
  updated two taps and ran a cleanup, entry "An install command passed the
  auto-mode classifier with nobody answering, measured on 28 September 2026.".
- **A tool a check class needs is not handed over by the build; it goes to
  `setup-checks` for that class, whose step 3 puts the question.** One decision
  has one text. Decision (c) of entry "Conditions 6 and 7 at the mark, the rule
  asked after a refusal, titles.".
- **The handover is the main run's; the subagent's part is its report.** Only
  the main run reaches the person. Case: in run 1 of 26 October 2026 the build
  subagent built the task needing `yq` against a stub under the no, and the main
  run handed `brew install yq` over only after the person said the tool was
  missing, entry "Three closing runs of the pass read off their logs, each on
  what it met."; built in entry "Every subagent gets the install record, the
  build reads its tools first.".
- **After a no, the form's signal in this session releases the run as well; an
  install made another way is read at the next start.** Who installs with `!`
  after a no has changed their mind, and making them type `/devloop:start-work`
  on top gains them nothing; it fits form A, whose signal is the output. Case:
  in the run of 29 October 2026 under a no the person typed `! brew install yq`
  after declining, entry "Run under a no read off its log, the ! after the no
  taken up at once."; decided in entry "The ! after a no taken up in the
  session, point 7 read by the subagent.".
- **The handover gives both ways in one message, the yes first, the no second,
  the question last; the issue is written on the no alone.** A message that says
  only "let me know once it is through" leaves no way to say no. Cases: the
  install guard's message once offered only that, so that declining looked like
  no answer at all, `ae89724`, "Give a declined install somewhere to land
  (#81)"; in run 1 of 23 October 2026 the handover said a decline would leave
  the test skipped and the task open, defect 5 of entry "Six closing runs read
  off their logs, each on the defects it met."; in run 1 of 26 October 2026 the
  run opened the issue before the answer, offered no no, and named one signal in
  the issue and another in the message, entry "Three closing runs of the pass
  read off their logs, each on what it met.". Approved wording, form A, entry
  "Handovers say where the command is typed, sign-in and identity in steps.":
  „Die Aufgabe „<Titel der Aufgabe>“ braucht `yq`, und es fehlt auf diesem
  Rechner. Weil deine Antwort zum Installieren für dieses Projekt Nein ist,
  installiere ich es nicht selbst. Gib den Befehl dafür hier in Claude Code ein,
  mit `!` davor:“ — „`! brew install yq`“ — „Geprüft mit `brew info yq`:
  Homebrew bietet yq 4.54.1 an, es landet in `/opt/homebrew/bin`.“ — „Sobald er
  durchgelaufen ist, prüfe ich, dass `yq` dort steht, und baue die Aufgabe.
  Lehnst du ab, lege ich ein Issue mit dem Befehl an, das diese Aufgabe
  blockiert, und mache mit der nächsten Aufgabe weiter, sofern eine bereit
  ist.“, then the last sentence as entry "The ! after a no taken up in the
  session, point 7 read by the subagent." words it: „Gibst du den Befehl später
  doch hier mit `!` ein, schließe ich das Issue sofort und baue die Aufgabe.
  Installierst du es auf anderem Weg, etwa in einem anderen Fenster, geschieht
  das beim nächsten Start.“ — „Gibst du den Befehl ein oder lehnst du ab?“ Form
  B, for a command that asks something, here a password: „… installiere ich es
  nicht selbst. Der Befehl fragt nach deinem Passwort, darum gib ihn in einem
  zweiten Terminalfenster ein, nicht in dem, in dem Claude Code läuft:“, the
  command, the backing as above, „Sag mir hier Bescheid, sobald er durchgelaufen
  ist. Dann prüfe ich, dass … dort steht, und baue die Aufgabe.“, the rest as in
  A with the last sentence „Führst du den Befehl später doch aus und sagst mir
  hier Bescheid, schließe ich das Issue sofort und baue die Aufgabe. Sonst
  geschieht das beim nächsten Start.“, the question „Führst du den Befehl aus
  oder lehnst du ab?“ In doubt whether the command asks, „kann etwas von dir
  abfragen, etwa dein Passwort“ stands in place of „fragt nach deinem Passwort“,
  decided by the person on 1 November 2026, entry "The loaded texts lose their
  history, reasons move to docs/rationale.md." See docs/skill-conventions.md
  under "Every skill carries these two", the paragraph "A command handed over
  runs as it stands, from wherever the person is".

## `shared/language-opening.md`

- **The same block as `shared/closing.md` without its two sentences on why the
  block stands twice: one language for the whole turn, a technical term
  untranslated, one person addressed in the singular and the familiar form.**
  Its reasons and cases stand under `shared/closing.md`.

## `shared/mark-command.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/mark-deletion.md`

- **The mark goes with a shell command, and nothing is said of it where it goes
  through.** A text reaches the person only where they have to decide or do
  something, something failed, something changed they did not start, or it is
  the result; a mark deleted is none of those. B1 of entry "Where each text
  devloop owes the person stays, goes into a pull request, an issue or a file,
  or drops, built after the decisions of the person of 17 October 2026: the
  introduction of `start-work`, the sentences that say why a question comes now
  in the wording approved that day, the last message of the run with nobody
  there in two groups, and the lines of the skills, the inserted texts and two
  hooks brought in line with the output style; 17 October 2026, version
  0.143.0.".
- **Every change this run set aside at a fetch comes back where the mark goes;
  each pop takes the entry its line names when the program is run again just
  before it, and an entry no line of this run's names is never popped.** The
  change is theirs and stands in their project again once the part without them
  is over; a pop renumbers the entries under it, so a line read before an
  earlier pop can name another entry, the person's own among them. Decided in
  entry "Part B of the decisions of 12 October 2026 at planning and building,
  points 20 to 26, built; the run with nobody there at a changed file in the way
  of the main branch and at commits of its own on it, decided by the person on
  16 October 2026 and built — the change set aside under a name devloop knows
  and brought back where the mark goes, the commits onto a branch of their own,
  the question at the next start; the branch's name revised to `my-commits`;
  four shared texts; 16 October 2026, version 0.141.0.". Case: measured on 18
  October 2026, an entry of the person's own under two of a run, both popped by
  the entries read once — the second pop took the person's own and left one of
  the run's set aside, entry "The consistency audit of 18 October 2026 before
  the handover, read against the eleven entries since the catch-up of 14 October
  2026 and the code at `786b71f`: thirty-three disagreements, nineteen mended —
  nine in the documents, three dated entries' line numbers corrected in place
  and seven said right here — three rows of the table brought to the tool's rule
  and eleven recorded; the two points of the order answered; 18 October 2026,
  the version stays 0.147.0."; measured on 19 October 2026 with git 2.50.1, a
  read before each pop brought both of the run's back and left the person's own
  where it was, entry "The catch-up of 19 October 2026 after the consistency
  audit of 18 October 2026: the eleven findings its entry records as they are,
  built — a stop at `no required check:` with nobody there, the two cases past
  the gate named, a read before every pop and drop of a change set aside, the
  mark at the three fetch stops of `build-work`, the failed attempts of an
  install, the issue of a conflicted bring-back no longer read as from outside,
  two comments, the header of a question a name of at most twelve characters by
  the person's decision of that day, a should a later decision changes, and what
  the comparison before the first change shows; 19 October 2026, version
  0.148.0.".
- **A change put back where it stood is not said.** It is none of what the last
  message carries. Entry "Where each text devloop owes the person stays, goes
  into a pull request, an issue or a file, or drops, built after the decisions
  of the person of 17 October 2026: the introduction of `start-work`, the
  sentences that say why a question comes now in the wording approved that day,
  the last message of the run with nobody there in two groups, and the lines of
  the skills, the inserted texts and two hooks brought in line with the output
  style; 17 October 2026, version 0.143.0.".
- **After a conflicted pop with nobody there, `git checkout HEAD -- <file>` puts
  the file back as the branch holds it and leaves the stash standing; an issue
  labelled `needs-human` and not `raised-here` shows both lines, and the last
  message names it.** Which line holds is theirs to decide, and a later build
  would take a loose `raised-here` issue up as work. Measured on 16 October 2026
  with git 2.50.1, entry "Part B of the decisions of 12 October 2026 at planning
  and building, points 20 to 26, built; the run with nobody there at a changed
  file in the way of the main branch and at commits of its own on it, decided by
  the person on 16 October 2026 and built — the change set aside under a name
  devloop knows and brought back where the mark goes, the commits onto a branch
  of their own, the question at the next start; the branch's name revised to
  `my-commits`; four shared texts; 16 October 2026, version 0.141.0.". Approved
  wording, same entry: the title of the issue „Deine Änderung an `README.md`
  trifft auf eine Änderung von GitHub"; its text „Während des Laufs ohne dich
  lag deine Änderung an `README.md` beiseite. Auf GitHub wurde inzwischen
  dieselbe Zeile geändert. Deine Zeile: `…` Die Zeile auf GitHub: `…` Deine
  Änderung liegt weiter beiseite. Beim nächsten Start frage ich dich, welche
  Zeile gelten soll."; the last message „Deine Änderung an `README.md` liegt
  noch beiseite, weil GitHub dieselbe Zeile geändert hat. Issue #12 zeigt beide
  Zeilen."
- **Commits of their own moved onto a branch of their own are named in the last
  message, with the offer of a pull request.** Their commits reach GitHub only
  through a branch and a pull request, since the protection holds against their
  own pushes too. Approved wording, entry "Part B of the decisions of 12 October
  2026 at planning and building, points 20 to 26, built; the run with nobody
  there at a changed file in the way of the main branch and at commits of its
  own on it, decided by the person on 16 October 2026 and built — the change set
  aside under a name devloop knows and brought back where the mark goes, the
  commits onto a branch of their own, the question at the next start; the
  branch's name revised to `my-commits`; four shared texts; 16 October 2026,
  version 0.141.0.": „Auf deinem Hauptzweig lagen Commits, die auf GitHub
  fehlten. Ich habe sie auf den Zweig `my-commits` gelegt und den Hauptzweig auf
  den Stand von GitHub gebracht. Sollen sie nach GitHub, sag es mir, dann öffne
  ich dafür einen Pull Request."
- **The last message of the run with nobody there has two groups, the result and
  what is theirs to do, and nothing outside them; the second is left out where
  empty.** It stands in this shared text so that every end of that run reads it,
  the stops of `plan-work` and the halt of `cut-into-tasks` included, which do
  not load `build-work`. B5 and its addendum in entry "Where each text devloop
  owes the person stays, goes into a pull request, an issue or a file, or drops,
  built after the decisions of the person of 17 October 2026: the introduction
  of `start-work`, the sentences that say why a question comes now in the
  wording approved that day, the last message of the run with nobody there in
  two groups, and the lines of the skills, the inserted texts and two hooks
  brought in line with the output style; 17 October 2026, version 0.143.0.".
  Approved headings, same entry: „Ergebnis“ and „Für dich zu tun“.

## `shared/mark.md`

- **The mark's third line names the session that wrote it.** The hook on
  permission prompts answers no only in the session the mark names, so a mark a
  broken-off session left standing touches no later session with a person in it.
  Entry "The behaviour with nobody there: a refusal, a command that does not
  finish inside its call, an install that does not go through, the two halts of
  `setup-checks`, a hook for permission prompts, and start condition 4 off the
  permission mode; 9 October 2026, version 0.133.0.".

## `shared/merge-handover.md`

- **The merge handover stands last in the message that ends the turn, in their
  language, with nothing beside it or after it, and no sentence on what comes
  after the merge.** Text written between two tool calls can land in a collapsed
  note, and the step that resumes says what comes next. Decision 6 of entry
  "Where the text devloop owes the person stands, decided by the person on 17
  October 2026, and every question put to it: what a decision needs in the
  question, everything else in the message that ends the turn, nothing between
  two tool calls; the mode question of `setup-checks` step 8 in the wording
  approved that day, in its fields and with nothing before it; 17 October 2026,
  version 0.142.0.". Case for the second half: in the first closing run of
  milestone 3, 11 October 2026, the handover before the merge said that the
  unattended mode stays off and that `--auto` sets it up later, and the run went
  from the proven merge to planning, past step 8 of `setup-checks` it owed,
  defect 1 of entry "The first closing run of milestone 3, made on 11 October
  2026 in `devloop-test-w` under a record saying no, read off its session log
  and the project, with the decisions of that day on the arrangement of the
  closing runs: eleven defects, four met again, one open question; 11 October
  2026, the version stays 0.135.0.".
- **Why GitHub does not merge it itself is said in the words that fit the case,
  naming neither auto-merge nor any term of GitHub's a user need not know.** A
  user hears of auto-merge there for the first time and does not understand it.
  Case: on 19 October 2026 the run in `devloop-test-z` said „Auto-Merge geht
  nicht, weil auf `main` noch kein Required Check steht, auf den GitHub warten
  könnte.“, and the person stated that the sentence is not understandable and
  does not say when there is a required check, defect 15 of entry "The two runs
  of 19 October 2026 in `devloop-test-z` and `devloop-test-y` under the
  installed 0.148.0, read off their session logs and the projects, and where
  milestone 3 stands under the criterion the person decided that day, in place
  of the one of 12 October 2026: every defect that concerns the milestone listed
  in three groups, and the milestone not reached; defects 1, 3, b, c and i held,
  defect a held at every place under one reading and not under another, 13 held
  but for one point, 14 held at one place and not at the other, 5 and 9 of the
  entry of 16 October 2026 held, 4, 10 and 11 of it did not, 12 met no run, the
  defect of 15 October 2026 on the loose issues met again; of the six rows of
  the check table of `devloop-test-y` four went as their case says and two were
  decided without the question; nineteen new defects, three of them the person's
  wordings of that day, one with a should the person has still to decide; 19
  October 2026, the version stays 0.148.0."; built in entry "The three wordings
  the person approved on 19 October 2026 built, the places sharpened where the
  skill said less than the approved wording, and the person's decisions of that
  day on the convention against dictated wording and on defect a of the second
  closing run: the first case of the merge handover, the awake line and the two
  labels of the mode question, the two descriptions that send the run alone;
  defects 13, 14 and 15 of the entry of 19 October 2026 on the two runs and
  defect 13 of the entry of 16 October 2026 built; defect a held; 19 October
  2026, version 0.149.0.". Approved wordings: the first case, that entry:
  „GitHub kann ihn nicht selbst mergen, weil es noch keine Pflichtprüfung gibt,
  auf die es warten könnte. Eine Pflichtprüfung richtet devloop nur ein, wenn du
  ihm erlaubst, ohne dich zu arbeiten.“; the two other cases, point 11 of entry
  "The decisions of 12 October 2026: milestone 3 has not landed with the two
  closing runs and no run with Go follows; twenty-seven things to build before
  the next run, on the install guard, at the setup and at planning and building;
  three things decided and not built now; the person's wordings, word for word;
  who changed the check targets in the second closing run; 12 October 2026, the
  version stays 0.135.0.": „Auto-Merge ist in diesem Repository aus." and „Die
  Prüfungen sind schon durch, deshalb nimmt GitHub keinen Auto-Merge mehr an."
- **The merge command is typed here in Claude Code with `!` in front, in a code
  block of its own with the repository named on it; its output in the
  conversation releases the run, and the landing is read off the platform, never
  off the output alone.** The command asks nothing, so it needs no second window
  and the person need say nothing; `gh` resolves the repository from the
  directory it runs in, and nothing says which folder a `!` command runs in.
  Case: in the second closing run of milestone 3, 11 October 2026, the merge
  commands carried nothing that made them run from the person's terminal;
  measured that day with gh 2.96.0, `gh pr view 13` in an empty directory
  answered "failed to run git: fatal: not a git repository", and `gh pr merge
  --help` names `-R, --repo [HOST/]OWNER/REPO`; defect f of entry "The second
  closing run of milestone 3, made on 11 October 2026 in `devloop-test-w` under
  a record saying yes, set up through `--auto`, read off its session log and the
  project, with the runs of both closing runs on the things of the table and the
  context the two runs used: nine defects, two met again, the open question met
  again; 11 October 2026, the version stays 0.135.0.". Approved wording, (6) of
  entry "Handovers say where the command is typed, sign-in and identity in
  steps.": „Der Pull Request „Set up devloop: control documents, task runner,
  labels“ ist offen. GitHub kann ihn nicht selbst mergen, weil es noch keine
  Pflichtprüfung gibt, auf die es warten könnte. Eine Pflichtprüfung richtet
  devloop nur ein, wenn du ihm erlaubst, ohne dich zu arbeiten. Merge ihn hier
  in Claude Code, mit `!` davor:“ — „`! gh pr merge 1 --squash --repo
  jayjay-create/devloop-test-w`“ — „Sobald er drin ist, geht es weiter. Bis
  dahin passiert hier nichts.“ See docs/skill-conventions.md under "Every skill
  carries these two".
- **The merge is handed over in one text, inserted wherever a merge is handed
  over.** Places that each said it in their own words lost what the handover
  needs. Case: in the first closing run of milestone 3 none of five handovers
  named the command, defect 2 of entry "The first closing run of milestone 3,
  made on 11 October 2026 in `devloop-test-w` under a record saying no, read off
  its session log and the project, with the decisions of that day on the
  arrangement of the closing runs: eleven defects, four met again, one open
  question; 11 October 2026, the version stays 0.135.0."; in the second the
  command carried nothing that made it run from the person's terminal, defect f
  of entry "The second closing run of milestone 3, made on 11 October 2026 in
  `devloop-test-w` under a record saying yes, set up through `--auto`, read off
  its session log and the project, with the runs of both closing runs on the
  things of the table and the context the two runs used: nine defects, two met
  again, the open question met again; 11 October 2026, the version stays
  0.135.0."; made one shared text in entry "Part B of the decisions of 12
  October 2026 at the setup, points 7 to 19, and the four defects of milestone 3
  that lie with the setup — defects 1 and 3 of the first closing run, b and i of
  the second — built; the auto-merge question revised on 16 October 2026 to the
  case where a gate stands already; the merge handover and the branch deletion
  as shared texts; a changed file and commits of their own at a failed fetch
  asked about and done by the run; 16 October 2026, version 0.140.0.".

## `shared/missing-command.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/mode-set-up.md`

- **The guard on the mark blocks its write where a start condition it reads does
  not hold or is not established; a deletion or a read of the mark passes.** A
  mark written another way starts no run with nobody there. Entries "Conditions
  6 and 7 at the mark, the rule asked after a refusal, titles." and "Start
  conditions read by one program, the mark blocked on five of them.".
- **The rule for the classifier of auto mode is no start condition; a refused
  install brings its question at the next start with `--auto`, decided off the
  issue the refusal left.** Without the rule the run starts and treats auto
  mode's refusal as the refusal it is. Entry "Conditions 6 and 7 at the mark,
  the rule asked after a refusal, titles.".

## `shared/project-language.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/refer-by-name.md`

- **One exception to naming by title: the question on the rule for auto mode
  names each refused install's issue by its number.** The command before the
  number already says what it is about, and an install issue's title would name
  the same install again. Case: at the second start with `--auto` of run 3a of
  23 October 2026 both askings named the issue by its title, entry "Six closing
  runs read off their logs, each on the defects it met."; decision (3) of entry
  "Install lines by one program, written where the install stood alone.", built
  in entry "Questions say why they come and give the issue's number, routes
  unasked.". Approved wording of the question, entry "Conditions 6 and 7 at the
  mark, the rule asked after a refusal, titles.": „Der Auto-Modus hat in einem
  Lauf ohne dich `<Befehl>` abgelehnt (Issue #<Nummer>). Darf ich in deiner
  Datei `~/.claude/settings.json` eine Regel eintragen, damit der Auto-Modus
  Installationen in devloop-Projekten nicht von sich aus blockiert?“ With
  several issues it names each install with its issue.

## `shared/restate.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/rule-not-written-down.md`

- **That a rule is written already, that nothing came out of the file, and what
  the split decided as it is made, are not said; a rule found written is said
  only where a breach files an issue, and the split per finding at the close.**
  A text reaches the person only where they have to decide or do something,
  something failed, something changed they did not start, or it is the result.
  Entry "Where each text devloop owes the person stays, goes into a pull
  request, an issue or a file, or drops, built after the decisions of the person
  of 17 October 2026: the introduction of `start-work`, the sentences that say
  why a question comes now in the wording approved that day, the last message of
  the run with nobody there in two groups, and the lines of the skills, the
  inserted texts and two hooks brought in line with the output style; 17 October
  2026, version 0.143.0.".
- **Unattended, the rule is written all the same.** With nobody there it is the
  only way a rule ever reaches the file. Case: measured on 26 September 2026
  across the six bench projects, every `docs/agents/standards.md` carried only
  the sentence written when it was created; in `devloop-test-o` it said the
  repository had no code, 36 landed pull requests in, entry "The first planning
  run alone, measured on 14 September 2026 in `devloop-test-o` — the first run
  on 0.100.0, six findings, and two places where the wording is the user's to
  settle before anything is built.".
- **A rule on the main branch for more than ten landed pull requests with no
  breach issue citing it comes out.** A file that only grows costs every review,
  and a rule dropped too early comes back the next time the defect appears; ten
  is set, not measured. Entry "The first planning run alone, measured on 14
  September 2026 in `devloop-test-o` — the first run on 0.100.0, six findings,
  and two places where the wording is the user's to settle before anything is
  built."; see docs/skill-conventions.md under "A project's rules are written at
  the review's close".

## `shared/seam-and-condition.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/set-aside-at-start.md`

- **At a start, a change still set aside is asked about before the answer is
  acted on, one question per file, through the widget, with nothing said before
  the call.** The question line says that the change lies set aside; a sentence
  before it would say it twice and can land in a collapsed note. Decided in
  entry "Part B of the decisions of 12 October 2026 at planning and building,
  points 20 to 26, built; the run with nobody there at a changed file in the way
  of the main branch and at commits of its own on it, decided by the person on
  16 October 2026 and built — the change set aside under a name devloop knows
  and brought back where the mark goes, the commits onto a branch of their own,
  the question at the next start; the branch's name revised to `my-commits`;
  four shared texts; 16 October 2026, version 0.141.0."; the sentence before the
  question dropped in entry "Where the text devloop owes the person stands,
  decided by the person on 17 October 2026, and every question put to it: what a
  decision needs in the question, everything else in the message that ends the
  turn, nothing between two tool calls; the mode question of `setup-checks` step
  8 in the wording approved that day, in its fields and with nothing before it;
  17 October 2026, version 0.142.0.". Approved wording, entry "Part B of the
  decisions of 12 October 2026 at planning and building, points 20 to 26, built;
  the run with nobody there at a changed file in the way of the main branch and
  at commits of its own on it, decided by the person on 16 October 2026 and
  built — the change set aside under a name devloop knows and brought back where
  the mark goes, the commits onto a branch of their own, the question at the
  next start; the branch's name revised to `my-commits`; four shared texts; 16
  October 2026, version 0.141.0.": the question „Deine Änderung an `README.md`
  liegt noch beiseite, seit ein Lauf ohne dich sie dort abgelegt hat. Soll ich
  sie zurückholen?"; „Ja, zurückholen" with the line „Sie steht dann wieder in
  deinem Projekt."; „Später" with the line „Ich frage beim nächsten Start
  wieder."; „Verwerfen" with the line „Die Änderung wird gelöscht und ist danach
  weg."
- **The drop of the third answer takes the entry the line names when the program
  is run again just before it.** An earlier answer's pop or drop renumbers the
  entries under it. Case: measured on 19 October 2026 with git 2.50.1, with the
  entries read once the drop took the person's own entry, gone for good, and
  left the run's set aside, entry "The catch-up of 19 October 2026 after the
  consistency audit of 18 October 2026: the eleven findings its entry records as
  they are, built — a stop at `no required check:` with nobody there, the two
  cases past the gate named, a read before every pop and drop of a change set
  aside, the mark at the three fetch stops of `build-work`, the failed attempts
  of an install, the issue of a conflicted bring-back no longer read as from
  outside, two comments, the header of a question a name of at most twelve
  characters by the person's decision of that day, a should a later decision
  changes, and what the comparison before the first change shows; 19 October
  2026, version 0.148.0.".

## `shared/set-aside-back.md`

- **A change brought back is said in one line at the next message that ends a
  turn with text.** It comes back into their project after their yes, and text
  between two tool calls can land in a collapsed note. Approved wording, entry
  "Part B of the decisions of 12 October 2026 at the setup, points 7 to 19, and
  the four defects of milestone 3 that lie with the setup — defects 1 and 3 of
  the first closing run, b and i of the second — built; the auto-merge question
  revised on 16 October 2026 to the case where a gate stands already; the merge
  handover and the branch deletion as shared texts; a changed file and commits
  of their own at a failed fetch asked about and done by the run; 16 October
  2026, version 0.140.0.": „Deine Änderung an `README.md` ist wieder da.“
- **The pop merges the change back where GitHub changed another line; where it
  changed the same line, it reports a conflict, keeps the stash, exits 1 and
  leaves both versions between conflict markers.** That is where the run reads
  both lines before it asks. Measured on 6 October 2026 with git 2.50.1, entry
  "The status of a check class takes four forms and a guard holds the table to
  them, the unattended mode starts on two permissions more and is set up in
  `setup-checks` step 8 or through `--auto`, a state is read before a task is
  released, and a review finding about the table goes a third way; 5 October
  2026, version 0.129.0.", and again on 16 October 2026, entry "Part B of the
  decisions of 12 October 2026 at the setup, points 7 to 19, and the four
  defects of milestone 3 that lie with the setup — defects 1 and 3 of the first
  closing run, b and i of the second — built; the auto-merge question revised on
  16 October 2026 to the case where a gate stands already; the merge handover
  and the branch deletion as shared texts; a changed file and commits of their
  own at a failed fetch asked about and done by the run; 16 October 2026,
  version 0.140.0.".
- **The question which line holds carries both lines in its question field, with
  nothing said before the call; the change stays set aside until they answer;
  afterwards the file leaves the index and the stash is dropped, and `git status
  --short` reads ` M`.** What the decision needs stands in the question; their
  change stands uncommitted as it stood. Decided as point 19 of entry "The
  decisions of 12 October 2026: milestone 3 has not landed with the two closing
  runs and no run with Go follows; twenty-seven things to build before the next
  run, on the install guard, at the setup and at planning and building; three
  things decided and not built now; the person's wordings, word for word; who
  changed the check targets in the second closing run; 12 October 2026, the
  version stays 0.135.0."; measured on 16 October 2026, entry "Part B of the
  decisions of 12 October 2026 at the setup, points 7 to 19, and the four
  defects of milestone 3 that lie with the setup — defects 1 and 3 of the first
  closing run, b and i of the second — built; the auto-merge question revised on
  16 October 2026 to the case where a gate stands already; the merge handover
  and the branch deletion as shared texts; a changed file and commits of their
  own at a failed fetch asked about and done by the run; 16 October 2026,
  version 0.140.0.".

## `shared/skill-name.md`

- **A name the user typed is not said back, and what that command does is not
  announced.** It shows in what the run does. Case: on 18 September 2026 a run
  said the typed name back, entry "The rule against saying a skill's name did
  not hold where a skill could not work, measured on 18 September 2026 in three
  runs, and the move onto inserted text is not the cause."; SH-09 of entry
  "Where each text devloop owes the person stays, goes into a pull request, an
  issue or a file, or drops, built after the decisions of the person of 17
  October 2026: the introduction of `start-work`, the sentences that say why a
  question comes now in the wording approved that day, the last message of the
  run with nobody there in two groups, and the lines of the skills, the inserted
  texts and two hooks brought in line with the output style; 17 October 2026,
  version 0.143.0.".
- **Where the run cannot go on, what is missing and what could be done instead
  are said by what they do, not by a skill's name.** A name in a reply is a step
  handed to the person to learn. Case: on 18 September 2026, three times in a
  directory with nothing in it, a run that could not build named the build and
  named the setup as the thing to run instead, a name nobody had typed, entry
  "The rule against saying a skill's name did not hold where a skill could not
  work, measured on 18 September 2026 in three runs, and the move onto inserted
  text is not the cause.".
- **A command handed over runs as it stands, from wherever the person is:
  `--repo OWNER/REPO` on a `gh` command, `cd <directory> &&` before one that
  needs the project's directory.** No knowledge of commands in a terminal may be
  assumed of them. Case: in the first closing run of milestone 3 `npx playwright
  install chromium` was handed over without the change into the project
  directory; decided as point 18 of entry "The decisions of 12 October 2026:
  milestone 3 has not landed with the two closing runs and no run with Go
  follows; twenty-seven things to build before the next run, on the install
  guard, at the setup and at planning and building; three things decided and not
  built now; the person's wordings, word for word; who changed the check targets
  in the second closing run; 12 October 2026, the version stays 0.135.0.", with
  the example `cd ~/devloop-test-w && npx playwright install chromium`.
- **A text that says the person has to do something at the computer says how,
  step by step; a command the run is not sure of it reads first in the maker's
  guide and gives with the source; what another program guides it does not
  describe.** Nothing is assumed of them between the steps, and a description of
  another's flow stops being true once its maker changes it. The person's rule
  of 28 October 2026, entry "Every subagent gets the install record, the build
  reads its tools first.", and the addition after the push, entry "Handovers say
  where the command is typed, sign-in and identity in steps."; the PATH steps
  are quoted under `shared/install-tool.md`. Approved wording of the refused
  sign-in, entry "Handovers say where the command is typed, sign-in and identity
  in steps.": „GitHub hat die Anmeldung abgelehnt. So meldest du dich neu an:“ —
  „1. Öffne ein zweites Terminalfenster, nicht das, in dem Claude Code läuft.
  Die Anmeldung stellt dir Fragen, und die gehen nur dort.“ — „2. Gib dort ein:
  `gh auth login --web --git-protocol https`“ — „3. Folge den Anweisungen im
  Terminal und im Browser.“ — „4. Sag mir hier Bescheid, sobald das erledigt
  ist.“ See docs/skill-conventions.md under "Every skill carries these two".
- **A command the person types while Claude Code runs goes into Claude Code with
  `!` where it asks nothing, form A, and into a second terminal window where it
  asks something or does not end by itself, form B; in doubt B; the hooks of
  devloop do not fire on a `!` command.** Under A the command and its output
  land in the conversation and the run answers it; a command that asks, or runs
  until they end it, would hold Claude Code. Decided on 28 October 2026, rule
  (b) of entry "Handovers say where the command is typed, sign-in and identity
  in steps."; measured that day on the person's Mac, Claude Code 2.1.312, in
  `devloop-test-aa` with devloop 0.164.0: `! git -c
  user.email=probe@example.invalid status` ran and showed git's state, a command
  the identity guard blocks when the run calls it, and Claude answered the
  output by itself. The approved handover in both forms is quoted under
  `shared/install-tool.md`. In doubt the text names what the command may ask: a
  reason saying that it asks would claim what the run does not know. The
  wordings of form B then carry „kann etwas von dir abfragen, etwa dein
  Passwort“ in place of „fragt nach deinem Passwort“, decided by the person on 1
  November 2026, entry "The loaded texts lose their history, reasons move to
  docs/rationale.md."

## `shared/status-forms.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `shared/three-questions.md`

- **In the interview every decision about the idea is a question to the person
  with the run's recommendation, even one a later task could change cheaply; the
  run settles only what the first test sorts out and what the project's rules
  settle.** A decision taken for them is a silent assumption, and every later
  task builds on what it settles. Case: on 16 October 2026 in project 1 Stage 1
  settled the open design questions itself, put no round, and asked three only
  after the person objected, defect 3 of entry "The two runs of 16 October 2026
  in `devloop-test-x` and `devloop-test-y` under the installed 0.141.0, read off
  their session logs and the projects, the bench for defects d and 11 and for
  the install guard of defect c, and where milestone 3 stands after part A of
  the entry of 12 October 2026: defects 1, 3, b, c and i held, a did not hold at
  four places, d and 11 held on the bench and met no run; fifteen new defects,
  nine met again; the milestone has not landed; 16 October 2026, the version
  stays 0.141.0."; decided in entry "What the interview that sharpens an idea
  asks: every decision about the idea put to the person as a question with a
  recommendation, decided by the person on 18 October 2026, in `plan-work` Stage
  1 and in the interview of `untangle-idea`; defect 3 of the entry of 16 October
  2026 on the runs of that day with it; 18 October 2026, version 0.145.0.".
- **Through the widget the recommendation stands on the answer: the recommended
  answer first, its label ending in brackets on the word for "recommended", its
  description saying why; as text, after the question.** It is the form Claude
  Code's question tool names for itself. Case: on 19 October 2026 the four
  questions of the rounds in project z carried no recommended answer, defect 7
  of entry "The two runs of 19 October 2026 in `devloop-test-z` and
  `devloop-test-y` under the installed 0.148.0, read off their session logs and
  the projects, and where milestone 3 stands under the criterion the person
  decided that day, in place of the one of 12 October 2026: every defect that
  concerns the milestone listed in three groups, and the milestone not reached;
  defects 1, 3, b, c and i held, defect a held at every place under one reading
  and not under another, 13 held but for one point, 14 held at one place and not
  at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it
  did not, 12 met no run, the defect of 15 October 2026 on the loose issues met
  again; of the six rows of the check table of `devloop-test-y` four went as
  their case says and two were decided without the question; nineteen new
  defects, three of them the person's wordings of that day, one with a should
  the person has still to decide; 19 October 2026, the version stays 0.148.0.".
  Approved form, entry "The questions of a round in the interview built as the
  person decided on 19 October 2026: what the run settled itself in a round is a
  question of its own on the assumptions of the round, first in the call and
  before the round's questions, two answers and no recommendation, alone in its
  call where the round asks nothing else and nothing handed on any more; through
  the widget the recommendation stands on the answer, the recommended answer
  first, its label ending in brackets on the word for recommended in their
  language, its description saying why; defects 7 and 8 of the entry of 19
  October 2026 on the two runs built; 19 October 2026, version 0.150.0.",
  answers invented: the question line „In welcher Sprache zeigt die Seite ihre
  Texte?“; the first answer with the label „Deutsch (Empfohlen)“ and the
  description „Die Seite richtet sich an deutschsprachige Nutzer.“; the second
  with the label „Englisch“.
- **What the run settled itself in a round is a question of its own on the
  round's assumptions, first in the call, two answers, no recommendation; alone
  in its call where the round asks nothing else; nothing handed on.** Put into
  the first question's field the points read as part of that question. Case: on
  19 October 2026 in project z the settled line opened the field of „Sprache“,
  and the person stated it had nothing to do with that question, defect 8 of
  entry "The two runs of 19 October 2026 in `devloop-test-z` and
  `devloop-test-y` under the installed 0.148.0, read off their session logs and
  the projects, and where milestone 3 stands under the criterion the person
  decided that day, in place of the one of 12 October 2026: every defect that
  concerns the milestone listed in three groups, and the milestone not reached;
  defects 1, 3, b, c and i held, defect a held at every place under one reading
  and not under another, 13 held but for one point, 14 held at one place and not
  at the other, 5 and 9 of the entry of 16 October 2026 held, 4, 10 and 11 of it
  did not, 12 met no run, the defect of 15 October 2026 on the loose issues met
  again; of the six rows of the check table of `devloop-test-y` four went as
  their case says and two were decided without the question; nineteen new
  defects, three of them the person's wordings of that day, one with a should
  the person has still to decide; 19 October 2026, the version stays 0.148.0.".
  Approved frame, entry "The questions of a round in the interview built as the
  person decided on 19 October 2026: what the run settled itself in a round is a
  question of its own on the assumptions of the round, first in the call and
  before the round's questions, two answers and no recommendation, alone in its
  call where the round asks nothing else and nothing handed on any more; through
  the widget the recommendation stands on the answer, the recommended answer
  first, its label ending in brackets on the word for recommended in their
  language, its description saying why; defects 7 and 8 of the entry of 19
  October 2026 on the two runs built; 19 October 2026, version 0.150.0.": header
  „Annahmen“; in the question field the line „Für alle Fragen dieser Runde nehme
  ich als gegeben:“, each point on a line of its own opened by a dash, after a
  blank line the question line „Stimmt das so?“; the first answer „Stimmt so“
  with „Ich plane mit diesen Punkten weiter.“; the second „Etwas stimmt nicht“
  with „Ich frage nach, was nicht stimmt, und stelle die Fragen dieser Runde,
  die davon abhängen, noch einmal.“; where the round asks nothing else the first
  line reads „Für alles Weitere nehme ich als gegeben:“ and the second
  description only „Ich frage nach, was nicht stimmt.“

## `shared/verdict-target.md`

Nothing in this file stood as history; its rules carry their own reasons.

## `output-styles/devloop.md`

- **Nothing stands as text before the call that shows the widget.** Text there
  can land in a collapsed note the person does not read. Case: on the bench of
  16 October 2026, with `claude-sonnet-5-5` at medium under the forced style,
  the five parts before the mode question went into a progress update and into
  no text block in five runs of five without a hook, six of six with an
  observing hook and one of one with a judge, entry "Where the text devloop owes
  the person stands, decided by the person on 17 October 2026, and every
  question put to it: what a decision needs in the question, everything else in
  the message that ends the turn, nothing between two tool calls; the mode
  question of `setup-checks` step 8 in the wording approved that day, in its
  fields and with nothing before it; 17 October 2026, version 0.142.0."; the
  style's sentence written as B11 of entry "Where each text devloop owes the
  person stays, goes into a pull request, an issue or a file, or drops, built
  after the decisions of the person of 17 October 2026: the introduction of
  `start-work`, the sentences that say why a question comes now in the wording
  approved that day, the last message of the run with nobody there in two
  groups, and the lines of the skills, the inserted texts and two hooks brought
  in line with the output style; 17 October 2026, version 0.143.0.", which said
  then that owed text did so in every measured run.
