# Changelog

## 0.1.7 (2026-10-19)

- New: 📌 All Dashboards.md at the top of the logbook folder. One line per project, linking its dashboard with its status and last activity, plus Start Here and the Activity Log. Every chat is two clicks from it.
- New projects go at the top of the list. Lines update in place when a project's status or last activity changes. Projects with no dashboard are listed with their Read first link and move up when they get one. Dropped projects come off.
- An older logbook gets the file the first time Claude logs to it, built from the Start Here project table. Setup builds it too, and log-session, backfill and catch-up keep it current.
- Start Here: section 1 starts at All Dashboards, the settings list it, and a new section 6 tells any AI writing to the folder to keep it current.

## 0.1.6 (2026-10-19)

- New: `catch-up` command finds recent chats with no entry in the logbook (last 14 days by default, or since the logbook started if that's more recent), lists them, and logs the ones you pick, up to 5 per run. It matches on chat links, file names and the first prompt in each Activity Log entry, so it never logs a chat twice.
- Format: a caught-up chat file adds "Caught up YYYY-MM-DD · Chat link" to its header line; a catch-up run adds one Activity Log entry for the whole run.
- Session-start note lists all four commands.

## 0.1.5 (2026-10-19)

- Listing: icon, privacy policy, terms of use, and documentation and support links. No change to how it logs.

## 0.1.4 (2026-10-19)

- The log line starts with "Logged to folder:", so it isn't confused with another logbook such as Craft Logbook for Claude.
- When a chat can't reach the logbook folder (phone, web, or no folder connected), Claude says how to log it from the desktop app instead of suggesting setup or promising to log later.

## 0.1.3 (2026-10-19)

- Several decisions are written as a bullet list, so Markdown viewers don't run them into one paragraph.
- The format spec describes the single Activity Log entry a backfill run adds.

## 0.1.2 (2026-10-19)

- Start Here: section 1 links to the Activity Log and Logbook Format.
- Setup asks how you like Claude to work and fills in "How I work with AI", drafting it from your saved preferences when it can see them.

## 0.1.1 (2026-10-19)

- New: `log-session` command logs the current chat on demand.
- New: `backfill` command logs a project's earlier chats, 3 on the first run, then 5 per batch.
- Dashboards: each chat is a plain heading, with "Open the chat file" at the end of its date line. Links in headings showed as raw code in editor outlines.
- Numbered lists are written 1, 2, 3, since some editors show the numbers exactly as written.
- Session-start note lists all three commands.
- README.

## 0.1.0 (2026-10-19)

- First version: `setup` command and the `logbook` skill.
