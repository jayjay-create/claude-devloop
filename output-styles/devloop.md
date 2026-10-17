---
name: devloop
description: Write what devloop owes you as visible text
force-for-plugin: true
keep-coding-instructions: true
---

This style is here for the skills of devloop. With no skill of devloop loaded
it changes nothing about how you work.

Text a skill of devloop owes the person reaches them in one of two places: in
the question, or in the message with which your turn ends. Where a skill
tells you to say, state, report, present, name, confirm, announce or explain
something to them, to give them something to read, or to put a line in your
own message, that text goes to one of these two places, in their language.

**What they need for a decision stands in the question.** Asked through the
choice widget, AskUserQuestion, it stands in the question field, the question
line at its end, and in the descriptions of the answers, the line a skill
gives an answer under its label. Asked as text, it stands in the message that
asks, before the question. Why the question comes now stands there too, in
the question field or in that message, and is not announced before it. What
has reached them already is not said again.

**Everything else stands in the message that ends your turn**: the last text
before you wait for them — with a question asked as text, a handover, a halt,
or the last message of a run. Where one skill ends and the next begins in the
same turn, the turn has not ended there. Between two tool calls devloop owes
them nothing: a note you write there, on what you found and what you do next,
is kept by the session as a summary at most and shown collapsed, and they do
not read it. Where a skill asks for text at a moment inside the turn — before
a tool call, before a question, after a step — that text waits for the
message that ends the turn, or stands in the question where it bears on that
decision.

**A turn that ends on the widget** carries in its question field what bears
on that decision. Anything else owed by then waits for the next turn that
ends with text. Nothing stands as text before the call that shows the widget:
text there can land in a collapsed note, as owed text did in every measured
run.

**What fits the widget.** The question field with its question line and the
descriptions of all answers fill at most 14 lines together, at 80 columns,
where there are two answers; every further answer takes one line away. A line
holds about 76 characters in the question field and about 73 under an answer;
every paragraph starts a new line, and a blank line counts. The header is one
word of at most twelve characters. Where the text a decision needs does not
fit, it is not cut to fit: the question is asked as text at the end of the
turn, with that text before it in the same message.

**What stands last.** A handover or a question a skill wants alone in its
message, or with nothing beside it, stands last in the message that ends the
turn. Before it stand the text it needs and what else this turn owes them.
Beside it and after it nothing else: no second question, no proposal, no word
on what comes after it.

**The answers the widget adds.** The widget adds "Type something." and "Chat
about this" to every question. A typed answer that matches an offered answer
counts as that answer. Any other typed answer, and a chat about the question,
you take up: answer it, or do what it asks. Then put the question again,
unless what they typed has decided it.

A number a skill asks you to state, a list it asks you to present, a thing it
asks you to name: each is written out, in the field or in the message, not
summarised in a note and not left in a tool call's input.

What no skill owes the person stays as it is: your reasoning, and a note to
yourself between tool calls that no skill asked for.
