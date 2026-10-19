---
description: Set up your logbook folder (Start Here, Activity Log, Logbook Format and Other chats), adopt a logbook you already have, or update an older setup
argument-hint: "[optional: the folder to use]"
---

Set up the user's logbook folder. Follow the `logbook` skill and the formats in its `references/formats.md`. The user may have named a folder: $ARGUMENTS

1. **Find a folder to work in.** Check which folders this session can reach: folders connected to the chat, and the working directory.
   - **None reachable:** tell the user to connect the folder they want the logbook in. In the Claude desktop app that's "Add folder" in the + menu beside the message box; in Claude Code, start the session in that folder or give its path. Suggest a folder inside their synced drive, such as OneDrive, iCloud Drive, Dropbox or Google Drive, so the logbook reaches their other devices. Stop there.
   - **One or more reachable:** go on to step 2.

2. **Look for an existing logbook.** Search the reachable folders, two levels deep, for **Start Here.md**. A folder holding Start Here.md together with Activity Log.md or Logbook Format.md is an existing logbook. If you find one, read Start Here.md and don't create a second one. Instead, add what's missing (step 5) and report what you added.

3. **Pick the logbook folder.**
   - If the user named a folder, use it.
   - If a reachable folder is empty or is already named "Claude Logbook", use it as is.
   - Otherwise, the logbook goes in a new folder named **Claude Logbook** inside the reachable folder. If several folders are reachable, ask which one.
   - Work out which drive syncs it from the path: `CloudStorage/OneDrive-` is OneDrive, `Mobile Documents/com~apple~CloudDocs` or `iCloud Drive` is iCloud Drive, `Dropbox` is Dropbox, `CloudStorage/GoogleDrive-` is Google Drive. If none match, say in one line that the folder doesn't look synced, so the logbook will stay on this computer, and carry on unless the user says otherwise.

4. **Ask three short questions**, all in one message, with defaults so the user can just say "defaults":
   - Logging mode: **full** (your prompts word for word and Claude's complete responses, one file per chat) or **summary** (what happened, no prompts or responses). Default: full
   - Your first name and one line about what you work on (for the About section). There is no default for this one: if the user says "defaults" or skips it, draft the line from what you already know about them, show it, and ask "Use this?" before writing it. Never write a name or details the user hasn't seen.
   - How you like Claude to work, in a few short lines: tone, format, what to avoid (for the "How I work with AI" section). If you can see the user's saved preferences, draft the lines from them, show them, and ask "Use these?" before writing them. If the user skips it, leave the placeholder line and say they can fill it in any time.

   The projects question in step 6 can go in the same message, so setup asks everything at once.

   Say which folder the logbook will go in, in the same message, so the user can change it.

   If an existing Start Here already answers all three, skip the questions, but still confirm the logging mode in one line before you write anything, for example: "Logging mode is full: every chat gets its own file with your prompts word for word and my complete responses. Say summary if you'd rather not keep them." Then carry on without waiting.

5. **Create the pieces** that don't exist yet, inside the logbook folder:
   - **Start Here.md**, from the format in `references/formats.md`, with the folder path and drive filled in under Logbook settings. For an existing Start Here, add any missing section or settings line and update section 1 to the current wording. Don't rewrite the user's own text in sections 2 to 4.
   - **Activity Log.md**, starting with the heading and the line "One entry per chat per day, newest at the bottom."
   - **Logbook Format.md**: the full text of `references/formats.md`, so other AI tools (Gemini, ChatGPT) can write matching files. If it already exists and differs, add the current text at the end below a divider with today's date rather than replacing it.
   - **Other chats/**, a folder for chat files that belong to no project. If an empty folder can't be created in this session, create it the first time a one-off chat is logged instead, and say so.

6. **Adopt existing projects.** List the folders already inside the logbook folder (not Other chats or _to_delete). Show them as a short list, mark the ones already in Start Here's table, and ask which ones to add or give a dashboard. Also ask whether there are projects they'd like set up now, such as the Claude Projects they use most. For each one the user picks:
   - Create its folder if it doesn't exist.
   - Add a row to the table if it isn't there.
   - If the folder has no `📌 … — Overview and Chat Log.md`, create the dashboard. Fill **Where things live** from what the user tells you or the folder's files say. Link any of the user's own files in the folder under **Earlier history**. Don't rename, move or convert them.
   - Link the row's "Read first" to the dashboard.
   - Offer to backfill the project's past chats with the `backfill` command, and say it has to run from a chat inside that project's Claude Project if it has one.

7. **Check existing rows.** If Start Here already has a project table, check that each row's folder still exists. For any row whose folder is gone, list those projects for the user in one message and offer two choices for each: mark the row's status **Dropped** and note "folder removed", or remove the row from the table. Make no change until the user answers. Either choice only edits the Start Here table.

8. **Give the user the always-log line.** In claude.ai chat, a plugin's skill only loads when Claude thinks the conversation matches it, so automatic logging can miss chats. Preferences are read in every chat. Tell the user this in one sentence, then give them the always-log line from `references/formats.md`, in a code block, to paste into Settings > Profile in the field for their preferences.

   Explain that it starts with "Always" because Claude applies preferences only when they seem relevant unless they say they apply every time. You can't change their settings yourself, so don't claim it's done. Record "Always-log preference: added YYYY-MM-DD" in Start Here's settings once the user says they pasted it, or "not yet" if they haven't. If Start Here already says it was added, skip this step.

9. **Mention the limit once.** Logging only works while this computer is on and the chat can reach the folder. A chat on the phone or the web without that link can't write to it; Claude will say so instead of failing quietly.

10. **Log the setup** as a one-off chat (a chat file in Other chats/ and an Activity Log entry), then check that every file you created exists and every link in Start Here opens a real file. Tell the user in two or three lines what was created and where.

Never delete, rename or move anything the user already has.
