# Changelog

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
