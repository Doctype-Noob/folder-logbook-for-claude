---
description: Log this conversation to your logbook folder now (this chat's file, the project dashboard, the Activity Log and Start Here)
argument-hint: "[optional: this chat's name, the project, or a note to include]"
---

Log this conversation now, following the `logbook` skill and the formats in its `references/formats.md`. The user may have given a chat name, a project or a note: $ARGUMENTS

1. **Find the logbook.** Read Start Here.md once, if you haven't in this conversation, for the logging mode and the project table. If no Start Here.md is reachable, say so in one sentence: connect the logbook folder in the Claude desktop app (+ menu, Add folder) and run this again. Offer `/laronge-folder-logbook:setup` only if the user hasn't set up a logbook yet. Stop there.
2. **Pick the project.** Use the project the user named, if any. Otherwise pick it from Start Here's table. If no project fits, ask whether to create a new project or log this as a one-off in Other chats/.
3. **Find this chat's file.** It is either one you created earlier in this conversation, or a file in the project's folder named after this chat. List the folder to check; don't guess.
   - **It exists:** read its end to see which exchanges it already has, then append every prompt and response that isn't in it yet. Update its Summary, Decisions, Result and Left off lines in place.
   - **It doesn't:** create the project's dashboard if it has none, then create the chat file with every exchange in this conversation. If the user didn't give the chat's name, use a short name based on the topic and ask once what the chat is called in their sidebar.
   - If earlier turns are no longer in your context, write what you have and add the line "earlier prompts not available" where they would go. Never reconstruct a prompt.
4. **Update the rest.** Add the chat to the top of the dashboard's Chats list if it isn't there, or update its entry, and update the status line. Add the Activity Log entry if this chat has none today, or update its sentence if the headline changed. Update Start Here.md only if the project is new or its status or last activity changed.
5. **Wrap up if asked.** If the user is wrapping up, write the next-chat prompt as the skill describes.
6. **Check and report.** Confirm every file you created or changed exists and every link you wrote points at a real file. Reply with "Logged to folder:" and then one line per file you changed, by path, such as *Website → 📌 Website — Overview and Chat Log.md*.

Never delete, rename or move anything the user already has. Follow the skill's rules for writing files safely: append, edit header lines in place, never write a whole file back from an earlier read.
