# Logbook Format

The exact shape of every file in this logbook. Any AI writing to this folder should follow it, so files look the same whoever wrote them. Where it says "the AI", write your own name (Claude, Gemini, ChatGPT).

Everything is plain Markdown, UTF-8, one file per page. Use square brackets for placeholders. Angle brackets are only for link paths.

## The layout

```
[Logbook folder, default "Claude Logbook", in a synced drive]
  Start Here.md
  Activity Log.md
  Logbook Format.md        (this spec)
  Other chats/             (chat files that belong to no project)
  [Project]/
    📌 [Project] — Overview and Chat Log.md      (the dashboard)
    [Chat name] — Decisions and Prompt Log.md    (one per chat)
    [Chat name] — Decisions and Prompt Log.md
```

Project folders sit directly inside the logbook folder, next to Start Here. The 📌 at the front of the dashboard's file name is what makes it stand out in a file list, so never leave it off.

Defaults when Start Here doesn't say otherwise: logging mode full.

### File names

- The file name is the title plus `.md`. The first line of the file repeats the title as a `#` heading, because most viewers don't show the file name.
- Replace characters that drives reject with a hyphen: `/ \ : * ? " < > |`. Trim trailing spaces and periods.
- If a chat name is already taken in that folder, add the date: `[Chat name] (YYYY-MM-DD) — Decisions and Prompt Log.md`.

### Links between files

Relative Markdown links, with the path inside angle brackets so spaces, the 📌 and the em dash stay as they are. This reads cleanly in edit mode, which is how the OneDrive phone app opens files.

- From Start Here to a dashboard: `[📌 Website — Overview and Chat Log](<Website/📌 Website — Overview and Chat Log.md>)`
- From a dashboard to a chat file in the same folder: `[Open the chat file](<Website setup — Decisions and Prompt Log.md>)`
- From the Activity Log to a chat file: `[Website setup](<Website/Website setup — Decisions and Prompt Log.md>)`

### Collapsed responses

Each response goes inside an HTML details tag, so the chat file reads as a list of prompts with the responses folded away. Leave a blank line after the summary line and before the closing tag, or the bullets inside won't render.

```
<details>
<summary>[the AI]'s response</summary>

- First point
- Second point

</details>
```

GitHub, Typora, VS Code and most Markdown apps fold it. Obsidian folds it but shows the bullets as plain text. A plain text viewer shows the tags, and the response stays readable between them.

## Chat file

File: `[Project]/[Chat name] — Decisions and Prompt Log.md`. The chat name is what the chat is called in the user's sidebar. One file per chat. Every later exchange in the same chat is appended to the end of the same file.

```
# [Chat name] — Decisions and Prompt Log

> Chat: [Chat name] ([Claude Project name] Claude Project, or regular chat) · Dates: YYYY-MM-DD (to YYYY-MM-DD if it spans days) · Written by: [the AI] · Project: [Project]

**Summary:** What this chat did, two to four sentences, kept current as the chat goes.

**Decisions:** What the user decided. One decision goes on this line. For more than one, end the line after the label and list them below it as bullets, after a blank line, so Markdown doesn't run them together. Leave this out if nothing was decided.

**Result:** What exists now because of this chat: files, versions, published pages, answers.

**Left off:** Where it stopped and what's next. At a wrap-up: "Next-chat prompt is at the end of this file."

---

**Prompt 1 ([First name]):**

> The user's first prompt, word for word, typos included. Each paragraph its own > line. [screenshot of …] or [attached: file name] for attachments.

<details>
<summary>[the AI]'s response</summary>

- Everything the response said, complete in substance, as bullets
- Files, code or documents produced: name them and say where they live, don't paste them

</details>

**Prompt 2 ([First name]):**

> The next prompt

<details>
<summary>[the AI]'s response</summary>

- ...

</details>
```

Use "User" if Start Here gives no first name. A backfilled chat adds "· Backfilled YYYY-MM-DD · Chat link: [url]" to the header line; a chat logged by catch-up adds "· Caught up YYYY-MM-DD · Chat link: [url]".

At a wrap-up, add at the end:

```
---

**Next chat prompt:**

> The prompt to paste into a new chat, each paragraph its own > line
```

In **summary** mode, the chat file keeps the heading, the header line and the four header lines, then replaces the prompts with:

```
---

**What happened:**

- YYYY-MM-DD: one line per exchange worth keeping
```

## Dashboard

File: `[Project]/📌 [Project] — Overview and Chat Log.md`. One per project folder. No colors; the 📌 does that job.

```
# 📌 [Project] — Overview and Chat Log

> Status: [Status] · Last activity YYYY-MM-DD · Next: [one line]

## Chats, newest first

### [Chat name]

YYYY-MM-DD · [Claude Project name] Claude Project, or regular chat · [Open the chat file](relative link to the chat file)

**Summary:** One or two sentences.

**Result:** One or two sentences.

**Left off:** One sentence.

### [Older chat name]

...

## Where things live

- **[Thing]:** where it is (repo, site, file, other app)

## Rebuild from scratch

1. Read this file, then the chat files from oldest to newest.
2. [Steps to get the project back from nothing: where the code or files are, what to install or sign in to, what to paste where. Number each step.]
3. Start a new chat with the next-chat prompt at the end of the newest chat file.

## Earlier history

- [Older notes from before this logbook, as links. Leave this section out if there are none.]
```

Status values: Active, Paused, On hold, Idea, Done, Cold case, Dropped.

Headings stay plain text, with no links in them, because Markdown editors list headings in their outline sidebar and a link shows there as raw code. Number list items 1, 2, 3 in the file, since some editors show the numbers exactly as written.

## Activity Log entry

File: `Activity Log.md`. One entry per chat per day, at the bottom (newest at the bottom). No responses; the chat file has them.

```
**YYYY-MM-DD — [Project]: short headline**

One sentence. See [Chat name](relative link to the chat file).

> First prompt: the user's first prompt in the chat, word for word (the first paragraph if it's long)
```

A backfill run adds one entry for the whole batch, on the day it ran, linking each new chat file, instead of one per chat. A catch-up run does the same, with the project "Catch-up" and one bullet per chat giving its date, project and link.

For a one-off chat, the project is "Other" and the link points into `Other chats/`.

The file starts with `# Activity Log` and one line: "One entry per chat per day, newest at the bottom."

## Start Here

File: `Start Here.md`. Sections in this order. Section numbers help another AI find its way.

```
# Start Here

> Read this file first. It maps this logbook: who the user is, how they work, every project and its status, and where the detail lives. It is a map, not a copy. Last updated YYYY-MM-DD.

## 1. How to find anything

1. Find the project in the table in section 4. Open its dashboard (Read first).
2. The dashboard lists every chat, newest first, with where each one left off. Open a chat's file for the prompts and responses word for word.
3. For a timeline across all projects, read the [Activity Log](<Activity Log.md>).
4. To write to this logbook from any AI, follow [Logbook Format](<Logbook Format.md>).

## 2. About me

(Name, what they do, what they're building. Two or three sentences, in the user's words.)

## 3. How I work with AI

(Preferences the user states: tone, format, what to avoid. Leave a placeholder line if they haven't said.)

## 4. Projects

| Project | Status | What it is | Last activity | Read first |
| --- | --- | --- | --- | --- |

## 5. Logbook settings

- Logging mode: full
- Always-log preference: not yet (or added YYYY-MM-DD)
- Logbook folder: [full path on this computer, such as ~/Library/CloudStorage/OneDrive-Personal/Claude Logbook]
- Synced by: [OneDrive, iCloud Drive, Dropbox or Google Drive]
```

"Read first" holds a link to the project's dashboard.

## Writing the files

Files have no blocks or IDs, so these rules keep them safe:

- **Append, don't rebuild.** Add a new exchange or Activity Log entry by appending to the end of the file. Never write a file back from an earlier read; the read may have been cut short, and the rewrite would lose the rest.
- **Edit header lines in place.** To update Summary, Result, Left off, a dashboard entry or a Start Here row, replace that one line by exact match. Leave the rest of the file alone.
- **Newest chat first** on a dashboard: insert the new entry right after the "## Chats, newest first" heading.
- **Never delete.** Don't delete files, folders or entries. If something should go, move it into a `_to_delete` folder inside the logbook folder and tell the user.
- **Leave out secrets.** Replace any password, API key, card number or similar with [redacted].
- **Sync conflicts.** If the drive has made a conflict copy (OneDrive adds the computer's name, Dropbox adds "conflicted copy"), don't merge it yourself. Keep writing to the original and tell the user the copy exists.

## Next chat prompt

Written at a wrap-up. It has to work in a fresh chat that knows nothing.

```
Picking up [Project] from the chat "[Chat name]" (YYYY-MM-DD). Before anything else, open the logbook folder: [Project] → "📌 [Project] — Overview and Chat Log.md", then the end of "[Chat name] — Decisions and Prompt Log.md". Confirm where we are in 3-4 lines.

Where we stopped:
- [Facts the next chat needs: versions, links, what passed, what's waiting on the user]

Next, in order:
1. [The next steps]

How to work:
- [Any working rules the user set in this chat]
```

## Always-log preference line

The line the user pastes into Settings > Profile, in the preferences field, so logging happens in every chat. It replaces any older always-log line.

```
Always, in every chat: when a reply gives me something worth finding later (ideas, options, research, a plan, a decision, or finished work), use the Folder Logbook for Claude logbook skill to log it to my logbook folder at the end of that same reply, even if I haven't decided anything yet. Once a chat has its own log file, add every exchange to it. Tell me in one line.
```
