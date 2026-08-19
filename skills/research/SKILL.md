---
name: research
description: Answer a question from primary sources
---

**Answer in the language the user writes in, not the language of this
document.** These instructions are in English because the repository is; that is not a signal about how to reply.

**Never say a skill's name to the user.** The stages have names so the skills can
call each other; to the person in front of you they are just what happens next.

# Answer a question from primary sources

You are already the background agent: whatever reached this skill put you here so
the session it came from keeps moving. Do not spin up another one — do the work.

Your job:

1. Investigate the question against **primary sources** (official docs, source code, specs, first-party APIs), not a secondary write-up of them. Follow every claim back to the source that owns it.
2. Write the findings to a single Markdown file, citing each claim's source.
3. Save it where the caller told you to. If it named nowhere, match whatever
   convention the repository already has for such notes, and say where you put
   it. Never leave the findings only in your own reply — the session that asked
   is not the session that reads.
