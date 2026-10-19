#!/bin/bash
# Folder Logbook for Claude: adds a short note to Claude's context at session start.
# It prints text only. It reads nothing, sends nothing, and writes nothing.
cat <<'NOTE'
The Folder Logbook for Claude plugin is installed. This user keeps a record of their work as Markdown files in a logbook folder: Start Here.md, a dashboard per project, one file per chat with the user's prompts and Claude's responses, and Activity Log.md. When this session produces ideas, research, a plan, a decision or finished work, follow the logbook skill to start this session's chat file, then add every exchange after that. The user can run /laronge-folder-logbook:setup to set it up, /laronge-folder-logbook:log-session to log this chat now, or /laronge-folder-logbook:backfill to log a project's earlier chats.
NOTE
exit 0
