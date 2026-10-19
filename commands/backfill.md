---
description: Log a project's earlier chats into your logbook folder, one chat file per past chat, a few at a time
argument-hint: "[optional: project name]"
---

Backfill past chats into the logbook folder, following the `logbook` skill and the formats in its `references/formats.md`. The user may have named a project: $ARGUMENTS

Backfill only reads past chats and only adds files. It never edits, renames or deletes the user's existing files, except to add entries to the dashboard and the Activity Log and update Start Here.md.

1. **Check you can read past chats and reach the folder.**
   - You need Claude's past-chat tools (search past chats, list recent chats, read a past chat). If they aren't available, tell the user in two sentences: backfill runs in the Claude app with Settings > Search and reference chats turned on, and inside a Claude Project it only sees that project's chats. Stop there.
   - You need the logbook folder. If no Start Here.md is reachable, tell the user to connect the logbook folder in the Claude desktop app (+ menu, Add folder) and run backfill again; offer `/laronge-folder-logbook:setup` only if they haven't set up a logbook yet. Stop there.

2. **Pick the project.** Read Start Here.md (once). Use the project the user named. If they named none and this chat is in a Claude Project, use the project that matches it. If neither, ask which project. If the project has no row, folder or dashboard, set them up first as the skill describes.

3. **Find what's already logged.** Read the project's dashboard and list the files in its folder. A past chat counts as logged if its chat link appears in a chat file's header line, a chat file in the folder has its name, or the dashboard has an entry with its name. Never backfill a chat twice.

4. **List the candidates.** List recent chats, newest first, and leave out this chat and any already logged. Inside a Claude Project these are the project's chats. Outside one, keep only chats about this project: search past chats for the project's name and key terms, and show the user the matches to confirm before writing anything.

5. **Do one batch.**
   - First run for this project: the **3** most recent unlogged chats.
   - After that: **5** per batch, and ask before starting each one ("5 more, starting with [chat name] from [date]?").

   For each chat in the batch, oldest of the batch first:
   - Read the whole chat. Page through it until you have every prompt; this is the one case where reading a past chat in full is the job.
   - Create `[Chat name] — Decisions and Prompt Log.md` in the project's folder, using the chat's own title, with the file-name rules in the format (replace `/ \ : * ? " < > |` with a hyphen; add the date if the name is taken). The header line adds "· Backfilled YYYY-MM-DD · Chat link: [url]" and gives the chat's own dates.
   - Write every prompt word for word and every response complete in substance, each response in a details tag, as in full mode, or the summary-mode shape if Start Here says summary. Mark attachments and screenshots in square brackets. Replace any password, API key, card number or similar with [redacted].
   - Add an entry to the dashboard's Chats list in date order (newest first): the chat name as a plain heading, then the date line with "Open the chat file" linked to the new file.
   - Write each file as soon as its chat is read, before reading the next chat, so a cut-off run keeps what it finished.
   - If a long chat won't fit in what's left of this conversation, stop at the last complete prompt, add "Backfill stopped at Prompt N; earlier part only" to the file's Left off, and tell the user to run backfill again in a new chat to finish it.

6. **Record the run.** Append one Activity Log entry for the whole batch, not one per chat: "YYYY-MM-DD — [Project]: backfilled N earlier chats", linking each new chat file. Update the dashboard's status line and Start Here.md's last activity only if they're now wrong.

7. **Check and report.** Confirm every new file exists and every link you wrote points at a real file. Then one line per chat file created, how many unlogged chats are left, and whether to do the next batch. For the first batch, ask the user to spot-check two or three prompts against the original chats.
