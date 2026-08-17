---
name: setup-project
description: Richtet ein Projekt fuer den Bau-Workflow ein und schreibt docs/agents/. Nutze das, wenn der Projektstatus "Einrichtung: nicht eingerichtet" meldet, wenn docs/agents/ fehlt, oder wenn der Nutzer nach der Einrichtung fragt.
---

# Projekt einrichten

Laeuft einmal pro Projekt. Ergebnis sind fuenf Dateien unter `docs/agents/`,
kanonische Ziele im Task-Runner und ein Verweis-Block in `CLAUDE.md`.

**Frage nur, wo das Projekt oder der Mensch wirklich etwas zu entscheiden hat.**
Was Konvention dieses Sets ist, wird angelegt und gemeldet, nicht gefragt.
Was du selbst nachsehen kannst, wird nachgesehen, nicht gefragt.

## Schritt 1 — Erkunden, ohne etwas zu aendern

- Git: Remote-Adresse, Branch, gibt es ueberhaupt einen Commit
- Gibt es Code? Zaehle Quelldateien ausserhalb von Konfiguration und Doku
- Steuerdokumente: `CLAUDE.md`, `AGENTS.md`, `CONTEXT.md`, `docs/adr/`, `README.md`
- Task-Runner: `Makefile`, `justfile`, `Taskfile.yml`, `scripts` in `package.json`
- Sprachen und Manifeste: `pyproject.toml`, `package.json`, `go.mod`, `Cargo.toml`, `pom.xml`
- Vorhandene Pruefungen: Konfiguration fuer Formatierung, Lint, Typen; Testverzeichnisse;
  `.github/workflows/`
- Vorhandene Labels im Tracker, falls einer erreichbar ist
- Wie das Projekt lokal startet: `docker-compose.yml`, `.env.example`, README
- Globale Datei `~/.claude/CLAUDE.md`: steht dort schon ein Abschnitt "Ansprache"?

## Schritt 2 — Das Gefundene vorlegen

Hoechstens zehn Zeilen. Sag dabei ausdruecklich, was du **nicht** gefunden hast.

## Schritt 3 — Der leere Fall

Findest du keinen Code, ist das kein Hindernis. Schreibe `checks.md` mit allen
neun Klassen auf `leer`, ueberspringe Schritt 4, und sag es beim Abschluss:
das Pruefnetz wird gefuellt, sobald es etwas zu pruefen gibt.

## Schritt 4 — Fragen

Nur diese, und jede nur unter ihrer Bedingung. Empfehlung voran, sodass ein
Wort als Antwort reicht.

1. **Issue-Tracker** — nur wenn kein Remote da ist oder mehrere in Frage kommen.
   Bei genau einem Remote: feststellen und melden, nicht fragen.
   Ein Tracker ohne Blockier-Beziehungen zwischen Issues reicht nicht. Eine
   Textdatei ist kein Ersatz: `build-work` waehlt das naechste Ticket danach aus,
   welche Blocker geschlossen sind. Gibt es keinen geeigneten Tracker, brich die
   Einrichtung ab und sag genau das.
2. **Pruefungen** — immer. Lege deine Zuordnung vor: welches gefundene Werkzeug
   fuellt welche Klasse, und welche Klassen bleiben leer. Frage getrennt, ob
   fehlende Werkzeuge installiert werden sollen — das veraendert das Projekt.
3. **Lokale Umgebung** — immer, ausser du hast alles aus `docker-compose.yml`
   oder README ablesen koennen. Welche Prozesse, welche Reihenfolge, welche Ports.
4. **Labels** — nur wenn im Tracker bereits Labels mit ueberlappender Bedeutung
   existieren. Dann fragen: auf die vorhandenen abbilden oder eigene daneben.
   Sonst die fuenf Standard-Labels anlegen und melden, nicht fragen.
5. **Ort von Glossar und ADRs** — nur wenn schon etwas an anderer Stelle liegt.
   Sonst `CONTEXT.md` in der Wurzel und `docs/adr/`, angelegt und gemeldet.
6. **Ansprache** — nur wenn `~/.claude/CLAUDE.md` keinen Abschnitt "Ansprache" hat.
   Sprache, Antwortlaenge, Foermlichkeit. Das ist eine Eigenschaft des Menschen,
   nicht des Projekts, und wird global abgelegt (Schritt 7).

## Schritt 5 — Kanonische Ziele im Task-Runner

Diese Namen gelten in jedem Projekt gleich. Existiert kein Task-Runner, lege ein
`Makefile` an. Existiert einer mit anderen Namen, lege duenne Ziele an, die auf
die vorhandenen Befehle zeigen; die vorhandenen bleiben unberuehrt.

**Ein Ziel in `checks.md` faellt ein Urteil und aendert nichts.** Ein Werkzeug,
das umschreibt, wird mit seiner pruefenden Option aufgerufen — Formatierung also
als `--check` oder gleichwertig. Das Umschreiben bekommt ein eigenes Ziel
(`fmt-write`), das in keiner Tabellenzeile steht und von keinem Hook gerufen wird.
Ein Ziel, das immer besteht, ist schlimmer als gar keines.

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

Dazu: `check` (alle blockierenden Klassen), `test-one NAME=<Name>`,
`services-up`, `fmt-write`.

Ziele je Datei nehmen den Pfad als `FILE=<Pfad>`.

Lege nur Ziele an, deren Befehl du kennst. Fuer eine Klasse ohne Werkzeug wird
**kein** Ziel angelegt.

## Schritt 6 — Die fuenf Dateien unter `docs/agents/`

### `checks.md`

Wird von Shell-Skripten gelesen. Spaltenanzahl und -reihenfolge exakt einhalten,
Spalte `Stand` ohne Umlaute.

    ---
    runner: make
    alles: check
    ---

    # Pruefungen

    | Klasse | Ziel je Datei | Ziel gesamt | Dateien | Dauer | Blockierend | Stand |
    |---|---|---|---|---|---|---|
    | lint | lint-file | lint | **/*.py | <1s | ja | gefuellt |
    | ende-zu-ende | - | - | - | - | nein | leer |

    ## Einen einzelnen Test fahren

    make test-one NAME=<Testname>

    ## Was die Pruefungen nicht abdecken

    - <je eine Zeile pro Luecke>

    ## Dienste, die laufen muessen

    make services-up

- `Dateien`: kommagetrennte Muster, `-` heisst: gilt fuer alles.
- `Dauer`: grob, etwa `<1s`, `20s`, `4min`. Entscheidet, wo die Klasse laeuft.
- `Blockierend`: `ja` oder `nein`.
- `Stand`: `gefuellt` nur, wenn das Ziel existiert, ein echtes Pruefwerkzeug
  aufruft und du es einmal ausgefuehrt hast. Sonst `leer` oder
  `ausgelassen: <Grund>`. Rate nie.
- Der Abschnitt "Was die Pruefungen nicht abdecken" ist Pflicht.

### `issue-tracker.md`

Wo Issues liegen. Die genauen Befehle zum Anlegen, Verknuepfen, Blockieren und
Setzen von Labels. Die fuenf Labels mit ihrer Bedeutung: `needs-triage` (neu),
`needs-info` (wartet auf Antwort), `ready-for-agent` (baubar), `needs-human`
(braucht eine menschliche Entscheidung), `wont-do` (abgelehnt, mit Begruendung).

### `domain.md`

Wo Glossar und ADRs liegen. Dass Begriffe sofort ins Glossar wandern, nicht
gesammelt. Die drei Kriterien fuer ein ADR: schwer umkehrbar, ohne Erklaerung
ueberraschend, Ergebnis eines echten Abwaegens. Das ADR-Format: Titel, Kontext,
Entscheidung, bindende Folgen, Status nur fuer abgeloest oder ueberholt,
verworfene Optionen nur wenn nicht offensichtlich, und die Zeile
"Was diese Entscheidung ungueltig machen wuerde".

### `standards.md`

Kodier-Regeln dieses Projekts, soweit sie nicht ohnehin ein Werkzeug erzwingt.
Findest du keine, schreibe das hin — leer ist ehrlicher als erfunden.

### `environment.md`

Prozesse, Reihenfolge, Ports, welches Fenster dauerhaft belegt ist. Was nach
welcher Art Aenderung nachzuziehen ist: neue Abhaengigkeit, Schema-Aenderung,
neue Einstellung, Server-Code, nur Oberflaeche. Welche Laeufe Geld kosten und
welcher Weg der kostenfreie ist.

## Schritt 7 — Globale Datei, einmal pro Rechner

Hat `~/.claude/CLAUDE.md` bereits einen Abschnitt "Wie mit mir geredet wird",
ueberspringe diesen Schritt. Sonst haenge an (nichts loeschen):

    ## Wie mit mir geredet wird

    <Antwort aus Frage 6: Sprache, Laenge, Foermlichkeit>

    1. Fachbegriffe im Original, nicht uebersetzen. Keine selbst gebauten
       Uebersetzungen, Metaphern, Merksaetze oder Kurznamen. Beim ersten
       Auftreten erklaeren.
    2. Nie einen Bezug als bekannt voraussetzen. Wird eine Datei genannt, steht
       im selben Satz, was sie ist und wo sie liegt, mit vollem Pfad.
    3. Fakten strikt von Vermutungen trennen. Nie behaupten, was nicht belegbar
       ist. Fehlenden Zugriff offen benennen.
    4. Eine Beobachtung ist nicht ihre Erklaerung: Beobachtung nennen, dann die
       moeglichen Erklaerungen, dann was sie unterscheiden wuerde.
    5. Keine erfundenen Kennungen, Feldnamen oder Beispiele aus der Fachdomaene.
    6. Eine Vorsichts-Empfehlung ohne gemessenen Grund ist eine Vermutung —
       sagen, wovor gewarnt wird.
    7. Eigene Empfehlungen offen korrigieren, sobald Fakten dagegen sprechen.
    8. Muss der Mensch etwas tun, was der Rechner nicht kann: genau ein Schritt,
       ohne Alternative daneben, mit dem exakten Wortlaut.
    9. Das Werkzeug nach seinem eigenen Zustand fragen, statt nach Textmustern
       zu suchen.
    10. Ein Arbeitsschritt endet mit einem Vorschlag fuer den naechsten und
        fuehrt ihn auf ein Ja hin selbst aus. Ein Befehlsname wird nur genannt,
        wenn der naechste Schritt sich nicht selbst starten laesst.

## Schritt 8 — Verweis-Block in CLAUDE.md

An eine bestehende `CLAUDE.md` anhaengen, nichts loeschen. Gibt es keine, anlegen.

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

## Schritt 9 — Abschluss

Hoechstens fuenf Zeilen: welche Dateien geschrieben wurden, welche Ziele angelegt,
wie viele Klassen `gefuellt` sind und welche nicht.

Nenne dann **keinen Befehl**, sondern schlage den naechsten Schritt vor und fuehre
ihn auf ein Ja hin selbst aus:

- Klassen mit `leer`: "Soll ich das Pruefnetz jetzt aufbauen?" — auf Ja den
  Skill `setup-checks` aufrufen.
- Sonst: "Soll ich mit der ersten Aufgabe anfangen?" — auf Ja `start-work`.
