---
name: setup-project
description: Richtet ein Projekt fuer den Bau-Workflow ein und schreibt docs/agents/. Nutze das, wenn der Projektstatus "Einrichtung: nicht eingerichtet" meldet, wenn docs/agents/ fehlt, oder wenn der Nutzer nach der Einrichtung fragt.
---

# Projekt einrichten

Laeuft einmal pro Projekt. Ergebnis sind sechs Dateien unter `docs/agents/`,
kanonische Ziele im Task-Runner und ein Verweis-Block in `CLAUDE.md`.

Frage nie nach etwas, das du selbst nachsehen kannst.

## Schritt 1 — Erkunden, ohne etwas zu aendern

Sieh selbst nach und notiere, was du findest:

- Git: Remote-Adresse, aktueller Branch, gibt es ueberhaupt einen Commit
- Vorhandene Steuerdokumente: `CLAUDE.md`, `AGENTS.md`, `CONTEXT.md`, `docs/adr/`, `README.md`
- Task-Runner: `Makefile`, `justfile`, `Taskfile.yml`, `scripts` in `package.json`
- Sprachen und Manifeste: `pyproject.toml`, `package.json`, `go.mod`, `Cargo.toml`, `pom.xml`
- Vorhandene Pruefungen: Konfiguration fuer Formatierung, Lint, Typen; Testverzeichnisse;
  Dateien fuer die kontinuierliche Integration unter `.github/workflows/`
- Monorepo-Anzeichen: Arbeitsbereiche, mehrere Manifeste in Unterverzeichnissen
- Wie das Projekt lokal startet: `docker-compose.yml`, `.env.example`, Startbefehle im README

## Schritt 2 — Das Gefundene vorlegen

Fasse in hoechstens zehn Zeilen zusammen, was du gefunden hast, und was daraus
noch offen ist. Erst danach fragen.

## Schritt 3 — Fragen, Abschnitt fuer Abschnitt

Eine Frage pro Runde, jede mit deiner Empfehlung voran, sodass ein Wort als
Antwort reicht. Frage nur, was du nicht selbst herausfinden konntest.

1. **Issue-Tracker.** Wo liegen Issues? Empfehle das, was zur Remote-Adresse passt.
   Gibt es keinen Remote: frage, ob einer angelegt werden soll.
2. **Etiketten.** Empfehle: `needs-triage`, `needs-info`, `ready-for-agent`,
   `needs-human`, `wont-do`.
3. **Glossar und ADRs.** Empfehle `CONTEXT.md` in der Wurzel und `docs/adr/`.
4. **Pruefungen.** Lege deine Zuordnung vor: welches gefundene Werkzeug fuellt
   welche Klasse. Nenne ausdruecklich die Klassen, fuer die du nichts gefunden hast.
5. **Lokale Umgebung.** Welche Prozesse muessen laufen, in welcher Reihenfolge,
   auf welchen Ports. Was ist nach welcher Art Aenderung nachzuziehen.
6. **Ansprache.** Sprache, Antwortlaenge, Foermlichkeit.

## Schritt 4 — Kanonische Ziele im Task-Runner anlegen

Diese Namen gelten in jedem Projekt gleich. Existiert kein Task-Runner, lege
ein `Makefile` an. Existiert einer mit anderen Namen, lege duenne Ziele an,
die auf die vorhandenen Befehle zeigen — die vorhandenen Ziele bleiben unberuehrt.

| Klasse | Ziel je Datei | Ziel gesamt |
|---|---|---|
| format | `fmt-file` | `fmt` |
| lint | `lint-file` | `lint` |
| typen | — | `types` |
| unit | `test-file` | `test-unit` |
| integration | — | `test-integration` |
| ende-zu-ende | — | `test-e2e` |
| secrets | — | `scan-secrets` |
| abhaengigkeits-schwachstellen | — | `scan-deps` |
| statische-sicherheitsanalyse | — | `scan-code` |

Dazu drei weitere: `check` (alle blockierenden Klassen nacheinander),
`test-one NAME=<Name>` (ein einzelner Test) und `services-up` (Dienste starten).

Ziele je Datei nehmen den Pfad als `FILE=<Pfad>` entgegen.

Lege nur Ziele an, deren Befehl du wirklich kennst. Fuer eine Klasse ohne
Werkzeug wird **kein** Ziel angelegt.

## Schritt 5 — Die sechs Dateien schreiben

### `docs/agents/checks.md`

Diese Datei wird von Shell-Skripten gelesen. Halte Spaltenanzahl und
Spaltenreihenfolge exakt ein und schreibe die Spalte `Stand` ohne Umlaute:
`gefuellt`, `leer` oder `ausgelassen: <Grund>`.

    ---
    runner: make
    alles: check
    ---

    # Pruefungen

    | Klasse | Ziel je Datei | Ziel gesamt | Dateien | Dauer | Blockierend | Stand |
    |---|---|---|---|---|---|---|
    | lint | lint-file | lint | **/*.py | <1s | ja | gefuellt |
    | ende-zu-ende | - | test-e2e | - | 8min | nein | leer |

    ## Einen einzelnen Test fahren

    make test-one NAME=<Testname>

    ## Was die Pruefungen nicht abdecken

    - <je eine Zeile pro Luecke>

    ## Dienste, die laufen muessen

    make services-up

Regeln fuer die Tabelle:

- `Dateien` ist eine kommagetrennte Liste von Mustern. Ein `-` heisst: gilt fuer alles.
- `Dauer` grob: `<1s`, `20s`, `4min`. Sie entscheidet, wo eine Klasse laeuft.
- `Blockierend` ist `ja` oder `nein`.
- `Stand` ist `gefuellt` nur dann, wenn das Ziel im Task-Runner wirklich existiert
  und du es einmal ausgefuehrt hast. Sonst `leer`. Rate nie.
- Ein `-` in einer Ziel-Spalte heisst: diese Klasse kann so nicht arbeiten.

Der Abschnitt "Was die Pruefungen nicht abdecken" ist Pflicht und darf nicht
leer bleiben. Findest du keine Luecke, schreibe hin, dass du keine gefunden hast.

### `docs/agents/issue-tracker.md`

Wo Issues liegen. Die genauen Befehle zum Anlegen, Verknuepfen, Blockieren und
Etikettieren. Die fuenf Etiketten mit ihrer Bedeutung.

### `docs/agents/domain.md`

Wo Glossar und ADRs liegen. Dass Begriffe sofort ins Glossar wandern, nicht
gesammelt. Die drei Kriterien fuer ein ADR: schwer umkehrbar, ohne Erklaerung
ueberraschend, Ergebnis eines echten Abwaegens. Das ADR-Format: Titel, Kontext,
Entscheidung, bindende Folgen, Status nur fuer abgeloest oder ueberholt,
verworfene Optionen nur wenn nicht offensichtlich, und die Zeile
"Was diese Entscheidung ungueltig machen wuerde".

### `docs/agents/standards.md`

Die Kodier-Regeln dieses Projekts, soweit sie nicht ohnehin von einem Werkzeug
erzwungen werden. Findest du keine, schreibe das hin — eine leere Datei ist
ehrlicher als erfundene Regeln.

### `docs/agents/environment.md`

Wie das Projekt lokal startet: Prozesse, Reihenfolge, Ports, welches Fenster
dauerhaft belegt ist. Was nach welcher Art Aenderung nachzuziehen ist
(neue Abhaengigkeit, Schema-Aenderung, neue Einstellung, Server-Code, nur Oberflaeche).
Welche Laeufe Geld kosten und welcher Weg der kostenfreie ist.

### `docs/agents/style.md`

Uebernimm diese neun Punkte woertlich, ergaenzt um die Antwort aus Frage 6:

1. Fachbegriffe im Original, nicht in die Projektsprache uebersetzen. Keine selbst
   gebauten Uebersetzungen, Metaphern, Merksaetze oder Kurznamen. Beim ersten
   Auftreten erklaeren.
2. Nie einen Bezug als bekannt voraussetzen. Wird eine Datei genannt, steht im
   selben Satz, was sie ist und wo sie liegt, mit vollem Pfad.
3. Fakten strikt von Vermutungen trennen. Nie behaupten, was nicht belegbar ist.
   Fehlenden Zugriff offen benennen.
4. Eine Beobachtung ist nicht ihre Erklaerung: Beobachtung nennen, dann die
   moeglichen Erklaerungen, dann was sie unterscheiden wuerde.
5. Keine erfundenen Kennungen, Feldnamen oder Beispiele aus der Fachdomaene.
6. Eine Vorsichts-Empfehlung ohne gemessenen Grund ist eine Vermutung — sagen,
   wovor gewarnt wird.
7. Eigene Empfehlungen offen korrigieren, sobald Fakten dagegen sprechen.
8. Muss der Mensch etwas tun, was der Rechner nicht kann: genau ein Schritt,
   ohne Alternative daneben, mit dem exakten Wortlaut.
9. Das Werkzeug nach seinem eigenen Zustand fragen, statt nach Textmustern zu suchen.

## Schritt 6 — Verweis-Block in CLAUDE.md

Haenge an eine bestehende `CLAUDE.md` an, ohne etwas zu loeschen. Gibt es keine,
lege sie an.

    ## Sitzungsstart

    Fasse zu Beginn jeder Sitzung den unter [Projektstatus] gemeldeten Stand in
    eigenen Worten zusammen und schlage genau einen naechsten Schritt vor.
    Frage nicht offen, woran gearbeitet werden soll.

    ## Steuerdokumente

    - docs/agents/checks.md — die Pruefungen dieses Projekts
    - docs/agents/issue-tracker.md — wo Issues liegen
    - docs/agents/domain.md — Glossar und ADRs
    - docs/agents/standards.md — Kodier-Regeln
    - docs/agents/environment.md — lokale Umgebung
    - docs/agents/style.md — wie mit dem Menschen geredet wird, gilt immer

## Schritt 7 — Abschluss

Melde in hoechstens fuenf Zeilen: welche Dateien geschrieben wurden, wie viele
Klassen `gefuellt` sind und welche `leer`.

Nenne dann genau einen naechsten Befehl:

- Gibt es Klassen mit `leer`: `/dev:setup-checks`
- Sonst: `/dev:start-work`
