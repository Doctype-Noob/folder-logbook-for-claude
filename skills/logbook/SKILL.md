---
name: logbook
description: Save this conversation to the user's logbook folder, a set of Markdown files in a folder they picked (often in OneDrive, iCloud Drive, Dropbox or Google Drive). Use in any conversation, on any topic, that produces something worth finding later, such as ideas, research, a plan, a recommendation, a decision, or finished work like something written, built or fixed, and before the reply that wraps up that work. Once a chat has its own log file, use it after every exchange. Also use when the user asks to log, record, save, catch up, wrap up, or update their logbook, Start Here, chat log, dashboard or activity log.
---

# Folder Logbook for Claude

The user keeps a record of their work with Claude as Markdown files in a folder they picked, usually inside a synced cloud drive. Your job is to keep that record current as a background habit, so the user never has to ask, can find any prompt and response later from any device, and never has to re-explain a project in a new chat.

The record has five layers, all plain `.md` files:

1. **📌 All Dashboards.md**: one file at the top of the logbook folder, with one line per project linking to its dashboard, plus its status and last activity. It's the way in to every project and chat, so it has to be right every time.
2. **Start Here.md**: one file that maps the whole logbook. Who the user is, how they work, every project with its status and a link to its dashboard, and the logbook settings.
3. **A dashboard per project**: `[Project]/📌 [Project] — Overview and Chat Log.md`. Current status, every chat newest first with a summary and where it left off, where things live, and how to rebuild the project from scratch.
4. **A file per chat**: `[Project]/[Chat name] — Decisions and Prompt Log.md`. The user's prompts word for word and your complete responses. Source of truth.
5. **Activity Log.md** (one for the whole logbook): one short entry per chat, linking to its chat file.

Formats for every file and entry are in `references/formats.md`. Read it before your first write in a session. The same spec sits in the logbook folder as **Logbook Format.md** so other AI tools can write matching files.

## Before anything else: find the logbook folder

1. Look for a file named **Start Here.md** in the folders this session can reach: folders the user connected to the chat, then the working directory. A folder that also holds Activity Log.md and Logbook Format.md is the logbook folder.
2. Read Start Here.md. Its **Logbook settings** section holds the logging mode, the always-log status, the folder path, which drive syncs it and the All Dashboards file. Its project table links each project's dashboard.
3. If you find no Start Here.md, don't create one silently. Most often the logbook exists but this chat can't reach it: a phone or web chat, or a desktop chat with no folder connected. Say so in one line at the end of your reply, for example: "Logged to folder: not this time. Your logbook folder isn't connected to this chat. To log it, open this chat in the Claude desktop app, connect the folder (+ menu, Add folder) and say 'log this'." Mention setup only if the user says they haven't set up a logbook yet. Don't promise to log later on your own; a chat can't reach the folder until the user connects it.
4. If the folder was reachable earlier in the chat and now isn't, the computer is probably asleep, offline, or the desktop app is closed. Say so in one line at the end of your reply ("Logged to folder: not this time. The computer with your logbook folder isn't reachable. I'll catch up at your next message if it is."). At the next reply where the folder is reachable, write every exchange you missed, from what is still in your context. Never claim a log you didn't write.

5. If Start Here's settings list no All Dashboards, list the logbook folder (don't rely on search) for `📌 All Dashboards.md`. If it's there, add the settings line. If there's none, build it before your first log in this conversation: format in `references/formats.md`, one line per project in Start Here's table (projects with a dashboard first, then the ones without), and the links to Start Here and the Activity Log. Then add the "All Dashboards" settings line, point section 1's first step at it, and add section 6 if it's missing. If Logbook Format.md has no All Dashboards section, append the All Dashboards section from `references/formats.md` to its end, below a divider with today's date, so other AI tools keep the file current too. Tell the user in one line where it is: "Built 📌 All Dashboards.md at the top of your logbook folder. It links every project; keep it handy."

Read Start Here.md once per conversation, not before every write.

If the settings don't say "Always-log preference: added", offer the always-log line from `references/formats.md` once, after your first log in the conversation, in two sentences at most (it goes in Settings > Profile, in the preferences field). Don't offer it again in the same conversation.

## When to log

**First log in a chat.** The test: would the user want to find this conversation again in a month? If yes, log it. The topic doesn't have to be a project already in Start Here. Log when ideas, options, research, a plan, a recommendation, a decision, or finished work (something built, written, published, fixed or set up) come up, or when a project's status changes.

**Don't wait for a decision.** A reply that lays out options or research is worth logging as it stands. Log at the end of the reply where it happens, not at the end of the chat. Chats often end without a goodbye.

**After the first log, log every exchange.** Once this chat has a chat file, append every prompt and response to it at the end of each reply, without judging whether it's worth keeping. Only skip a bare greeting or "thanks".

Don't start a chat file for small talk or a quick factual question with nothing to keep.

Log without asking permission. The user installed this plugin to make logging automatic.

**Log once.** If another instruction in this conversation also tells you to log to this folder (a saved preference, project instructions), write one entry per exchange, not one per instruction. A different logbook in a different place, such as Craft Logbook for Claude, is the user's choice; leave it to its own skill.

## Which project

Pick the project in Start Here's table that this chat is about. If the chat is inside a Claude Project, its name and instructions usually say which one.

- **No matching project, but it looks like ongoing work**: create one (see New projects below).
- **A one-off** (a question that still produced something worth keeping): the chat file goes in **Other chats/** (create it if missing), and the Activity Log entry says "Other".
- **In a Claude Project with no row in Start Here**: ask once whether to add it as a project and backfill its earlier chats (the `backfill` command does that). If the user says no, log this chat as a one-off and don't ask again in this chat.

## Writing the first log of a chat

1. **Make sure the project has a dashboard.** If its folder has no `📌 … — Overview and Chat Log.md`, create one from the format. If the folder holds the user's own older notes, leave them where they are and link them under **Earlier history**. Then point the project's "Read first" in Start Here at the new dashboard, and add it to All Dashboards (see Keeping All Dashboards current).
2. **Create the chat file** in the project's folder: `[Chat name] — Decisions and Prompt Log.md`. You can't see the chat's title, so use a short name based on the topic, and ask the user once in your reply what the chat is called in their sidebar. If they answer, rename the file and fix every link to it (dashboard entry and Activity Log). If they don't, keep your name. Write the header and every exchange so far.
3. **Add the chat to the top of the dashboard's Chats list**, right under the "## Chats, newest first" heading: the chat name as a plain heading, then the date line with a link to the chat file, Summary, Result and Left off. Update the dashboard's status line.
4. **Append one entry to Activity Log.md**, linking to the chat file, with the user's first prompt of the chat word for word.
5. **Update Start Here.md and All Dashboards** if the project is new, its status changed, or its last activity date changed. In Start Here, edit only that project's row and the "Last updated" date. In All Dashboards, edit only that project's line and the "Last updated" date.

## Every exchange after that

1. Append the new prompt and your response to the end of the chat file.
2. If the chat's summary, result or where it left off changed, rewrite those lines at the top of the chat file and in the chat's dashboard entry, and the dashboard's status line if the project's status changed.
3. Rewrite the Activity Log entry's sentence only if the chat's headline changed. Don't add a second Activity Log entry for the same chat on the same day.
4. Update Start Here.md and the project's line in All Dashboards only when the project's status changes.

### Prompts and responses

The logging mode in Start Here decides how much of the conversation goes in the chat file:

- **full** (default): every prompt the user sent, word for word, typos included, each followed by your complete response inside a details tag (format in `references/formats.md`). Complete means the substance of everything you said: answers, reasoning, recommendations, lists, questions you asked. For long code, files or documents you produced, say what was produced and where it lives instead of pasting it. Note attachments and screenshots in square brackets with a short description, such as "[screenshot: the project folder in grid view]" or "[attached: menu.pdf, the spring menu draft]".
- **summary**: no prompts or responses in the chat file, only the header and a dated list of what happened.

The Activity Log never holds responses, only the first prompt of each chat.

Quote only what the user actually wrote in this conversation. If earlier turns are no longer in your context, say so in the chat file ("earlier prompts not available") rather than reconstructing them.

## Wrapping up: the next-chat prompt

When the user says "wrap up", "done for today" or similar, or the work reaches a clear stopping point, write the prompt they'll paste to start the next chat on this project (format in `references/formats.md`).

1. In your reply, put it in one copy box (a code block) right before your log line.
2. Append it to the end of the chat file under **Next chat prompt**.
3. Set Left off, at the top of the chat file and in the dashboard entry, to say the next-chat prompt is at the end of the chat file.

Don't write one at every reply. Only at a stopping point.

## New projects

When work starts on something that has no project in Start Here:

1. Create a folder for it inside the logbook folder, named after the project.
2. Inside it, create the dashboard, then the chat file.
3. Add a row to the Start Here project table, linking "Read first" to the dashboard.
4. Add the dashboard's line at the top of All Dashboards → Project dashboards.
5. Tell the user in one line where the new folder is.

## Keeping All Dashboards current

All Dashboards is the file the user opens first, so a stale line there means a lost chat. Format in `references/formats.md`. Every write to it is small: one project's line and the "Last updated" date, edited by exact match like any header line.

- **A project gets a dashboard** (a new project, or an older project's first chat with a dashboard): insert its line right after "## Project dashboards", linking to the dashboard, with its status and last activity. If the project had a line under **Projects without a dashboard yet**, remove that line, and remove the section if it's now empty.
- **A project's status or last activity changes**: update its line in place, at the same time you update its Start Here row. Don't reorder lines.
- **A project is marked Dropped**: remove its line.
- **Links** are relative from the logbook folder, with the path in angle brackets: `[📌 Website](<Website/📌 Website — Overview and Chat Log.md>)`. After writing one, check the file it points at exists.

If a project in Start Here's table is missing from All Dashboards, add its line when you next touch that project. If the settings line points at a file that isn't there, list the logbook folder for it and fix the line; build it again only if it's really gone.

## Writing files safely

Files have no blocks or IDs, and a synced drive can be slow or offline, so:

- **Append, don't rebuild.** Add new exchanges and Activity Log entries at the end of the file. With a shell, append with `>>`. With an edit tool, insert after the file's current last lines. Never write a whole file back from an earlier read; the read may have been cut short, and the rewrite would lose the rest.
- **When the only way to write is a whole file** (some setups copy files in and out instead of editing in place): fetch a fresh copy right before the change, check it is complete (it ends where the file should end, and its size matches), make the change in that copy, and write it back with the modification-time check if the tool offers one. If the check fails, the file changed meanwhile: fetch it again and redo the change.
- **Edit header lines in place.** To update Summary, Result, Left off, a dashboard entry, a status line or a Start Here row, replace that one line by exact match and leave the rest of the file alone.
- **Links** are relative, with the path in angle brackets: `[Chat name](<Chat name — Decisions and Prompt Log.md>)`. After creating or renaming a file, check that every link to it points at a file that exists.
- **File names**: replace `/ \ : * ? " < > |` with a hyphen. If a chat name is taken in that folder, add the date (format in `references/formats.md`).
- **Sync conflict copies** (OneDrive adds the computer's name to the file name, Dropbox adds "conflicted copy"): don't merge them yourself. Keep writing to the original and tell the user in one line that the copy exists.

## Rules

- **Never delete.** Don't delete files, folders or entries. If something should go, move it into a `_to_delete` folder inside the logbook folder and tell the user. If you can't move files in this session, list them for the user instead. Updating a summary line in place is fine; removing someone's content is not. The one exception is All Dashboards, which only holds pointer lines you maintain: removing a project's line there when it moves sections or is dropped is fine.
- **Never rename or move the user's own files.** Rename only files you created in this conversation (the chat file, once the user gives its name).
- **Don't copy detail upward.** The dashboard and Activity Log link to the chat file; they don't repeat it.
- **Refer to files by path** in your replies, such as *Website → 📌 Website — Overview and Chat Log*.
- **Keep the user's words.** Quote prompts exactly. Don't tidy them.
- **Leave out secrets.** If a prompt or response contains a password, API key, card number, or similar, replace that value with [redacted] in the log.
- **Tell the user once.** After logging, mention it in one short line at the end of your reply starting with "Logged to folder:" so it can't be mistaken for another logbook ("Logged to folder: Website → Website setup — Decisions and Prompt Log.md"). Don't narrate each write.
