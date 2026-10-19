---
description: Find recent chats that never made it into your logbook folder, and log the ones you pick
argument-hint: "[optional: how far back, such as 7 days or since 2026-10-01; default 14 days]"
---

Find recent chats with no entry in the logbook, show them, and log the ones the user picks, following the `logbook` skill and the formats in its `references/formats.md`. The user may have given a time window: $ARGUMENTS

Catch-up only reads past chats and only adds files. It never edits, renames or deletes the user's existing files, except to add entries to dashboards and the Activity Log and update Start Here.md. It logs nothing until the user has picked.

1. **Check you can read past chats and reach the folder.**
   - You need Claude's past-chat tools (search past chats, list recent chats, read a past chat). If they aren't available, tell the user in two sentences: catch-up runs in the Claude app with Settings > Search and reference chats turned on. Stop there.
   - You need the logbook folder. If no Start Here.md is reachable, tell the user to connect the logbook folder in the Claude desktop app (+ menu, Add folder) and run catch-up again; offer `/laronge-folder-logbook:setup` only if they haven't set up a logbook yet. Stop there.

2. **Set the window.** Use the window the user gave. If none, the last 14 days or since the logbook's first Activity Log entry, whichever is shorter: chats from before the logbook existed aren't missing, they just predate it. If that cut anything off, say so in one line at the end ("Older chats go back to [date]; give me a date if you want those too.").

3. **Know what you can see.** Past-chat tools only see one scope at a time: inside a Claude Project, that project's chats; in a regular chat, regular chats only. Say which scope this run covers in the list's first line, and at the end name the other scope the user would run catch-up from to cover the rest ("Run this again inside each Claude Project to check its chats."). The list can also miss chats from other surfaces (some desktop sessions don't show in past-chat search), so call it "the chats I can see", never "all your chats".

4. **List recent chats.** List chats updated in the window, newest first, paging the recent-chats list (20 per call, at most 5 calls). Leave out this chat. Keep each chat's title, date, link, and its first prompt from the list or a search hit; don't open whole chats yet.

5. **Find what's already logged.** Read Activity Log.md (from the start of the window to the end) and list the files in each project folder and in Other chats/. A chat counts as logged if any of these match:
   - its chat link appears in a chat file's header line (backfilled chats have one);
   - its first prompt matches an Activity Log entry's "First prompt" line (the first 10 words are enough; ignore case, punctuation and quote marks);
   - a chat file is named after the chat's title;
   - an Activity Log entry on the same day names the chat.

   If a match is likely but not sure (same day, similar topic, different title), count it as logged and list it under "Probably logged" so the user can say otherwise. Never log a chat twice.

6. **Show the list and wait.** Start with one line in this shape: "Chats I can see from [start] to [today] ([regular chats / this Claude Project's chats]) with no entry in this logbook:". Then one numbered line per unlogged chat, newest first: date, title, and a short fragment of the first prompt (up to 10 words). Then the "Probably logged" lines, if any. Then ask which to log: numbers, "all", or "none". Suggest leaving out quick lookups and one-line questions, but let the user decide. Do not write anything before they answer.

7. **Place each picked chat.** For each one, pick where it goes from Start Here's project table: the Claude Project it came from, else the project its topic clearly belongs to, else Other chats/ as a one-off. If two projects fit, or the chat is clearly ongoing work with no project yet, ask once for all the uncertain ones in a single question. Create a project's folder, dashboard and Start Here row first if it's new, as the skill describes.

8. **Log them, one at a time, oldest first.** Do at most **5** per run; if more were picked, say how many are left and offer to continue. For each chat:
   - Read the whole chat. Page through it until you have every prompt; this is one of the cases where reading a past chat in full is the job.
   - Create `[Chat title] — Decisions and Prompt Log.md` in its folder, with the file-name rules in the format (replace `/ \ : * ? " < > |` with a hyphen; add the date if the name is taken). The header line adds "· Caught up YYYY-MM-DD · Chat link: [url]" and gives the chat's own dates.
   - Write every prompt word for word and every response complete in substance, each response in a details tag, or the summary-mode shape if Start Here says summary. Mark attachments and screenshots in square brackets. Replace any password, API key, card number or similar with [redacted].
   - Add an entry to that project's dashboard Chats list in date order (newest first). One-offs in Other chats/ get no dashboard entry.
   - Write each file as soon as its chat is read, before reading the next, so a cut-off run keeps what it finished.
   - If a long chat won't fit in what's left of this conversation, stop at the last complete prompt, add "Caught up to Prompt N; earlier part only" to the file's Left off, and tell the user to run catch-up again in a new chat to finish it.

9. **Record the run.** Append one Activity Log entry for the whole run, on today's date, not one per chat: "YYYY-MM-DD — Catch-up: logged N earlier chats", one sentence, then one bullet per chat with its date, project and a link to its file. Update dashboards' status lines and Start Here.md's last activity only if they're now wrong.

10. **Check and report.** Confirm every new file exists and every link you wrote points at a real file. Reply with "Logged to folder:" and one line per chat file created, by path, then how many unlogged chats are left in the window and the other scope to check (step 3).
