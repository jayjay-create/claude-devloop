---
name: research
description: Answer a question from primary sources
allowed-tools: Bash(${CLAUDE_PLUGIN_ROOT}/bin/devloop-text *)
---

**If `[shell command execution disabled by policy]` stands anywhere in this
file, stop before anything else.** The rules this skill shares with the others
are inserted when it loads, and that text standing where a rule should be means
they were not. Tell the user, in the language they write in, three things: that
this workflow cannot work right now because its shared rules were not loaded;
that the cause is the setting `disableSkillShellExecution`, which switches off
the commands in skills; and that it stops here rather than carrying on without
those rules. Then do nothing else.

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text language-opening`

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text skill-name`

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

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text project-language`

## When a command does not answer

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text command-does-not-answer`

---

!`${CLAUDE_PLUGIN_ROOT}/bin/devloop-text closing`
