# Privacy Policy: Folder Logbook for Claude

Last updated: October 19, 2026

Folder Logbook for Claude is a free plugin published by Laronge Intellectual Property Development, LLC (Josh Laronge). Short version: I don't collect anything. The plugin has no server of its own, no analytics and no account.

## What the plugin does with your data

- **It writes to a folder you pick.** When Claude logs a chat, it writes your prompts and its responses as Markdown files into the folder you connected. That's the point of the plugin. In summary mode, it writes only a short account of each chat, without your prompts or Claude's responses.
- **It talks to nothing.** The plugin has no connector and makes no network requests. Claude writes the files with the file tools your Claude app already has for the folder you connected.
- **It leaves out secrets.** Claude is told to replace passwords, API keys and card numbers with [redacted] before writing.
- **It stores nothing itself.** The only script, `hooks/session-start.sh`, prints a one-paragraph reminder at the start of a Claude Code or Cowork session. It reads nothing, sends nothing and writes nothing.

## What I can see

Nothing. I never receive your prompts, responses or files. Anthropic's directory may show me install and usage counts for the plugin, without your content.

## Other companies' policies

Your conversations are handled by Anthropic under [Anthropic's privacy policy](https://www.anthropic.com/legal/privacy). If your logbook folder is in a synced drive, the files are stored by that company under its own policy: [Microsoft (OneDrive)](https://privacy.microsoft.com/privacystatement), [Apple (iCloud Drive)](https://www.apple.com/legal/privacy/), [Dropbox](https://www.dropbox.com/privacy) or [Google (Google Drive)](https://policies.google.com/privacy). This plugin doesn't change any of them.

## Keeping or deleting your logs

The logs are ordinary files in your folder. You can edit, move or delete them at any time. Uninstalling the plugin stops new logging and leaves existing files where they are.

## Children

The plugin isn't intended for anyone under 18.

## Changes

If this policy changes, the new version goes in this file with a new date. The file's history on GitHub shows every earlier version.

## Contact

Questions: josh@laronge.com
