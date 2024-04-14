
# Neovim

<!--toc:start-->
- [Neovim](#neovim)
  - [NvChad](#nvchad)
  - [nvim-tree](#nvim-tree)
  - [Buffers](#buffers)
  - [Windows](#windows)
  - [Tabs](#tabs)
  - [General Neovim info](#general-neovim-info)
    - [Autocommands](#autocommands)
    - [Search](#search)
    - [Find](#find)
    - [Marks](#marks)
  - [Editing](#editing)
    - [Undo/redo](#undoredo)
    - [Delete/replace character](#deletereplace-character)
    - [Delete line](#delete-line)
    - [Yank](#yank)
  - [Motions](#motions)
    - [Word-based](#word-based)
    - [Moving within same line](#moving-within-same-line)
    - [Misc](#misc)
  - [Plugins](#plugins)
    - [Telescope](#telescope)
    - [Outline](#outline)
<!--toc:end-->

## NvChad

Action | Keymap
---------|----------
Change theme | <kbd>Space</kbd> + <kbd>t</kbd> + <kbd>h</kbd>
Cheatsheet | <kbd>Space</kbd> + <kbd>c</kbd> + <kbd>h</kbd>

## nvim-tree

Action | Keymap
---------|----------
Toggle visibility | <kbd>Ctrl</kbd> + <kbd>n</kbd>
Mark file | <kbd>Ctrl</kbd> + <kbd>m</kbd>
Add file | <kbd>Ctrl</kbd> + <kbd>a</kbd>
Close folder | <kbd>h</kbd>
Move down | <kbd>j</kbd>
Move up | <kbd>k</kbd>
Edit or open | <kbd>l</kbd>
VSplit Preview | <kbd>L</kbd>
Collapse all | <kbd>H</kbd>
Toggle hidden files | <kbd>g</kbd> + <kbd>h</kbd>
Copy relative path | <kbd>Y</kbd>
Change root to current working directory | <kbd>Ctrl</kbd> + <kbd>c</kbd>
Change root to node | <kbd>c</kbd> + <kbd>d</kbd>

## Buffers

Action | Keymap/command
---------|----------
Close buffer | <kbd>Space</kbd> + <kbd>x</kbd>
List buffers | `:buffers` / `:ls` / `:Telescope buffers`
Vertical split[^1] | `:vsp` / `:sp`
Next/prev buffer | `:bnext` / `:bprevious`
Get filetype | `:echo &filetype`
Go to next buffer | <kbd>Tab</kbd>
Go to prev. buffer | <kbd>Shift</kbd> + <kbd>Tab</kbd>

[^1]: Opens same buffer in new window.

## Windows

Navigate left/down/up/right: <kbd>Ctrl</kbd> + <kbd>H</kbd>/<kbd>J</kbd>/<kbd>K</kbd>/<kbd>L</kbd>

## Tabs

Action | Keymap/command
---------|----------
List tabs | `:tabs`
Go to previous tab  | <kbd>g</kbd> + <kbd>t</kbd>

## General Neovim info

[Peekaboo](https://github.com/junegunn/vim-peekaboo) extends `"` and @`` in normal mode and <CTRL-R> in insert mode so you can see the contents of the registers.

Open terminal: `:terminal` OR `<leader>` + <kbd>H</kbd> / <kbd>V</kbd> (horizontal / vertical)

Install LSP: `:MasonInstall bash-language-server`

Edit file: `:e <file>`

Read file: `:read <file>`

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

### Search

Action | Keymap/command
---------|----------
Search down | <kbd>/</kbd>
Search up | <kbd>Shift</kbd> + <kbd>/</kbd>
Find word under cursor | <kbd>Shift</kbd> + <kbd>8</kbd>

After entering text for search, press <kbd>Enter</kbd>. All matches will be highlighted.

Type <kbd>N</kbd> to go to the next match or <kbd>n</kbd> to go to the previous match.

Press <kbd>Shift</kbd> + <kbd>q</kbd> to skip next match.

Press <kbd>Esc</kbd> to clear search highlights.

### Find

Action | Keymap/command
---------|----------
Find in directory | `:vim(grep) test *`
Find in directory (recursive) | `:vim(grep) test **`

### Marks

List marks:`:marks`

Use <kbd>m</kbd> + ***capital letter*** to create a mark you can access from a different buffer, e.g. <kbd>m</kbd> + <kbd>A</kbd>.

:bulb: Lower case letters only work within same buffer.

To go back to mark: <kbd>'</kbd> + <kbd>A</kbd>.

### Macros

1. Press <kbd>q</kbd>.
2. Type letter you want, e.g. <kbd>x</kbd>.
3. Make edits, etc.
4. To stop recording, press <kbd>q</kbd> again.

To invoke macro: <kbd>@</kbd> + <kbd>x</kbd>. Also, supports repeat, e.g. `3@x` to execute 3 times.

### Keymaps

<https://www.ejmastnak.com/tutorials/vim-latex/vimscript/>

Vim offers two types of mapping commands:

1. The recursive commands `map`, `nmap`, `imap`, and other *map functions.
2. Their non-recursive equialents `noremap`, `nnoremap`, `inoremap`, etc.

You can use the Vim command `:help {key}<C-D>` to see if `{key}` is used for some built-in or plugin-defined Vim command. For example `:help s<C-D>` shows a multi-column list of all commands beginning with `s`.

`:nmap` will list all mappings defined in normal mode, `:imap` all mappings defined in insert mode, etc.

To filter the search down, you can use `:map <text>` to show a list of all mappings with a `{lhs}` starting with `<text>`, e.g. `:nmap \` will show all normal mode mappings beginning with `\`.

## Visual Block Mode

Press <kbd>Ctrl</kbd> + <kbd>q</kbd> to enter. Select text, e.g. `6j`. Press <kbd>Shift</kbd> + <kbd>i</kbd> to prepend or <kbd>Shift</kbd> + <kbd>a</kbd> to append. When you are done with your changes, press <kbd>Esc</kbd> and changes will be appliied to all lines!

## Editing

To execute a normal mode command from insert mode in Neovim, you can use the `<C-o>` (<kbd>Ctrl</kbd> + <kbd>o</kbd>) shortcut. This allows you to execute a single normal mode command without leaving insert mode. After executing the command, you will return to insert mode.

### Undo/redo

Action | Keymap/command
---------|----------
Undo | <kbd>u</kbd>
Redo |<kbd>Ctrl</kbd> + <kbd>r</kbd>
Undo latest changes on last edited line  | <kbd>Shift</kbd> + <kbd>u</kbd>
Redo latest changes on last edited line |<kbd>Shift</kbd> + <kbd>u</kbd>

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

### Yank

<kbd>y</kbd> is yank operator.

Copy line and line above | <kbd>y</kbd> + <kbd>k</kbd>
Copy current line | <kbd>y</kbd> + <kbd>y</kbd>
Copy from current character to end of line | <kbd>y</kbd> + <kbd>$</kbd>

yk copies current line and above it.

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
Indent the current line | `>>`
Indent the current line and two lines below (same as `2>j`) | `3>>`
Dedent the current line | `<<`
Auto-indent code, use motion commands to indicate the portion to be indented | `=`
Auto-indent current line and 4 lines below | `=4j`
Auto-indent the current paragraph | `=ip`

### Increment

Source: <https://learnbyexample.github.io/tips/vim-tip-1/>

<kbd>Ctrl</kbd> + <kbd>a</kbd> will increment the number under the cursor or the first occurrence of a number to the right of the cursor.

Ctrl<kbd>Ctrl</kbd> + <kbd>x</kbd>  will decrement the number under the cursor or the first occurrence of a number to the right of the cursor

You can also provide a count prefix!

## Motions

In this section, **NBC** = **n**on-**b**lank **c**haracter.

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
Move down half a page by scrolling | <kbd>Ctrl</kbd> + <kbd>d</kbd>
Move up half a page by scrolling | <kbd>Ctrl</kbd> + <kbd>u</kbd>

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
Moves to matching bracket | <kbd>%</kbd>
Moves to line at 40% of total lines | `40%`
Move to middle of window | <kbd>M</kbd>
Move to bottom of window | <kbd>L</kbd>

## Plugins

### Telescope

[Telescope](https://github.com/nvim-telescope/telescope.nvim) is a very powerful plugin to search for items.

- `actions.which_key` (<kbd>Ctrl</kbd> + <kbd>/</kbd> in **insert** or <kbd>?</kbd> in **normal** mode)  shows the mappings for your picker.

- `builtin.grep_string` searches for the string under your cursor or selection in your current working directory.
`builtin.live_grep` search for a string in your current working directory and get results live as you type, respects `.gitignore`. (Requires **ripgrep**)

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

### Outline

[Outline.nvim](https://github.com/hedyhli/outline.nvim) produces a code outline sidebar powered by LSP.

See [here](https://github.com/hedyhli/outline.nvim#default-keymaps) for default keymaps.

Activate via `<leader>` + <kbd>g</kbd> + <kbd>o</kbd>.

### Legendary

[Legendary](https://github.com/mrjones2014/legendary.nvim) provides a legend for your keymaps, commands, and autocmds.

Action | Keymap/command
---------|----------
Legend | `:Legendary`
Search keymaps | `:Legendary keymaps`
Search commands | `:Legendary commands`
Search functions | `:Legendary functions`
Repeat the last item executed via legendary.nvim's finder | `:LegendaryRepeat`

### Diffview

[Diffview](https://github.com/sindrets/diffview.nvim) helps you view diffs for any git revision.

Diff working directory with commit: `:DiffviewOpen HEAD~2`

Diff working directory with commit for file: `:DiffviewOpen HEAD~2 -- .gitignore`

Toggle the file pane: `:DiffviewToggleFiles`

Hide untracked files: `:DiffviewOpen -uno`

Exclude certain paths: `:DiffviewOpen -- :!exclude/this :!and/this`

Run as if git was started in a specific directory: `:DiffviewOpen -C/foo/bar/baz`

Use `[c` and `]c` to jump btw hunks.

### nvim-dap

DAP stands for Debug Adapter Protocol.

Kept same shortcuts as Visual Studio:

Action | Keymap/command
---------|----------
Toggle breakpoint | <kbd>F9</kbd>
Launch debugger | <kbd>F5</kbd>
Step over | <kbd>F10</kbd>
Step into | <kbd>F11</kbd>
Step out | <kbd>Shift</kbd> + <kbd>F11</kbd>

### vim-tmux-navigator

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
