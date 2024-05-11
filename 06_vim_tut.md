# Common Vim Operations

Source: [THE LINUX FOUNDATION](https://www.linuxfoundation.org/blog/blog/classic-sysadmin-vim-101-a-beginners-guide-to-vim)

## Vim Modes
1. **Command Mode** - Vim starts out in command mode. This means that all the alphanumeric keys are bound to commands, rather than inserting those characters.
2. **Insert Mode** - Access this mode by typing `i` (insert). In this mode you can type normally until you want to make a correction, save the file, or perform another operation that’s reserved for command mode or last-line mode. To get out of insert mode, hit the `Escape` key.
3. **Last-line Mode** - Press `:` to switch to this mode. Vim is now waiting for you to enter a command like :w to write the file or :q to exit the editor.

## Basics Of Moving In Vim
- `h` - Moves the cursor one character to the left.
- `j` - Moves the cursor down one line.
- `k` - Moves the cursor up one line.
- `l` - Moves the cursor one character to the right.
- `0` - Moves the cursor to the beginning of the line.
- `$` - Moves the cursor to the end of the line.
- `w` - Move forward one word.
- `b` - Move backward one word.
- `G` - Move to the end of the file.
- `gg` - Move to the beginning of the file.
- `. - Move to the last edit.

*Prefacing a movement command with a number will execute that movement multiple times. eg. To move over five words, enter 5w.*

## Editing in Vim
- `d` - starts the delete operation.
- `dw` - will delete a word.
- `d0` - will delete to the beginning of a line.
- `d$` - will delete to the end of a line.
- `dgg` - will delete to the beginning of the file.
- `dG` - will delete to the end of the file.
- `u` - will undo the last operation.
- `Ctrl-r` - will redo the last undo.

## Searching And Replacing in Vim
- `/text` - search for text in the document, going forward.
- `n` - move the cursor to the next instance of the text from the last search. This will wrap to the beginning of the document.
- `N` - move the cursor to the previous instance of the text from the last search.
- `?text` - search for text in the document, going backwards.
- `:%s/text/replacement text/g` - search through the entire document for text and replace it with replacement text.
- `:%s/text/replacement text/gc` - search through the entire document and confirm before replacing text.

## Copying And Pasting in Vim
- `v` - highlight one character at a time.
- `V` - highlight one line at a time.
- `Ctrl-v` - highlight by columns.
- `p` - paste text after the current line.
- `P` - paste text on the current line.
- `y` - yank text into the copy buffer.

## Saving And Quitting
- `:w!` - To write the file you’re editing.
- `:w filename` - To write out to a different filename or if you don’t have a filename.
- `wq!` or `ZZ` - To write and save the file.
- `q!` - To quit without saving any changes.
- `!` - Is used to override.