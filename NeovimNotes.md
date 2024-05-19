
# Neovim

## NvChad

Action | Keymap
---------|----------
Change theme | <kbd>Space</kbd> + <kbd>t</kbd> + <kbd>h</kbd>
Cheatsheet | <kbd>Space</kbd> + <kbd>c</kbd> + <kbd>h</kbd>

## Buffers

Action | Keymap/command
---------|----------
Close buffer | <kbd>Space</kbd> + <kbd>x</kbd>
List buffers | `:buffers` / `:ls` / `:Telescope buffers`
Vertical split[^1] | `:vsp` / `:sp`
Next buffer | `:bnext` / `:bn`
Previous buffer | `:bprevious` / `:bp`
Get filetype | `:echo &filetype`
Go to next buffer | <kbd>Tab</kbd>
Go to prev. buffer | <kbd>Shift</kbd> + <kbd>Tab</kbd> / <kbd>Ctrl</kbd> + <kbd>6</kbd>

[^1]: Opens same buffer in new window.

Navigate left/down/up/right: <kbd>Ctrl</kbd> + <kbd>H</kbd>/<kbd>J</kbd>/<kbd>K</kbd>/<kbd>L</kbd>

## Tabs

Action | Keymap/command
---------|----------
List tabs | `:tabs`
Toggle tab | <kbd>g</kbd> + <kbd>t</kbd>
Go to previous tab | `:tabprevious` / `:tabp`
Go to next tab  | `:tabnext` / `:tabn`
Go to first tab | `:tabfirst` / `:tabrewind` / `:tabr`
Go to last tab  | `:tablast` / `:tabl`
Edit file in new tab | `:tabe <file>`

## Splitting windows

`:vsplit`
`split`
<kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>w</kbd> is for switching windows.

## General Neovim info

Open terminal: `:terminal` OR `<leader>` + <kbd>H</kbd> / <kbd>V</kbd> (horizontal / vertical)

Install LSP: `:MasonInstall bash-language-server`

Edit file: `:e <file>`

Read file: `:read <file>`

Write file: `:write` or `:w`. Can specify fillename if new or saving as new file.

Write read-only file: `:w!`

Quit all and confirm for unsaved changes: `:confirm qa`.

Quit and don't save changes: `:q!`.
Quit and save all: `:wqa`.

Append to file: `:w >> <file>`.

Save all buffers: `:wall` or `wa`

Run health checks: `:checkhealth`.

[Close `nvterm`](https://github.com/NvChad/NvChad/issues/2704#issuecomment-1975743935
): <kbd>Ctrl</kbd> + <kbd>x</kbd>,`leader` + <kbd>x</kbd>

### Autocommands

Action | Keymap/command
---------|----------
List autocommands | `:autocmd`
List autocommands for group `<augroup>` | `:autocmd augroup`
Remove autocommands for group `<augroup>` | `:autocmd! <augroup>`

Ignore events: `:set ei=all`.

Don't forget to reset: `:set ei=""`.

Can also ignore for certain events: `:set ei=CursorHold`

### Find

Action | Keymap/command
---------|----------
Find in directory | `:vim(grep) test *`
Find in directory (recursive) | `:vim(grep) test **`

### Marks

List marks:`:marks`

Use <kbd>m</kbd> + ***capital letter*** to create a mark you can access from a different buffer, e.g. <kbd>m</kbd> + <kbd>A</kbd>.

:bulb: Lower case letters only work within same buffer.

To go back to mark: <kbd>`</kbd> + <kbd>A</kbd>.

To go go to first non-blank character of line containing mark:  <kbd>'</kbd> + <kbd>A</kbd>.

To delete from current character to mark `a` position: ``d`a``.

:bulb: Whenever you jump across lines using motion, position gets saved in `` ` `` mark so you can jump to it using ``` `` ```!

### Macros

1. Press <kbd>q</kbd>.
2. Type letter you want, e.g. <kbd>x</kbd>.
3. Make edits, etc.
4. To stop recording, press <kbd>q</kbd> again.

To invoke macro: <kbd>@</kbd> + <kbd>x</kbd>.
Also, supports repeat, e.g. `3@x` to execute 3 times.
To invoke previously-played macro: <kbd>@</kbd> + <kbd>@</kbd>.

To run macro on visual selection:  `:'<,'> norm @x`.

### Keymaps

<https://www.ejmastnak.com/tutorials/vim-latex/vimscript/>

Vim offers two types of mapping commands:

1. The recursive commands `map`, `nmap`, `imap`, and other *map functions.
2. Their non-recursive equialents `noremap`, `nnoremap`, `inoremap`, etc.

You can use the Vim command `:help {key}<C-D>` to see if `{key}` is used for some built-in or plugin-defined Vim command. For example `:help s<C-D>` shows a multi-column list of all commands beginning with `s`.

`:nmap` will list all mappings defined in normal mode, `:imap` all mappings defined in insert mode, etc.

To filter the search down, you can use `:map <text>` to show a list of all mappings with a `{lhs}` starting with `<text>`, e.g. `:nmap \` will show all normal mode mappings beginning with `\`.

### Folds

Set method: `:set foldmethod=<method>`. `<method>` can be `manual`, `indent`, `marker`.

Get method: `:set foldmethod`.

Get fold markers: `:set foldmarker`.

Action | Keymap/command
---------|----------
Toggle fold under cursor | <kbd>z</kbd> + <kbd>a</kbd>
Toggle all folds under cursor | <kbd>z</kbd> + <kbd>A</kbd>
Close fold under cursor | <kbd>z</kbd> + <kbd>c</kbd>
Close all folds under cursor | <kbd>z</kbd> + <kbd>C</kbd>
Fold more | <kbd>z</kbd> + <kbd>m</kbd>
Close all folds | <kbd>z</kbd> + <kbd>M</kbd>
Open fold under cursor | <kbd>z</kbd> + <kbd>o</kbd>
Open all folds under cursor | <kbd>z</kbd> + <kbd>O</kbd>
Fold less | <kbd>z</kbd> + <kbd>r</kbd>
Open all folds | <kbd>z</kbd> + <kbd>R</kbd>
Create fold | <kbd>z</kbd> + <kbd>f</kbd>
Delete fold | <kbd>z</kbd> + <kbd>d</kbd>
Delete all folds under cursor | <kbd>z</kbd> + <kbd>D</kbd>
**Go to next closed fold** | <kbd>]</kbd> + <kbd>z</kbd>
**Go to previous closed fold** | <kbd>[</kbd> + <kbd>z</kbd>

### Registers

There are ten types of registers:

1. `"` is the default register. If no register is specified, this register is used. It is **always populated** unless you specify `_` register, e.g. `_dd`.
1. `*` and `+`: selection registers. system clipboards (only one of these works on Windows, but there are two of these registers because Linux uses two clipboards).
1. `0-9`:
    - `0` contains the last yank unless you specify another register, e.g. `"xyy`.
    - `1-9` contain the last 9 things you deleted/changed. When you delete a new thing, Vim will insert that into the `1` register and shift everything along.
1. `-`: "small deletion" register (stores the last deletion less than a line)
1. Named registers `a` to `z` or `A` to `Z`: Vim fills these registers only when you say so.  Specify them as lowercase letters to replace their previous contents or as uppercase letters to append to their previous contents.
1. Read-only registers:  You can use them only with the `p`, `P`, and `:put` commands and with <kbd>Ctrl</kbd> + <kbd>R</kbd>.
    - `.` contains the last inserted text  
    - `%`: current file name
    - `:`: last command-line command  
1. `#`: the "alternate" file name (basically, the most recent file other than the current one). This register is writable, mainly to allow for restoring it after a plugin has changed it.
1. `=`: the "expression" register. You will be prompted to enter an expression. The expression must evaluate to a string (numbers are auto-cast). If you do not enter an expression, it uses the previous value.
1. `_`: "black hole" register. This is useful if you want to delete things without overwriting the default register's contents.
1. `/`: last search command

For more information: `:help registers`.

#### Usage

Prefix register name with `"` to use in commands.

Some examples:

`"ayy` copies current line to `a` register.
`"bp"` pastes content from `b` register.

#### Tips

- You can write to a register with a `:let` command, e.g.`:let @/ = "the"`

- Use `:reg(isters)` to display register contents. `:reg ab` will display contents of registers `a` and `b`.

- [Peekaboo](https://github.com/junegunn/vim-peekaboo) extends `"` and `@` in normal mode and <kbd>Ctrl</kbd> + <kbd>R</kbd> in insert mode so you can see the contents of the registers.

- Clear named register: Write an empty macro, e.g. `qaq` to clear `a` register.

- [Clear number registers](https://www.reddit.com/r/vim/comments/ugocqa/comment/i70w02c/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button): `call range(1,9)->map('setreg(v:val,"")')`

### [Executing external commands](https://youtu.be/STSZt2c1rSA?feature=shared)

`:!ls` displays results of `ls` in separate window.
`:.!date` replaces current line with output of `date` command.
`:%! sort` sort all lines.
`:3,5! sort` sort lines 3-5.
`:r !date` insert output of command below the current line.
`:r ! <file>` insert contents of <file> below the current line.

## Visual Mode

`v` - select current character. Use any motion to extend selection, e.g. `ve` or `v$`.

`V` - select current line. Can also extend with motion or count, e.g.`Vgg` selects from current line to start of file and `5V` selects 5 lines starting from current line.

`gv` selects previously highlighted visual area.

Use `o` to move cursor to diagonally opposite corner of the visual selection.

`Q` and `@` in Visual mode will execute the last recorded/executed macro for all visually selected lines.

### Visual Block Mode

Press <kbd>Ctrl</kbd> + <kbd>q</kbd> or <kbd>Ctrl</kbd> + <kbd>v</kbd>[^2] to enter. Select a region of text, e.g. `2lj` selects a region with 3 columns and 2 rows. Press <kbd>Shift</kbd> + <kbd>i</kbd> to prepend or <kbd>Shift</kbd> + <kbd>a</kbd> to append. When you are done with your changes, press <kbd>Esc</kbd> and changes will be applied to all lines!

[^2]: If using Windows Terminal, make sure to disable default binding for <kbd>Ctrl</kbd> + <kbd>v</kbd>.

Press `$` to select to end of each line.

Use `O` to move cursor to other corner of current line in visual block mode.

### Editing

`d` deletes selection.
`p` replaces selection with contents from `"` register.
`"ap` replaces selection with contents from `a` register.
`c` clears text and enters insert mode. Whatever you type will be applied to all lines in visual block after you press <kbd>Esc</kbd>.
`C` clears text *till end of the line* and enters insert mode.
`ra` replaces every character in selection with `a`.
`=` auto-indents code.

## Command-line mode

### Motion, editing

Action | Keymap/command
---------|----------
Go to start |<kbd>Ctrl</kbd> + <kbd>b</kbd>
Go to end |<kbd>Ctrl</kbd> + <kbd>e</kbd>
Go left one word |<kbd>Ctrl</kbd> + <kbd>←</kbd>
Go right one word |<kbd>Ctrl</kbd> + <kbd>→</kbd>
Erase line before cursor |<kbd>Ctrl</kbd> + <kbd>u</kbd>
Paste register `a` contents | <kbd>Ctrl</kbd> + <kbd>r</kbd> followed by `a`
Show completions based on typed characters | <kbd>Ctrl</kbd> + <kbd>d</kbd>

### History

Use `↑` and `↓` to navigate history.

`q:` opens window for `:` commands.
`q/` and `q?` open window for search patterns.
<kbd>Ctrl</kbd> + <kbd>f</kbd> opens appropriate history window.

Press <kbd>Enter</kbd> to select entry from history window.

## Search

Action | Keymap/command
---------|----------
Search down | <kbd>/</kbd>
Search up | <kbd>Shift</kbd> + <kbd>/</kbd>
Find word under cursor | <kbd>Shift</kbd> + <kbd>8</kbd>
Find word under cursor (backwards) | <kbd>Shift</kbd> + <kbd>3</kbd>
Find word under cursor (partial match) | `g*`
Find word under cursor (backwards partial match) | `g#`

### Advanced usage

`/searchpattern/s` places cursor at the start of the match.
`/searchpattern/s+2` places cursor 2 characters after the start of the match.
`/searchpattern/s-3` places cursor 3 characters before the start of the match.
`/searchpattern/e` places cursor at the end of the match.
`/searchpattern/e+2` and `/searchpattern/e-4` behave analogously to commands for start of match.

`/searchpattern/+2` and `/searchpattern/-4` places cursor 2 lines below and 4 lines above match respectively.

### Navigation

After entering text for search, press <kbd>Enter</kbd>. All matches will be highlighted.

Type <kbd>N</kbd> to go to the next match or <kbd>n</kbd> to go to the previous match.

Press <kbd>Shift</kbd> + <kbd>q</kbd> to skip next match.

### Clear results

Press <kbd>Esc</kbd> to clear search highlights.

### Delete search results

You can use these operators in combination with `d` to delete text, e.g. `d/hello` to delete everything until the first occurrence of `hello`.

To delete search results:

1. Press `gn` if your cursor is on match to select it in visual mode. Then press `dgn`.
2. Else, press `dgn` to delete matches!

Similarly, you can use `cgn` to change search result text.

### Using Ex-Commands

`:[range]s/{pattern}/{substitute}/{flags}`

Examples:

`10,12:s/test/ok` replaces first occurrences of `test` in lines 10-12 with `ok`.

`:s/test/ok/g` (or `:.s/test/ok/g`) replaces all occurrences of `test` in current line with `ok`.

Replace in whole file: `:%/s/test/ok/g`.

Other flags besides `g`:

- `c` to confirm each submission
- `i` for case-insensitive search
- `I` for case-sensitive search

#### Quantifiers

Quantifiers are same as you would expect except they are prefixed by `\`: `\+` instead of `+`, `\?` for `?`, `\{m, n}` instead of `{m, n}`.

`:%s/^\s\+` will match all lines beginning with whitespace.

Non-greedy quantifiers match as minimally as possible:

`\{-}` matches zero or more time, e.g. `/t.{-}a`
`\{-m, n}` matches `m` to `n` times as minimally as possible.

#### Character classes

Special character classes:

1. `\a` is `[a-zA-Z]`
1. `\A` is non-alphabet, `[^a-zA-Z]`.
1. `\l` is lowercase, `[a-z]`
1. `\L` is non-lowercase, `[^a-z]`.
1. `\u` is uppercase, `[A-Z]`
1. `\U` is non-uppercase, `[^A-Z]`.
1. `\o` is octal, `[0-7]`.
1. `\x` is hexadecimal, `[0-9a-fA-F]`

To include EOL character, use `\_` instead of `\` for any of the escape sequences, e.g. `\_s` will match space between lines.

There are also named sets like `[:digit:]`. For more info, see `:h :alnum:`.

#### Alternation and grouping

Instead of `\d|\s`, need to use `\|` instead of `|`.
For grouping, use `\(` and `\)`, e.g. `\(bar\|cat\)`
For non-capturing group: `\%(pattern\)`

#### Backreferences

In `:s/\(\d\w\)\1`, `\1` refers to the first capture group.

`&` and `\0` refer to the entire match.

#### Lookarounds

Syntax is different: `\d\@!` vs `(?!\d)` and `\(pat.*\)\@<=` vs `(?<=pat.*)`.
:point_right: Notice that `\@` always follows the pattern atom.

Negative lookahead: `ice\d\@!` matches `ice` or `iced` but not `ice1`.
Negative lookbehind: `s\@<!c` matches `cool` but not `school`.
Positive lookahead: `ice\d\@=` matches `ice1` but not `ice`.
Positive lookbehind: `s\@<=c` matches `school` but not `cool`.

##### Atomic grouping

This differs from a regular group in that, once the pattern is matched, no backtracking is allowed.

Syntax: `\(\w+\)\@>\d` vs `(?>\w+)\d`

Example: `:s/\(0*\)\@>\d{3,}/(&)/g` will surround numbers >= 100 with brackets ignoring any leading zeros.

##### Case sensitivity

`\C` to make case-sensitive.
`\c` to make case-insensitive.

`/\cdog` matches `dog` and `Dog`.

##### Change case for replacement

`\U` makes the following characters upper-case.
`\u` makes the next character upper-case.
`\L` makes the following characters lower-case.
`\l` makes the next character lower-case.

Use `:s/\<\l/\u&/g` to capitalize every word.

## Editing

To execute a normal mode command from insert mode in Neovim, you can use the `<C-o>` (<kbd>Ctrl</kbd> + <kbd>o</kbd>) shortcut. This allows you to execute a single normal mode command without leaving insert mode. After executing the command, you will return to insert mode.

For good overview of different operators: <https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/editing-like-magic-with-vim-operators/>

### Undo/redo

Action | Keymap/command
---------|----------
Undo | <kbd>u</kbd>
Redo |<kbd>Ctrl</kbd> + <kbd>r</kbd>
Undo latest changes on last edited line  | <kbd>Shift</kbd> + <kbd>u</kbd>
Redo latest changes on last edited line |<kbd>Shift</kbd> + <kbd>u</kbd>

### Insert

All these commands put you in insert mode.

Action | Keymap/command
---------|----------
Insert | <kbd>i</kbd>
Append |<kbd>a</kbd>
Insert at beginning of line | <kbd>Shift</kbd> + <kbd>i</kbd>
Append at end of line | <kbd>Shift</kbd> + <kbd>a</kbd>
Insert new line after line | <kbd>o</kbd>
Insert new line before current line | <kbd>Shift</kbd> + <kbd>o</kbd>

`gi` puts you into Insert mode at the last place you made a change.

### Delete/replace character

Action | Keymap/command
---------|----------
Delete current character | <kbd>x</kbd> / <kbd>d</kbd> + <kbd>l</kbd>
Delete current character and enter insert mode | <kbd>s</kbd> / <kbd>c</kbd> + <kbd>l</kbd>
Replace current character with `a`| <kbd>R</kbd> + <kbd>a</kbd>
Replace current character with `a`, return to Normal mode | <kbd>r</kbd> + <kbd>a</kbd>
Delete previous character | <kbd>X</kbd> / <kbd>d</kbd> + <kbd>h</kbd>

<kbd>r</kbd> accepts motion, e.g. `cde` becomes `aae` if you type `2ra` with cursor on `c`

<kbd>R</kbd> + multiple characters: `cde` becomes `abe` if you type `Rab` with cursor on `c`. Line will get extended as needed . Press <kb>Esc</kbd> when done replacing.

### Delete line

Action | Keymap/command
---------|----------
Delete current line | <kbd>d</kbd> + <kbd>d</kbd>
Delete current line and enter insert mode | <kbd>Shift</kbd> + <kbd>s</kbd> / <kbd>c</kbd> + <kbd>c</kbd>
Delete line and line above | <kbd>d</kbd> + <kbd>k</kbd>
Delete line below | `:+d`
Delete line above | `:-d`
Delete current line to bottom | <kbd>d</kbd> + <kbd>G</kbd>
Delete from current character to end of line | <kbd>Shift</kbd> + <kbd>d</kbd> / <kbd>d</kbd> + <kbd>$</kbd>

`10dd` = delete current line and 9 lines below. Same as `d9j`.

#### Command-line mode

You can also delete in command-line mode:

`:$d` deletes last line
`:5d` deletes 5th line

You can even delete lines based on matches 🤯

`:/b/,/func/d` deletes from (first) line containing `b` to line containing `func`!

Delete line containing `g` and line below it: `:/g/;+1d`

Delete from line 5 and line after that containing `for`: `:5;/for/d`

This even works with marks: `:'a,'bd` deletes from line with mark `a` to line with mark `b`!

### Yank

<kbd>y</kbd> is yank operator.

Copy line and line above | <kbd>y</kbd> + <kbd>k</kbd>
Copy current line | <kbd>y</kbd> + <kbd>y</kbd>
Copy from current character to end of line | <kbd>y</kbd> + <kbd>$</kbd>

yk copies current line and above it.

### Paste

Action | Keymap/command
---------|----------
Paste below current line or to right of cursor | `p`
Paste above current line or to left of cursor | <kbd>Shift</kbd> + <kbd>p</kbd>
Paste below current line or right of cursor (matching indent) | `]p`
Paste above current line or to left of cursor (matching indent) | `]P`
Same as `p` but puts the cursor after the pasted selection | `gp`
Same as `P` but puts the cursor after the pasted selection | `gP`

Duplicate a line: `yyp`

Using `CTRL-R {register}` you can paste the contents of a register after the cursor in **INSERT** mode.

### Comment

Commenting out code relies on [comment.nvim](https://github.com/numToStr/Comment.nvim) for now. This functionality will be added to neovim 0.10 according to this [PR](https://github.com/neovim/neovim/pull/28176).

Action | Keymap/command
---------|----------
Toggle comment current line | `gcc`
Toggle block comment | `gbc`
Add comment on the line above | `gcO`
Add comment on the line below | `gco`
Add comment at the end of line | `gcA`
(Op-pending) Toggles the region using linewise comment | `gc[count]{motion}`
(Op-pending) Toggles the region using blockwise comment | `gb[count]{motion}`

Both `gc` and `gb` act as leaders, e.g. comment to end of line: `gc$` or comment out entire paragraph: `gcip`.

This even has Treesitter integration, e.g. `gcam` to comment out method!

`<leader>cc` will comment out text smartly, i.e.use block comment style only if more than one line selected.

### Indent

Source: <https://learnbyexample.github.io/tips/vim-tip-2/>

Action | Keymap/command
---------|----------
Indent the current line (normal, visual mode) | `>>`
Indent the current line (insert mode) | <kbd>Ctrl</kbd>+<kbd>t</kbd>
Indent the current line and two lines below (same as `2>j`) | `3>>`
Dedent the current line (normal, visual mode) | `<<`
Dedent the current line (insert mode) | <kbd>Ctrl</kbd>+<kbd>d</kbd>
Auto-indent code, use motion commands to indicate the portion to be indented | `=`
Auto-indent current line and 4 lines below | `=4j`
Auto-indent the current paragraph | `=ip`

### Join Lines

Source: <https://youtu.be/rubhH6v4lN0?feature=shared>

Action | Keymap/command
---------|----------
Join current and next line (replace EOL with space[^3] and remove indentation except for current) | <kbd>J</kbd>
Join current and next 2 lines (replace EOL with space) | `3J`
Join current and next line (remove EOL and preserve indentation) | `gJ`

These also work in VISUAL or COMMAND-LINE mode.

[^3]: When there is a trailing space at end of line or next line begins with `)`, then no space is added.

### Moving lines

In command-line mode: `<orig>m<new>`, e.g. `3m0` moves 3rd line to top of file or `2m$` moves 2nd line to bottom.

### Digraphs

To input a digraph, in insert mode, press <kbd>Ctrl</kbd>+<kbd>q</kbd> followed by the two letters which define the digraph. Here are a few useful, built-in, combinations:

<kbd>Ctrl</kbd>+<kbd>q</kbd> + <kbd>a</kbd>+<kbd>:</kbd> = ä
<kbd>Ctrl</kbd>+<kbd>q</kbd> + <kbd>a</kbd>+<kbd>*</kbd> = α
<kbd>Ctrl</kbd>+<kbd>q</kbd> + <kbd>T</kbd>+<kbd>E</kbd> = ∃

Useful links:

- <https://stackoverflow.com/questions/19183272/vim-digraph-not-working>
- <https://alt-romes.github.io/posts/2023-06-21-haskell-unicode-syntax-vim.html>

### Increment

Source: <https://learnbyexample.github.io/tips/vim-tip-1/>

<kbd>Ctrl</kbd> + <kbd>a</kbd> will increment the number under the cursor or the first occurrence of a number to the right of the cursor.

Ctrl<kbd>Ctrl</kbd> + <kbd>x</kbd>  will decrement the number under the cursor or the first occurrence of a number to the right of the cursor

You can also provide a count prefix!

### Editing with motion

Some examples of using motions for editing:

Action | Keymap/command
---------|----------
Delete from current line to the end of the file | `dG`
Delete from current line to the beginning of the file | `dgg`
Copy until next `c` in current line | `yfc`
Copy until end of sentence | `y)`
Indent until end of paragraph | `>}`

### Text object selection

`a` is for around and `i` is for inner.

`dip` deletes paragraph.
`ciw` deletes current word and enters INSERT.
`dit`deletes all characters within HTML/XML tags. Nesting is taken care of.
`ci"` deletes all text within double quotes and enters INSERT.
`di'` deletes all text within single quotes.
`yis` yanks a sentence.

These work even with `{count}`, e.g. `d2i{` will delete inner braces and text between braces one level above.

Refer to `:h text-objects` for more details.

### Editing with Ex commands

> See [Deleting Multiple Lines At Once](https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/command-line-mode/#deleting-multiple-lines-at-once).

`:[range]command[options]`

Delete the lines 10, 11 and 12 and puts them inside the `a` register: `:10,12d a` or `:10,+2d a`.
Copy current line: `:.y`
Delete whole file: `:%d`

`0` refers to beginning of the file and `$` to end.
So, `:.,$y` copies text from current line to end of file.

`:'<,'>` shows up if you type `:` and you're in **VISUAL** mode. It refers to current selection so to delete it: `:'<,'>d`.

Repeat last ex-command: `@:`. After that, type `@@` to repeat it again.

### Change case

Toggle case of character (works in VISUAL mode too): `~`
Toggle case with motion: `g~<motion>`, e.g. `g~iw`.
Lower case with motion: `gu<motion>`, e.g. `gue`.
Upper case with motion: `gU<motion>`, e.g. `gUiw`.

These work with `{count}` prefix, e.g. `2~`.

### [Editing line filtered by pattern](https://youtu.be/uQKaAOKgr2o?feature=shared)

`:[range]g[lobal]/{pattern}/[cmd]` - edit lines that are first filtered by a pattern

`:g/call/d a` - delete all lines containing `call` and store in `a` register

`:1,5 g/call/m0` - move all lines from 1 to 5 containing `call` to top of file.
`:g /cat/ s/rat/bat/g` : replace `rat` with `bat` in all lines containing `cat`.

`:.,+2 g/\wa/ normal gU$` - for current line and 2 lines below it, convert to upper case all lines containing `\wa`.

Use `g!` or `v` to negate pattern.

`:v/test/d` deletes all lines not containing `test`.

Can use `|`, `\`, `"` or any single byte character that is not alphanumeric as delimiter too:

`:.g%call%d`

See `:h substitute`.

## Motions

In this section, **NBC** = **n**on-**b**lank **c**haracter.

### Jumps and changes

See `:h jump-motions`.

When making changes, the cursor position is saved.

Action | Keymap/command
---------|----------
View jumps | `:jumps`
Go to previous jump position | <kbd>Ctrl</kbd> + <kbd>o</kbd>
Go to next jump position | <kbd>Ctrl</kbd> + <kbd>i</kbd>
View changes | `:changes`
Go to previous change position | <kbd>g</kbd> + <kbd>;</kbd>
Go to next change position | <kbd>g</kbd> + <kbd>,</kbd>
Go to last insert position and INSERT | <kbd>g</kbd> + <kbd>i</kbd>

### Line-based

Action | Keymap/command
---------|----------
Go to 3rd line | `:3` / `3gg`

### Word-based

First, [need to know the difference between word and WORD](https://stackoverflow.com/questions/22931032/vim-word-vs-word):

A WORD is a sequence of NBCs separated by whitespace. A word is delimited by non-keyword characters. It consists only of numbers, letters or underscores.

Action | Keymap/command
---------|----------
Move to next word | <kbd>w</kbd>
Move to beginning of word | <kbd>b</kbd>
Move to end of word | <kbd>e</kbd>
Move to end of previous word | <kbd>g</kbd> + <kbd>e</kbd>
Move to next WORD | <kbd>W</kbd>
Move to beginning of WORD | <kbd>B</kbd>
Move to end of WORD | <kbd>E</kbd>
Move to end of previous WORD | <kbd>g</kbd> + <kbd>E</kbd>

### Moving within same line

Action | Keymap/command
---------|----------
Move to first character | <kbd>0</kbd>
Move to first NBC | <kbd>\^</kbd>
Move to end of line | <kbd>\$</kbd>
Move to last NBC | <kbd>g</kbd> + <kbd>_</kbd>
Move to 3rd character | `3\|`
Move to middle of line |  <kbd>g</kbd> + <kbd>M</kbd>

`80gM` to go to position at 80% of current line.

`|` is same as <kbd>0</kbd> or `1|`

See `:h left-right-motions`.

### Moving within screen lines

A line that is wrapped will have 2 or more screen lines.

Action | Keymap/command
---------|----------
Move to the first character | <kbd>g</kbd> + <kbd>0</kbd>
Move to the first NBC | <kbd>g</kbd> + <kbd>^</kbd>
Move up screen line | <kbd>g</kbd> + <kbd>k</kbd>
Move down screen line | <kbd>g</kbd> + <kbd>j</kbd>

`g2j` move down 2 screen lines.

### Reposition current line

Source: <https://learnbyexample.github.io/tips/vim-tip-4/>

Action | Keymap/command
---------|----------
Reposition the current line to the middle of the visible window | <kbd>z</kbd> + <kbd>z</kbd>
Reposition the current line to the top of the visible window | <kbd>z</kbd> + <kbd>t</kbd>
Reposition the current line to the bottom of the visible window | <kbd>z</kbd> + <kbd>b</kbd>

### Moving Vertically

Action | Keymap/command
---------|----------
Move up 1 line | <kbd>k</kbd>
Move down 1 line | <kbd>j</kbd>
Move up 1 paragraph | <kbd>Shift</kbd> + <kbd>[</kbd>
Move down 1 paragraph | <kbd>Shift</kbd> + <kbd>]</kbd>
Scroll half a page down | <kbd>Ctrl</kbd> + <kbd>d</kbd>
Scroll half a page up | <kbd>Ctrl</kbd> + <kbd>u</kbd>
Scroll page forward | <kbd>Ctrl</kbd> + <kbd>f</kbd>
Scroll page backward | <kbd>Ctrl</kbd> + <kbd>b</kbd>
Scroll up 1 line | <kbd>Ctrl</kbd> + <kbd>e</kbd>
Scroll down 1 line | <kbd>Ctrl</kbd> + <kbd>y</kbd>
Move up 1 paragraph | <kbd>{</kbd>
Move down 1 paragraph | <kbd>}</kbd>
Move up 1 sentence | <kbd>(</kbd>
Move down 1 sentence | <kbd>)</kbd>

### Find characters

- Use `f{character}` to move to the next occurrence of a character in a line. For instance, `2f"` sends you to the second next occurrence of a double quote.
If your target is behind the cursor you can use `F{character}` to find the previous occurrence of a character.

Use `t{character}` to move the cursor just before the next occurrence of a character. Again, you can use `T{character}` to do the same as `t{character}` but backwards.

<kbd>;</kbd> repeats the last find (`f`/`F`/`t`/T`) motion in the same direction.

<kbd>,</kbd> repeats the last find motion in the opposite direction.

### Misc

<kbd>h</kbd>, <kbd>l</kbd> are used for navigating left and right.

Action | Keymap/command
---------|----------
Move to first NBC of first line | <kbd>g</kbd> + <kbd>g</kbd>
Move to first NBC of last line | <kbd>G</kbd>
Moves to matching bracket (or end of current Treesitter node courtesy of `nvim-tree-pairs`s) | <kbd>%</kbd>
Moves to line at 40% of total lines | `40%`
Move to middle of window | <kbd>M</kbd>
Move to bottom of window | <kbd>L</kbd>

## Completion and snippets

`nvim-cmp.nvim` provides completion support.
`luasnip.nvim` provides extensive snippet functionality.

Action | Keymap
---------|----------
Scroll documentation window back | <kbd>Ctrl</kbd> + <kbd>d</kbd>
Scroll documentation window forward | <kbd>Ctrl</kbd> + <kbd>f</kbd>
Close | <kbd>Ctrl</kbd> + <kbd>e</kbd>
Next entry | <kbd>Ctrl</kbd> + <kbd>n</kbd> / `<Down>` / <kbd>Tab</kbd>
Previous entry | <kbd>Ctrl</kbd> + <kbd>p</kbd> / `<Up>` / <kbd>Shift</kbd> + <kbd>Tab</kbd>
Accept suggestion | <kbd>Enter</kbd>
**Toggle documentation window** | <kbd>Alt</kbd> + <kbd>d</kbd>
Invoke completion | <kbd>Ctrl</kbd> + <kbd>Space</kbd>
**Toggle autocompletion** | `<Leader>tc`
**Go to next snippet node** | <kbd>Ctrl</kbd> + <kbd>k</kbd>
**Go to previous snippet node** | <kbd>Ctrl</kbd> + <kbd>j</kbd>
**Select current entry (Insert, Commandline mode)** | <kbd>Ctrl</kbd> + <kbd>y</kbd>
**Complete common string (Insert, Commandline mode)** | <kbd>Ctrl</kbd> + <kbd>l</kbd>
**Select choice (shows dropdown for choice node)** | <kbd>Ctrl</kbd> + <kbd>u</kbd>
**List snippets** | `<leader>sl`

Actions in **bold** above are custom actions I added in addition to those to provided by NvChad.

## Recipes + FAQ

### Toggle line numbers

`:set relativenumber`: show relative numbers
`:set number`: show numbers

Prefix with `no` to negate above or add `!` suffix to toggle instead.

### Swap lines

Do this: `ddp`

### Multi-file find and replace

1. Search for files with text using Telescope live grep.
2. Add results to QuickFix list via <kbd>Ctrl</kbd> + <kbd>q</kbd>.
3. Now do `:cdo %s/{findWhat}/{replaceWith}/g` to replace all QuickFix results.

### Where are Treesitter parsers located?

They are located inside `parser` sub-folder of `nvim-treesitter` plugin install path, i.e. `~/.local/share/nvim/lazy/nvim-treesitter/parser` ([source](https://www.reddit.com/r/neovim/comments/13sz7kc/comment/jlskhod/?utm_source=share&utm_medium=web2x&context=3)).

### Open/View URLs

`gx` in Normal mode calls `vim.ui.open()` on whatever is under the cursor, which shells out to your operating system's "open" capability. For instance, pressing `gx` on a URL will open that URL in your browser.

Courtesy of `urlview.nvim` plugin, you can view a list of URLs: `:UrlView`.
Use `]u` and `[u` to naviggate to previous and next URL in buffer.

## Plugins

### Utility

#### nvim-tree

[nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) is a file explorer for Neovim.

To launch, press <kbd>Ctrl</kbd> + <kbd>n</kbd>. To close, press <kbd>q</kbd>.

Here are some useful key maps for when the window is displayed:

Action | Keymap
---------|----------
**Change root to input path** | <kbd>Alt</kbd> + <kbd>r</kbd>
Change root to node | <kbd>Ctrl</kbd> + <kbd>\]</kbd>
**Change root to global cwd** | <kbd>Ctl</kbd> + <kbd>c</kbd>
**Launch Find Files** | <kbd>Ctrl</kbd> + <kbd>f</kbd>
**Launch Live Grep** | <kbd>Ctrl</kbd> + <kbd>g</kbd>
**Print path** | <kbd>Ctrl</kbd> + <kbd>p</kbd>
Open: Horizontal split | <kbd>Ctrl</kbd> + <kbd>x</kbd>
Open | <kbd>Enter</kbd>
Open: Vertical split | <kbd>Shift</kbd> + <kbd>l</kbd>
Next sibling | <kbd>></kbd>
Previous sibling | <kbd><</kbd>
Change root to parent | <kbd>-</kbd>
Prev git | <kbd>\[</kbd> + <kbd>c</kbd>
Next git | <kbd>\]</kbd> + <kbd>c</kbd>
Delete | <kbd>d</kbd>
Expand All | <kbd>Shift</kbd> + <kbd>e</kbd>
Rename: Basename | <kbd>e</kbd>
Live Filter: Clear | <kbd>Shift</kbd> + <kbd>f</kbd>
Live Filter: Search | <kbd>f</kbd>
Help | <kbd>g</kbd> + <kbd>?</kbd>
Copy Basename | <kbd>g</kbd> +  <kbd>e</kbd>
**Toggle hidden files** | <kbd>g</kbd> +  <kbd>h</kbd>
**Toggle group empty** | <kbd>g</kbd> +  <kbd>l</kbd>
Copy absolute path | <kbd>g</kbd> +  <kbd>y</kbd>
**Close parent folder** | <kbd>h</kbd>
**Collapse all** | <kbd>Shift</kbd> + <kbd>h</kbd>
Move down | <kbd>j</kbd>
Move up | <kbd>k</kbd>
**Expand folder or go to file** | <kbd>l</kbd>
**Vsplit Preview** | <kbd>Shift</kbd> + <kbd>l</kbd>
Toggle bookmark | <kbd>m</kbd>
Collapse all | <kbd>Shift</kbd> + <kbd>w</kbd>
Copy name | <kbd>y</kbd>
Copy relative path | <kbd>Shift</kbd> +  <kbd>y</kbd>

All actions in **bold** in the table above have custom keymaps. The other commands use plugin defaults.

#### Telescope

[Telescope](https://github.com/nvim-telescope/telescope.nvim) is a very powerful plugin to search for items.

- `actions.which_key` (<kbd>Ctrl</kbd> + <kbd>/</kbd> in **insert** or <kbd>?</kbd> in **normal** mode)  shows the mappings for your picker. Press again to close.

- `builtin.grep_string` searches for the string under your cursor or selection in your current working directory.
`builtin.live_grep` searches for a string in your current working directory and gets results live as you type, respects `.gitignore`. (Requires **ripgrep**)

- <kbd>Alt</kbd> + <kbd>p</kbd> toggles preview.

<details>
  <summary>General</summary>

Action | Keymap/command
---------|----------
Bookmarks | `<leader>` + <kbd>f</kbd> + <kbd>M</kbd>
Find buffers | `<leader>` + <kbd>f</kbd> + <kbd>B</kbd>
Commands | `<leader>` + <kbd>f</kbd> + <kbd>c</kbd> + <kbd>C</kbd>
Command History | `<leader>` + <kbd>f</kbd> + <kbd>c</kbd> + <kbd>h</kbd>
Colorschemes | `<leader>` + <kbd>f</kbd> + <kbd>c</kbd> + <kbd>s</kbd>
Keymap | `<leader>` + <kbd>f</kbd> + <kbd>k</kbd>
Search History | `<leader>` + <kbd>f</kbd> + <kbd>S</kbd>
Undo tree | `<leader>` + <kbd>f</kbd> + <kbd>u</kbd>
Search buffers | `<leader>` + <kbd>f</kbd> + <kbd>y</kbd>
Search emojis | `<leader>` + <kbd>f</kbd> + <kbd>e</kbd>
Notifications | `<leader>` + <kbd>f</kbd> + <kbd>n</kbd>
Jumplist | `<leader>` + <kbd>f</kbd> + <kbd>j</kbd>
Registers | `<leader>` + <kbd>f</kbd> + <kbd>R</kbd>
LuaSnip | `<leader>` + <kbd>f</kbd> + <kbd>s</kbd>
Tags | `<leader>` + <kbd>f</kbd> + <kbd>t</kbd>
Treesitter | `<leader>` + <kbd>f</kbd> + <kbd>T</kbd>

</details>

<details>
  <summary>Files</summary>

Action | Keymap/command
---------|----------
File browser | `<leader>` + <kbd>f</kbd> + <kbd>b</kbd>
Search home | `<leader>` + <kbd>f</kbd> + <kbd>h</kbd>
Search config | `<leader>` + <kbd>f</kbd> + <kbd>c</kbd> + <kbd>c</kbd>
frecency | `<leader>` + <kbd>f</kbd> + <kbd>F</kbd><leader>
frecency (CWD) | `<leader>` + <kbd>f</kbd> + <kbd>F</kbd> + <kbd>c</kbd>
Old files | `<leader>` + <kbd>f</kbd> + <kbd>o</kbd>>

</details>

<details>
  <summary>Help</summary>

Action | Keymap/command
---------|----------
Help page | `<leader>` + <kbd>f</kbd> + <kbd>?</kbd>
Man Pages | `<leader>` + <kbd>f</kbd> + <kbd>m</kbd>
Grep help (live grep) | `<leader>` + <kbd>f</kbd> + <kbd>H</kbd> + <kbd>l</kbd>
Grep help (grep string) | `<leader>` + <kbd>f</kbd> + <kbd>H</kbd> + <kbd>g</kbd>

</details>

<details>
  <summary>LSP</summary>

Action | Keymap/command
---------|----------
Search Document Symbols | `<leader>` + <kbd>f</kbd> + <kbd>l</kbd> + <kbd>s</kbd>
Search Workspace Symbols | `<leader>` + <kbd>f</kbd> + <kbd>l</kbd> + <kbd>w</kbd>

</details>

<details>
  <summary>git</summary>

Action | Keymap/command
---------|----------
Checkout branch | `<leader>` + <kbd>g</kbd> + <kbd>a</kbd>
Checkout commit | `<leader>` + <kbd>g</kbd> + <kbd>c</kbd>
git stash | `<leader>` + <kbd>g</kbd> + <kbd>s</kbd>
git status (from  NvChad) | `<leader>` + <kbd>g</kbd> + <kbd>t</kbd>

</details>

#### Legendary

[Legendary](https://github.com/mrjones2014/legendary.nvim) provides a legend for your keymaps, commands, and autocmds.

Action | Keymap/command
---------|----------
Legend | `:Legendary`
Search keymaps | `:Legendary keymaps`
Search commands | `:Legendary commands`
Search functions | `:Legendary functions`
Repeat the last item executed via legendary.nvim's finder | `:LegendaryRepeat`

#### vim-tmux-navigator

[This plugin](https://github.com/christoomey/vim-tmux-navigator) provides seamless navigation between tmux panes and vim splits.

Action | Keymap/command
---------|----------
Left | <kbd>Ctrl</kbd> + <kbd>h</kbd>
Right | <kbd>Ctrl</kbd> + <kbd>l</kbd>
Up | <kbd>Ctrl</kbd> + <kbd>k</kbd>
Down | <kbd>Ctrl</kbd> + <kbd>j</kbd>
Go to previous | <kbd>Ctrl</kbd> + <kbd>\\</kbd>

You also need to setup the same mappings in your `.tmux.conf`. The easiest way to do is add this to the file:

```bash
set -g @plugin 'christoomey/vim-tmux-navigator'
```

### Coding

#### Outline

[Outline.nvim](https://github.com/hedyhli/outline.nvim) produces a code outline sidebar powered by LSP.

See [here](https://github.com/hedyhli/outline.nvim#default-keymaps) for default keymaps.

Activate via `<leader>` + <kbd>g</kbd> + <kbd>o</kbd>.

#### Diffview

[Diffview](https://github.com/sindrets/diffview.nvim) helps you view diffs for any git revision.

Diff working directory with commit: `:DiffviewOpen HEAD~2`

Diff working directory with commit for file: `:DiffviewOpen HEAD~2 -- .gitignore`

Toggle the file pane: `:DiffviewToggleFiles`

Hide untracked files: `:DiffviewOpen -uno`

Exclude certain paths: `:DiffviewOpen -- :!exclude/this :!and/this`

Run as if git was started in a specific directory: `:DiffviewOpen -C/foo/bar/baz`

Use `[c` and `]c` to jump btw hunks.

#### nvim-dap

DAP stands for Debug Adapter Protocol.

Kept same shortcuts as Visual Studio:

Action | Keymap/command
---------|----------
Toggle breakpoint | <kbd>F9</kbd>
Launch debugger | <kbd>F5</kbd>
Step over | <kbd>F10</kbd>
Step into | <kbd>F11</kbd>
Step out | <kbd>Shift</kbd> + <kbd>F11</kbd>

### Editing

#### mini.move

[mini.move](https://github.com/echasnovski/mini.move) lets you move lines in Normal/Visual mode.

Action | Keymap/command
---------|----------
Left | <kbd>Alt</kbd> + <kbd>h</kbd>
Right | <kbd>Alt</kbd> + <kbd>l</kbd>
Up | <kbd>Alt</kbd> + <kbd>k</kbd>
Down | <kbd>Alt</kbd> + <kbd>j</kbd>

#### nvim-spider

This plugin extends regular `web` motions to handle snake and camel case!

I have mapped the actions separately to avoid clobbering default behavior.

Action | Keymap
---------|----------
Move to next word | <kbd>Alt</kbd> + <kbd>w</kbd>
Move to end of word | <kbd>Alt</kbd> + <kbd>e</kbd>
Move to beginning of word | <kbd>Alt</kbd> + <kbd>b</kbd>
Move to end of previous word | <kbd>g</kbd> + <kbd>E</kbd>
Move to number | <kbd>n</kbd>

#### [nvim-surround](https://github.com/kylechui/nvim-surround)

This provides three separate operators:

- `ds` to delete the surroundings: `ds{char}`.
- `cs` to change the surroundings: `cs{target}{replacement}`.
- `ys` to add surroundings: `ys{motion}{char}`.

Repeatable via `.`

For the following examples, `*` will denote the cursor position:

Old text                 | Command   | New text
--------------------------|----------|----------------------
`surr*ound_words`          | ysiw)     | `(surround_words)`
`*make strings`            | ys$"      | `"make strings"`
`[delete ar*ound me!]`     | ds]       | `delete around me!`
`remove <b>HTML t*ags</b>` | dst       | `remove HTML tags`
`'change quot*es'`         | cs'"      | `"change quotes"`
`<b>or tag* types</b>`     | csth1<CR> | `<h1>or tag types</h1>`
`delete(functi*on calls)`  | dsf       | `function calls`

Detailed information on how to use this plugin can be found in [`:h nvim-surround.usage`](https://github.com/kylechui/nvim-surround/blob/main/doc/nvim-surround.txt).

### Treesitter-related

#### Treesitter-textobjects

Syntax aware text-objects, select, move, swap, and peek support.

##### Select

Action | Keymap
---------|----------
Select outer part of an assignment | `va=`
Select inner part of an assignment | `vi=`
Select left hand side of an assignment | `vL=`
Select right hand side of an assignment | `vR=`
Select outer part of a parameter/argument | `vaa`
Select inner part of a parameter/argument | `via`
Select outer part of a conditional | `vai`
Select inner part of a conditional | `vii`
Select outer part of a loop | `val`
Select inner part of a loop | `vil`
Select outer part of a function call | `vaf`
Select inner part of a function call | `vif`
Select outer part of a method/function definition | `vam`
Select inner part of a method/function definition | `vim`
Select outer part of a class | `vac`
Select inner part of a class | `vic`
~~Select language scope~~ | ~~`vaS`~~

:bulb: Pattern is `v<selection_style><node>`.

##### Navigate

Pattern is `<D><L>`.
`<D>` (direction) = `[` for previous and `]` for next.
`<L>`(location) is lower case for start and upper case for end.

An example: `]f` will navigate to **start** (`f` is lower case) of **next** (`]`) **function call** (`f`).

###### Goto next start

Action | Keymap
---------|----------
Next function call start | `]f`
Next method/function def start | `]m`
Next class start | `]c`
Next conditional start | `]i`
Next loop start | `]l`
Next fold | `]Z`

###### Goto next end

Action | Keymap
---------|----------
Next function call end | `]F`
Next method/function def end | `]M`
Next class end | `]C`
Next conditional end | `]I`
Next loop end | `]L`

###### Goto previous start

Action | Keymap
---------|----------
Previous function call start | `[f`
Previous method/function def start | `[m`
Previous class start | `[c`
Previous conditional start | `[i`
Previous loop start | `[l`

###### Goto previous end

Action | Keymap
---------|----------
Previous function call end | `[F`
Previous method/function def end | `[M`
Previous class end | `[C`
Previous conditional end | `[I`
Previous loop end | `[L`

##### Swap

Action | Keymap
---------|----------
Swap with previous function | `<leader>pm`
Swap with previous property | `<leader>p:`
Swap with previous parameter/argument | `<leader>pa`
Swap with next function | `<leader>nm`
Swap with next property | `<leader>n:`
Swap with next parameter/argument | `<leader>na`

##### LSP interop

Action | Keymap
---------|----------
Peek definition of outer class | `<leader>pc`
Peek definition of outer function | `<leader>pf`

#### nvim-treesitter-refactor

Action | Keymap
---------|----------
Smart rename | `grr`
Go to definition | `gd`
List definitions | `gld`
List definitions TOC | `glt`
Go to next usage | <kbd>Shift</kbd> + <kbd>*</kbd>
Go to previous usage | <kbd>Shift</kbd> + <kbd>#</kbd>

#### syntax-tree-surfer

[Syntax Tree Surfer](https://github.com/ziontee113/syntax-tree-surfer) is a plugin for Neovim that helps you surf through your document and move elements around using the Treesitter API.

##### Normal mode

Action | Keymap
---------|----------
Swap node with sibling above | `vu`
Swap node with sibling below | `vd`
Swap master node with above | `vU`
Swap master node with below | `vD`

The actions above are dot-repeatable.

Action | Keymap
---------|----------
Select master node | `vx`
Select current node | `vn`
Hold or swap node | `gh`

Jumps:

Action | Keymap
---------|----------
Jump to any statement | `gja`
Jump to function definition | `gjf`
Jump to variable declaration | `gjv`
Jump to if statement | `gji`
Jump to loop statement | `gjl`

##### Visual mode

Action | Keymap
---------|----------
Select next sibling | `J`
Select previous sibling | `K`
Select parent node | `H`
Select child node | `L`
Swap with next sibling | <kbd>Shift</kbd> + <kbd>j</kbd>
Swap with previous sibling | <kbd>Shift</kbd> + <kbd>k</kbd>

#### nvim-treesitter-textsubjects

Location and syntax aware text objects which *do what you mean*.

Motion | Keymap
---------|----------
Smart select | `.`
Select outer container | `;`
Select inner container | `i;`

These work with `d`, `v`, etc.
