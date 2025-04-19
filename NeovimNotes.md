- [Neovim](#neovim)
  - [NvChad](#nvchad)
  - [Layout](#layout)
    - [Buffers](#buffers)
      - [Deleting buffers](#deleting-buffers)
      - [Executing actions on multiple buffers](#executing-actions-on-multiple-buffers)
    - [Windows](#windows)
    - [Tabs](#tabs)
      - [Create new tab(s)](#create-new-tabs)
    - [Executing command in tab](#executing-command-in-tab)
  - [General Neovim info](#general-neovim-info)
    - [Options](#options)
    - [Autocommands](#autocommands)
      - [Autocommand groups](#autocommand-groups)
      - [Ignore Events](#ignore-events)
    - [Find](#find)
    - [Marks](#marks)
      - [Special Marks](#special-marks)
    - [Registers](#registers)
      - [Usage](#usage)
      - [Expression Register](#expression-register)
      - [Tips](#tips)
    - [Macros](#macros)
      - [Recursive Macros](#recursive-macros)
    - [Keymaps](#keymaps)
    - [Folds](#folds)
    - [Quickfix list](#quickfix-list)
    - [Location list](#location-list)
    - [Highlight groups](#highlight-groups)
    - [Recover from a crash](#recover-from-a-crash)
    - [Executing external commands](#executing-external-commands)
  - [LSP](#lsp)
    - [Completion](#completion)
  - [Visual Mode](#visual-mode)
    - [Visual Block Mode](#visual-block-mode)
    - [Editing](#editing)
  - [Command-line mode](#command-line-mode)
    - [Ranges](#ranges)
    - [Motion, editing](#motion-editing)
    - [History](#history)
  - [Search](#search)
    - [Patterns](#patterns)
      - [Quantifiers](#quantifiers)
      - [Character classes](#character-classes)
      - [Zero-width](#zero-width)
      - [Alternation and grouping](#alternation-and-grouping)
      - [Backreferences](#backreferences)
      - [Lookarounds](#lookarounds)
      - [Atomic grouping](#atomic-grouping)
      - [Case sensitivity](#case-sensitivity)
    - [Normal Mode](#normal-mode)
      - [Advanced usage](#advanced-usage)
      - [Navigation](#navigation)
      - [Clear results](#clear-results)
      - [Delete search results](#delete-search-results)
    - [Command-line Mode](#command-line-mode-1)
      - [global](#global)
      - [substitute](#substitute)
        - [Flags](#flags)
        - [Change case for replacement](#change-case-for-replacement)
        - [Replacement expressions](#replacement-expressions)
      - [Alternate delimiters](#alternate-delimiters)
      - [Search tips](#search-tips)
  - [Motions](#motions)
    - [Jumps and changes](#jumps-and-changes)
    - [Use arrow keys](#use-arrow-keys)
    - [Line-based](#line-based)
    - [Word-based](#word-based)
    - [Moving within same line](#moving-within-same-line)
    - [Moving within screen lines](#moving-within-screen-lines)
    - [Reposition current line](#reposition-current-line)
    - [Moving Vertically](#moving-vertically)
    - [Find characters](#find-characters)
    - [Forcing a motion to be linewise, charwise or blockwise](#forcing-a-motion-to-be-linewise-charwise-or-blockwise)
    - [Misc](#misc)
  - [Editing](#editing-1)
    - [Formatting text](#formatting-text)
    - [Undo/redo](#undoredo)
    - [Insert](#insert)
    - [Delete/replace character](#deletereplace-character)
    - [Delete line](#delete-line)
      - [Delete lines in normal mode](#delete-lines-in-normal-mode)
      - [Delete lines in command-line mode](#delete-lines-in-command-line-mode)
    - [Delete text in INSERT mode](#delete-text-in-insert-mode)
    - [Yank](#yank)
    - [Paste](#paste)
    - [Tuck](#tuck)
    - [Comment](#comment)
    - [Indent](#indent)
    - [Filter](#filter)
    - [Sort Lines](#sort-lines)
      - [Options](#options-1)
    - [Join Lines](#join-lines)
    - [Add empty lines](#add-empty-lines)
    - [Moving lines](#moving-lines)
    - [Abbreviations](#abbreviations)
    - [Digraphs](#digraphs)
    - [Increment](#increment)
    - [Editing with motion](#editing-with-motion)
    - [Text object selection](#text-object-selection)
    - [Editing with Ex commands](#editing-with-ex-commands)
    - [Change case](#change-case)
    - [Editing line filtered by pattern](#editing-line-filtered-by-pattern)
    - [Exiting insert mode](#exiting-insert-mode)
  - [Completion and snippets](#completion-and-snippets)
    - [Special completions](#special-completions)
  - [Recipes + FAQ](#recipes--faq)
    - [Enter Special characters](#enter-special-characters)
    - [Reverse line order](#reverse-line-order)
    - [Run code block in help buffer](#run-code-block-in-help-buffer)
    - [Select lines](#select-lines)
    - [How do you check if Neovim is built with luajit?](#how-do-you-check-if-neovim-is-built-with-luajit)
    - [Open file under cursor](#open-file-under-cursor)
    - [Toggle line numbers](#toggle-line-numbers)
    - [Swap lines](#swap-lines)
    - [Multi-file find and replace](#multi-file-find-and-replace)
    - [Where are Treesitter parsers located?](#where-are-treesitter-parsers-located)
    - [Open/View URLs](#openview-urls)
    - [Copy text to mark location](#copy-text-to-mark-location)
    - [Check key maps](#check-key-maps)
    - [Increment selection with search iterator](#increment-selection-with-search-iterator)
    - [Add a string at a line number in multiple files](#add-a-string-at-a-line-number-in-multiple-files)
    - [Suspend Neovim](#suspend-neovim)
    - [Find and replace in multiple files at once](#find-and-replace-in-multiple-files-at-once)
    - [Create auto-increment sequence](#create-auto-increment-sequence)
    - [Where does `mason` install binaries?](#where-does-mason-install-binaries)
    - [Copy text between brackets on multiple lines](#copy-text-between-brackets-on-multiple-lines)
    - [Include/exclude text using external command](#includeexclude-text-using-external-command)
    - [Get list of local files in insert mode](#get-list-of-local-files-in-insert-mode)
    - [Use normal mode commands in insert mode](#use-normal-mode-commands-in-insert-mode)
    - [Go backwards/forwards in time](#go-backwardsforwards-in-time)
    - [Filter lines using external program](#filter-lines-using-external-program)
    - [Search help](#search-help)
  - [Plugins](#plugins)
    - [Utility](#utility)
      - [Toggleterm](#toggleterm)
        - [Sending lines to the terminal](#sending-lines-to-the-terminal)
      - [nvim-tree](#nvim-tree)
      - [Telescope](#telescope)
      - [vim-tmux-navigator](#vim-tmux-navigator)
      - [nvim-highlight-colors](#nvim-highlight-colors)
      - [screenkey](#screenkey)
      - [Snacks](#snacks)
      - [Toggle](#toggle)
      - [yazi](#yazi)
    - [UI](#ui)
      - [rainbow-delimiters](#rainbow-delimiters)
      - [hlchunk](#hlchunk)
      - [lualine](#lualine)
        - [Lualine Layout](#lualine-layout)
      - [bufferline](#bufferline)
      - [dropbar](#dropbar)
      - [nvim-ufo](#nvim-ufo)
    - [AI](#ai)
      - [copilot.vim](#copilotvim)
      - [codecompanion](#codecompanion)
        - [Adapters](#adapters)
        - [Chat Buffer](#chat-buffer)
        - [Inline Assistant](#inline-assistant)
        - [Prompts](#prompts)
        - [Workflows](#workflows)
        - [Workspaces](#workspaces)
    - [Coding](#coding)
      - [neominimap](#neominimap)
      - [Outline](#outline)
        - [Commands](#commands)
      - [Diffview](#diffview)
      - [nvim-dap](#nvim-dap)
      - [code\_runner](#code_runner)
      - [neotest](#neotest)
    - [Language-specific](#language-specific)
      - [R](#r)
        - [Settings](#settings)
        - [Commands](#commands-1)
      - [C#](#c)
    - [Editing](#editing-2)
      - [nvim-autopairs](#nvim-autopairs)
      - [mini.move](#minimove)
      - [nvim-spider](#nvim-spider)
      - [nvim-surround](#nvim-surround)
        - [More Mappings](#more-mappings)
        - [Default pairs](#default-pairs)
        - [Aliases](#aliases)
        - [Cursor](#cursor)
      - [multicursors](#multicursors)
        - [Extend mode](#extend-mode)
      - [flash](#flash)
      - [grug-far](#grug-far)
      - [undo-glow.nvim](#undo-glownvim)
      - [spellwarn.nvim](#spellwarnnvim)
      - [precognition.nvim](#precognitionnvim)
      - [nvim-various-textobjs](#nvim-various-textobjs)
    - [LSP-related](#lsp-related)
      - [garbage-day.nvim](#garbage-daynvim)
      - [lsplinks.nvim](#lsplinksnvim)
    - [Treesitter-related](#treesitter-related)
      - [nvim-treesitter](#nvim-treesitter)
      - [nvim-treesitter-context](#nvim-treesitter-context)
      - [treesitter-textobjects](#treesitter-textobjects)
        - [Select](#select)
        - [Navigate](#navigate)
          - [Goto next start](#goto-next-start)
          - [Goto next end](#goto-next-end)
          - [Goto previous start](#goto-previous-start)
          - [Goto previous end](#goto-previous-end)
        - [Swap](#swap)
        - [LSP interop](#lsp-interop)
      - [nvim-treesitter-refactor](#nvim-treesitter-refactor)
      - [nvim-tree-pairs](#nvim-tree-pairs)
      - [treewalker.nvim](#treewalkernvim)
    - [Markdown](#markdown)
      - [markdown.nvim](#markdownnvim)
        - [Inline-style](#inline-style)
        - [Links](#links)
        - [Table of contents](#table-of-contents)
        - [Lists](#lists)
      - [Markdown Preview](#markdown-preview)
      - [render-markdown.nvim](#render-markdownnvim)
    - [VimTex](#vimtex)
      - [Configuration](#configuration)
      - [Basic Usage](#basic-usage)
      - [Motions and text objects](#motions-and-text-objects)
    - [Linting + Formatting](#linting--formatting)
      - [conform](#conform)
      - [nvim-lint](#nvim-lint)
    - [Web](#web)
      - [urlview](#urlview)
      - [rest](#rest)

# Neovim

These notes are based on my setup using NvChad. My Neovim config files can be found [here](https://github.com/AjayKMehta/WSL/tree/main/home/dot_config/nvim).

## NvChad

  Action       | Keymap
 --------------|------------------------------------------------
  Change theme | <kbd>Space</kbd> + <kbd>t</kbd> + <kbd>h</kbd>
  Cheatsheet   | <kbd>Space</kbd> + <kbd>c</kbd> + <kbd>h</kbd>

## Layout

To seamlessly navigate left/down/up/right whether Tmux or Nvim buffer/window: <kbd>Ctrl</kbd> + <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd>.

### Buffers

A buffer is essentially the in-memory representation of a file.

 Action                    | Keymap/command
 --------------------------|--------------------------------------------------------------------
 Close buffer              | <kbd>Space</kbd> + <kbd>x</kbd>
 New buffer                | `<leader>bb` OR `:enew`
 Edit `file` in new buffer | `:edit <file>`
 List buffers              | `:buffers` OR `:ls` OR `<leader>sB`
 Go to next buffer         | `:bnext` OR `:bn` OR <kbd>Tab</kbd>
 Go to previous buffer     | `:bprevious` OR `:bp` OR <kbd>Shift</kbd> + <kbd>Tab</kbd> OR <kbd>Ctrl</kbd> + <kbd>6</kbd>
 Get filetype              | `:echo &filetype` OR `:set ft?`
 Go to first buffer        | `:bfirst`
 Go to last buffer         | `:blast`
 Edit buffer               | `:buffer <bufnr>`
 Change file format        | `:set fileformat=<fmt>` where `<fmt>` is `unix`, `mac` or `dos`.

 To run a command on every buffer, use `:bufdo <command>`, e.g. `:bufdo normal @a` will run the macro in register `a` on every buffer!
 To create a buffer, use `:badd <file>`, e.g. `:badd .gitconfig`.

 To include unlisted buffers when listing buffers: `:buffers!`.

> [!NOTE]
> **New in Neovim 0.11:** Use `[b`, `]b`, `[B`, `]B` to navigate through the buffer list.

#### Deleting buffers

There are 2 commands:

1. `:bdelete` makes the buffer unlisted but doesn't purge marks, etc.
2. `:bwipeout` removes everything associated with the buffer.

For more information, see this [link](https://vi.stackexchange.com/questions/2212/what-bad-things-can-happen-if-i-use-bwipeout).

#### Executing actions on multiple buffers

You can execute actions on each buffer in the buffer list using `:bufdo`!

[An example](https://neovim.io/doc/user/windows.html#_8.-do-a-command-in-all-buffers-or-windows):

```vim
:bufdo set fileencoding= | update
```

This resets the file encoding in each buffer and writes it if the buffer is changed.

The argument list is used for working on a subset of the buffer list.

Suppose you want to find and replace in C# files. First, add the files to the argument list:

```vim
:args *.cs
```

To add or remove items from the list, use `:argadd` or `:argdel`.

Now, you can perform a
substitution command on all these files:

```vim
:argdo %s/\<x_cnt\>/x_counter/ge | update
```

### Windows

A window is a viewport onto a buffer. Different windows correspond to one or more buffers.

> [!TIP]
> Multiple windows displaying different parts of the same buffer is useful for comparing two sections of a file side by side.

Action | Keymap/command
---------|----------
New window | `:new`
New vertical window | `:vertical new`
Split[^split] | `:sp[lit]` OR <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>s</kbd>
Vertical split[^vsplit] | `:vsp` OR <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>v</kbd>
Switch window | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>w</kbd>
Close window | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>q</kbd> OR `:close`
Close other windows | `:only`
Close floating window | `:fclose`
Swap window with next | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>x</kbd>
Split horizontally and edit a new file | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>n</kbd>
Resize windows to fit with the same size | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>=</kbd>
Decrease window height | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>-</kbd>
Increase window height | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>+</kbd>
Maximize >window height | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>_</kbd>
Decrease window width | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd><</kbd>
Increase window width | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>></kbd>

> [!TIP]
> All the commands to change window height or width take a `count`, e.g. `4<C-w>+` increase windows's height by 4 lines while `10<C-w><` decreases window's width by 10 columns.

Navigate to left/below/above/right window: <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd>.

[^split]: Opens same buffer in new window below current window. If you pass `<file>`, then it will open that.

[^vsplit]: Opens same buffer in new window to the right of current window.

### Tabs

For more info, see `:help tab-page`.

Tab pages are a collection of windows.

 Action                                                   | Keymap/command
----------------------------------------------------------|----------------------------------------
 List tabs                                                | `:tabs`
 Open a new tab page and edit `{file}`, like with `:find` | `:tabfind {file}`
 Go to previous tab                                       | `:tabprevious` OR `:tabp` OR `gT`
 Go to next tab                                           | `:tabnext` OR `:tabn` OR `gt`
 Go to first tab                                          | `:tabfirst` OR `:tabrewind` OR `:tabr` OR `1gT`
 Go to last tab                                           | `:tablast` OR `:tabl`
 Edit file in new tab                                     | `:[count]tabe[dit] <file>`
 Close current tab page                                   | `:tabclose` OR `:tabc`
 Close all tabs except current | `:tabonly` OR `:tabo`

#### Create new tab(s)

Action | Keymap/command
---------|----------
Create tabpage after the current one |      `:tabnew` OR  `:.tabnew`
Create tabpage after the next one | `:+tabnew`
Create tabpage before the current | `:-tabnew`
Create tabpage before the first | `:0tabnew`
Create tabpage after the last | `:$tabnew`

### Executing command in tab

`:[count]tab {cmd}` executes `{cmd}` and when it opens a new window, opens a new tab page instead.

Examples: `:tab vsplit`, `:tab help`.

## General Neovim info

Get current directory: `:pwd`.
You can change current directory for everything, current window or tab: `cd`/`lcd`/`tcd`.

Open terminal: `:terminal` (OR `:ToggleTerm` if [Toggleterm](#toggleterm) is installed). To navigate between shell prompts, use `[[` and `]]`.

Get location info: `<C-g>`.

Edit file: `:e <file>`

Read file: `:read <file>` (puts `<file>` contents after current line)

Read external command output: `:read !<cmd>`, e.g. `:read !ls`.

Write file: `:write` or `:w`. Can specify fillename if new or saving as new file.

Write lines to a file: `:.,$write test` writes text from current line onwards to file named `test`. If the file already exists, you can use `write!` to overwrite or you will get an error.

Save as: `:saveas <new_name>`.

Write read-only file: `:w!`

Quit all and confirm for unsaved changes: `:confirm qa`.

Quit and don't save changes: `:q!`.
Quit and save all: `:wqa`.

Save and close: `ZZ`
Close without saving: `ZQ`

Append to file: `:w >> <file>`.

Save all buffers: `:wall` or `wa`

Run health checks: `:checkhealth`.

[Close `nvterm`](https://github.com/NvChad/NvChad/issues/2704#issuecomment-1975743935
): <kbd>Ctrl</kbd> + <kbd>x</kbd>,`leader` + <kbd>x</kbd>

### Options

The table below assumes an option named `<option>`:

Action | Command
---------|----------
Set option to `<value>` | `:set <option>=<value>`
Unset the option | `:set no<option>`
Toggle the option | `:set <option>!`
Append or add value | `:set <option>+=<value>`
Remove or subtract value | `:set <option>-=<value>`
Set to default value | `:set <option>&`
List options | `:options`
Show all options that differ from their default value.[^t]

[^t]:ff

For more information, refer to [online help](https://neovim.io/doc/user/options.html#_1.-setting-options).

### Autocommands

Autocommands let you respond to events like opening a buffer.

Refer to `:help autocmd` for more information.

Action | Keymap/command
---------|----------
List autocommands | `:au[tocmd]`
List autocommands for group `<group>` | `:au[tocmd] <group>`
Delete autocommands for event `<event>` and pattern `<pattern>` | `:au[tocmd]! [group] <event> <pattern>`
Delete autocommands for group `<group>` | `:au[tocmd]! <group>`
Add autocommand | `:au[tocmd] [group] <event> <pattern> <cmd>`

See [here](https://thevaluable.dev/vim-expert/#autocommands) for more information.

#### Autocommand groups

When you create an autocommand as we did above, it's added automatically to a default autocommand group without a name.

Autocommand groups are like namespaces for autocommands.

List autocommand groups: `:augroup`.

Create autocommand group: `:augroup <name>` ( OR `:aug <name>`). All autocommands created after this command will be part of this group. To stop adding autocommands to the group, use `:augroup END`.

You can also do something like this to create a group with command(s):

`:augroup mine | au BufRead * set tw=70 | augroup END`

Delete autocommand group `<name>`: `:augroup! <name>` OR `:aug! <name>`

See [here](https://thevaluable.dev/vim-expert/#autocommand-groups) for more information.

#### Ignore Events

Ignore events: `:set ei=all`.

Don't forget to reset: `:set ei=""`.

Can also ignore for certain events: `:set ei=CursorHold`

If you want to ignore the event `BufWrite` when running the command `:w`, you can run the following:

`:noautocmd w`

### Find

Action | Keymap/command
---------|----------
Find in directory | `:vim(grep) test *`
Find in directory (recursive) | `:vim(grep) test **`

### Marks

Marks are like bookmarks in your favorite IDE but more powerful.

Action | Keymap/command
---------|----------
List marks | `:marks`  OR `<leader>sm` (courtesy of **snacks.nvim**)
Create mark `a` | `ma`
Go to mark `A` | <kbd>`</kbd> + <kbd>A</kbd>.
Go to first non-blank character of line containing mark `A` | <kbd>'</kbd> + <kbd>A</kbd>.
Go to mark `A` without changing jump list | <kbd>g</kbd> + <kbd>`</kbd> + <kbd>A</kbd>
Go to first non-blank character of line containing mark `A` without changing jump list |  <kbd>g</kbd> + <kbd>'</kbd> + <kbd>A</kbd>
Delete mark `c` | `:delmarks c` OR `:delm c`
Delete marks in range`a-z` | `:delmarks!`

> [!NOTE]
> Use <kbd>m</kbd> + ***capital letter*** to create a mark you can access from a different buffer, e.g. <kbd>m</kbd> + <kbd>A</kbd>.
> Lower case letters only work within same buffer.

Marks are useful not only for navigation but also for editing:

For example, to delete from the current character to mark `a` position: ``d`a``.

#### Special Marks

 Mark    | Location
---------|-----------------------------------------------------------------------
 `` ` `` | Position before the latest jump.
 `.`     | Position of the last change in current buffer
 `[`     | First character of the previously changed, deleted, or yanked content
 `]`     | Last character of the previously changed, deleted, or yanked content  
 `^`     | Position where you last used Insert mode.
 `"`     | Position you were at when you last closed the file.

You can go to these marks using `` ` `` or go to first non-blank character in containing line using `'`, e.g. `'"` goes to first non-blank character of line you were on when you last closed the file.

Neovim creates a mark each time you exit.  The last one is `0`, second last is `1` (this goes all the way to `9`). So, `'0` takes you to the place where you were when you last exited Neovim!

### Registers

Registers are like clipboards but again more powerful 😀

There are ten types of registers:

1. `"` is the default register. If no register is specified, this register is used. It is **always populated** unless you specify `_` register, e.g. `"_dd` when deleting a line.
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

`"bp` pastes content from `b` register.

In INSERT mode or COMMAND LINE mode, you can use `CTRL+R <reg>` to put the content of register `<reg>` in your current buffer.

#### [Expression Register](https://thevaluable.dev/vim-advanced/#the-insane-expression-register)

`=` register is for expressions.

Try this:

- Switch to INSERT mode and hit the keystroke `CTRL+r =`. You'll move to Vim's command-line.
- From there, you can type any Vimscript expression you want, like `system("ls")`.
- Hit `ENTER` to run the expression, and you'll see the output of the shell command `ls` directly inserted in your buffer!

#### Tips

- You can write to a register with a `:let` command, e.g.`:let @/ = "the"`.

- Use `:let @a=''` to clear register `a`.

- Use `:reg(isters)` to display register contents. `:reg ab` will display contents of registers `a` and `b`.

- [Peekaboo](https://github.com/junegunn/vim-peekaboo) extends `"` and `@` in normal mode and <kbd>Ctrl</kbd> + <kbd>R</kbd> in insert mode so you can see the contents of the registers.

- Clear named register: Write an empty macro, e.g. `qaq` to clear `a` register.

- [Clear number registers](https://www.reddit.com/r/vim/comments/ugocqa/comment/i70w02c/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button): `call range(1,9)->map('setreg(v:val,"")')`

### Macros

1. Press <kbd>q</kbd>.
2. Type letter you want, e.g. <kbd>x</kbd>. If you want to append to an existing macro, use an uppercase letter instead.
3. Make edits, etc.
4. To stop recording, press <kbd>q</kbd> again.

To invoke macro: <kbd>@</kbd> + <kbd>x</kbd>.

Also, supports repeat, e.g. `3@x` to execute 3 times.

To invoke previously-played macro: <kbd>@</kbd> + <kbd>@</kbd>.

To run macro on visual selection:  `:'<,'> norm @x`.

To modify macro, edit register's contents:

1. Paste register contents: `"wp`.
2. Make edits. To enter special characters (in insert mode) like <kbd>Esc</kbd>, press <kbd>Ctrl</kbd> + <kbd>v</kbd> then the character. In this case, this will lead to `^[` for <kbd>Esc</kbd>.
3. Place cursor on first character and `"wy`.

#### Recursive Macros

Macros can be recursive!

Here's an example: `qr0f:lr^M>>o^[j@rq`. This creates a macro in register `r` that does the following:

1. Finds the first instance of `:` in the line.
2. Moves right by 1 character (`l`)
3. Replaces current character with new line (`r^M`)
4. Indents (`>>`)
5. Adds new line via `o`
6. Exits insert mode (<kbd>Esc</kbd>)
7. Move down 1 line (`j`)
8. Finally recurses (`@r`).

> [!WARNING]
> Register should be empty before you record macro to avoid unforeseen problems.

### Keymaps

See <https://www.ejmastnak.com/tutorials/vim-latex/vimscript/>.

Vim offers two types of mapping commands:

1. The recursive commands `map`, `nmap`, `imap`, and other *map functions.

2. Their non-recursive equivalents `noremap`, `nnoremap`, `inoremap`, etc.

To illustrate the difference between the two, consider this scenario whwere you want to remap `w` to `dd` and `v` to `w`.

If you use:

```text
:nmap w dd
:nmap v w
```

Then `v` will behave the same as `dd` since `w` is mapped to `dd` now.

If you use:

```text
:nnoremap w dd
:nnoremap v w
```

`w` will behave the same as in the previous example and delete the current line when invoked but `v` will behave like `w`'s original command, i.e. move to next word.

You can use the Vim command `:help {key}<C-D>` to see if `{key}` is used for some built-in or plugin-defined Vim command. For example `:help s<C-D>` shows a multi-column list of all commands beginning with `s`.

`:nmap` will list all mappings defined in normal mode, `:imap` all mappings defined in insert mode, etc.

To filter the search down, you can use `:map <text>` to show a list of all mappings with a `{lhs}` starting with `<text>`, e.g. `:nmap \` will show all normal mode mappings beginning with `\`.

### Folds

Set method: `:set foldmethod=<method>`. `<method>` can be `manual`, `indent`, `marker`.

Get method: `:set foldmethod`.

Get fold markers: `:set foldmarker`.

Action | Keymap/command
---------|----------
Toggle fold under cursor | `za`
Toggle all folds under cursor | `zA`
Close fold under cursor | `zc` OR `:foldclose` OR `:foldc`
Close all folds under cursor | `zC` OR `:foldclose!` OR `:foldc!`
Fold more | `zm`
Close all folds | `zM`
Open fold under cursor | `zo` OR `:foldopen` OR `:foldo`
Open all folds under cursor | `zO` OR `:foldopen!` OR `:foldo!`
Fold less | `zr`
Open all folds | `zR`
Create fold | `zf`
Delete fold | `zd`
Delete all folds under cursor | `zD`
**Go to next closed fold** | `]z`
**Go to previous closed fold** | `[z`
**Peek fold** | `zK`
Delete all folds in file | `zE`
Move downward to the start of the next fold | `zj`
Move upward to the start of the previous fold | `zk`

Actions in bold are courtesy of [`nim-ufo.nvim` plugin](#nvim-ufo).

### Quickfix list

See `:help quickfix` and `:help quickfix-window`.

Action | Keymap/command
---------|----------
Open window | `:cope[n]`
Trouble quickfix list (must have `trouble.nvim` installed) | `<leader>tQ`
Display all valid entries of the current quickfix list | `:clist` OR `:cl`
Close window | `:cclose`
Display first entry | `:cfirst`
Diisplay last entry | `:clast`
Display next entry | `:cnext` OR `:cn`
Display previous entry | `:cprev` OR `:cp`
Display 2nd entry | `:cc 2`
Open older lists | `:colder`
Open newer lists | `:cnewer`
Operate on each QuickFix list entry | `:cdo <action>`
Operate on each QuickFix file | `:cfdo <action>`

> [!NOTE]
> **New in Neovim 0.11:** Use `[q`, `]q`, `[Q`, `]Q`, `[<C-Q>`, `]<C-Q>` to navigate through the quickfix list.

Replace `client` with `client_id` for every QF entry: `:cdo s/client/client_id/g`.

Send diagnostics to QuickFix list: `:lua vim.diagnostic.setqflist()`.

`cexpr` (OR `cex`) and `caddexpr` are very powerful commands:

  - `:cexpr <cmd>` executes a command `<cmd>` and populates the QuickFix list with its results.
  - `:caddexpr <cmd>` appends the command's results to QuickFix list.  

Install `kevinhwang91/nvim-bqf` for a better quickfix experience.

Refer to [this](https://github.com/kevinhwang91/nvim-bqf#function-table) for hotkeys for `nvim-bqf`

If you want to save the list for future reference: `:w my_qf.txt`.

Good read: [Examples.md](https://gist.github.com/Integralist/8d01300efcd2006c69e8b9492c0eada8).

### Location list

A location list is similar to a quickfix list, except that it is local to a window.

Action | Keymap/command
---------|----------
Display all valid entries | `:llist`
Move to entry `<number>` | `:ll <numberer>`
Move to next entry | `:lnext`

### Highlight groups

Highlight Groups contain a variety of display properties. These properties include the hex codes/names for the foreground & background color, as well as whether the text should be bold, etc.

See [`:h nvim_set_hl()`](https://neovim.io/doc/user/api.html#nvim_set_hl()) for a complete list of properties and `:h gui-colors` for an incomplete list of color names.
Use `:highlight` to see all the Highlight Groups.

To create or update a highlight group: `vim.api.nvim_set_hl(0, 'Normal', { bg = "#ff0000" })`. Here, `0` stands for global namespace. Namespaces are used for buffer highlights and virtual text.

If you only want to create it if it does not already exist, then use `default = true` :`vim.api.nvim_set_hl(0, 'Normal', { bg = "#ff0000", default = true })`.

### Recover from a crash

Go to the directory the file was in and execute `nvim -r` to list the swap files.

These swap files are located in `~/.local/state/nvim/swap/`.

See [here](https://neovim.io/doc/user/usr_11.html#usr_11.txt) for more details.

### [Executing external commands](https://youtu.be/STSZt2c1rSA?feature=shared)

- `:!ls` displays results of `ls` in separate window.
- `:.!date` replaces current line with output of `date` command.
- `:%! sort` sort all lines.
- `:3,5! sort` sort lines 3-5.
- `:r! date` insert output of command below the current line.
- `:r <file>` insert contents of `<file>` at the current line.
- `:!!` repeats the last command executed.
- `:read!!` OR `:r!!` repeats the last command executed and inserts output in current buffer.

> [!NOTE]
> `:r!` reads the results of a command.
>
> It **does not** handle vim commands. For that reason, I created a user command that dumps the results of a command at current cursor position (based on [this](https://www.reddit.com/r/neovim/comments/1ixsk40/comment/meqnilu/)).

[Advanced example](https://stackoverflow.com/a/51091200/781045):

Find all lines containing `print` and save to new buffer: `:vnew | 0r!grep print #`.

## LSP

Install LSP (requires `mason.nvim`): `:MasonInstall bash-language-server`

Action | Keymap/command
---------|----------
Go to definition | <kbd>Ctrl</kbd> + <kbd>]</kbd> OR `<leader>ld` OR <kbd>F12</kbd>
Go to declaration | `<leader>lD`
Go to implementation | `gri`
Show references | `grr`
Show document symbols | `gO`
Displays hover information about the symbol under the cursor | `K`
Code Action | `gra`
Rename | `grn`
Go to previous diagnostic in current buffer | `[d` OR `:lua vim.diagnostic.goto_prev()`
Go to next diagnostic in current buffer | `]d` OR `:lua vim.diagnostic.goto_next()`
Go to previous error in current buffer | `[e`
Go to next error in current buffer | `]e`
Go to first diagnostic in current buffer | `[D`
Go to last diagnostic in current buffer | `]D`
Show diagnotics under the cursor | `<C-w>d` or `<C-w><c-d>`
Show signature help (Insert and Select mode) | `<C-s>`
Show signature help (Normal mode) | `<leader>lh`

To learn what capabilities are available you can run the following command in a buffer with a started LSP client:

```vim
:lua =vim.lsp.get_clients()[1].server_capabilities
```

List enabled LSPs:

```lua
for k, v in pairs(vim.lsp._enabled_configs) do
    vim.print(k)
end
```

> [!TIP]
> Useful video to explain how code formatting works: [Code Formatting made easy](https://www.youtube.com/watch?v=mEqqkHLhlGY).

### Completion

If a LSP supports text completion, press `<C-x><C-o>` in INSERT mode to trigger completion.

To select an item from the menu, press `<C-Y>`.

> [!TIP]
> If completion does not work, check that [`omnifunc`](https://neovim.io/doc/user/options.html#%27omnifunc%27) is set to "v:lua.vim.lsp.omnifunc": `:verbose set omnifunc?`

## Visual Mode

`v` selects the current character. Use any motion to extend selection, e.g. `ve` or `v$`.

Use `V` to select the current line. This can be extended with motion or count, e.g.`Vgg` selects from current line to start of file and `5V` selects 5 lines starting from current line.

`gv` selects the previously highlighted visual area[^gv].

[^gv]: This works in normal mode too.

Use `o` to move the cursor to the diagonally opposite corner of the visual selection.

`Q` and `@` in Visual mode will execute the last recorded/executed macro for all visually selected lines.

### Visual Block Mode

Press <kbd>Ctrl</kbd> + <kbd>q</kbd> or <kbd>Ctrl</kbd> + <kbd>v</kbd>[^vbm] to enter.

Select a region of text, e.g. `2lj` selects a region with 3 columns and 2 rows.

Press <kbd>Shift</kbd> + <kbd>i</kbd> to prepend or <kbd>Shift</kbd> + <kbd>a</kbd> to
append. To append at the end of line: `$A`.

To delete and insert on each line: `c`. To delete and insert from the left edge of the block to the end of each line: `C`.

When you are done with your changes, press <kbd>Esc</kbd> and changes will be applied to all lines!

[^vbm]: If using Windows Terminal, make sure to disable default binding for <kbd>Ctrl</kbd> + <kbd>v</kbd>.

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

`R` deletes selected lines and switches to INSERT mode.

`U` makes selection upper-case.

Delete in selection everything starting from `,` (included): `:'<,'> norm f,D`.

Delete in selection everything before `{` (excluded): `:'<,'>norm dt{`.

> [!NOTE]
> `'<,'>` is a special range based on the selection made in visual mode.
>
> `'<` is a mark representing the first line selected and `'>` is a mark representing the last line.

> [!TIP]
> If you accidentally exit Visual mode before entering Command-line mode, you can use `*` as a shorthand for `'<,'>`. See [`:h :star`](https://neovim.io/doc/user/cmdline.html#%3Astar).

## Command-line mode

You can use normal mode commands in command-line mode via `:norm`, e.g. `:norm dd` to delete current line.

If you're writing a plugin, best to use `:norm!` as it uses default mappings not the ones your users set up.

### Ranges

Commands that accept a range have `[range]` in front of their name in Vim help.

Examples of ranges:

- `%` refers to whole file
- `1,3` refers to lines 1-3
- `$` refers to the last line of buffer
- `*` refers to last selection you made in visual mode.
- `'a,'b` refers to range between mark `'a` and mark `'b`.
- `?^Chapter?,/^Chapter` refers to range between previous occurrence of `^Chapter` and next occurence of `^Chapter`.

### Motion, editing

 Action                                     | Keymap/command
--------------------------------------------|------------------------------------------------
 Go to start                                | <kbd>Ctrl</kbd> + <kbd>b</kbd> OR <kbd>HOME</kbd>
 Go to end                                  | <kbd>Ctrl</kbd> + <kbd>e</kbd> OR <kbd>END</kbd>
 Go left one character                      | <kbd>←</kbd>
 Go right one character                     | <kbd>→</kbd>
 Go left one word                           | <kbd>Ctrl</kbd> + <kbd>←</kbd>
 Go right one word                          | <kbd>Ctrl</kbd> + <kbd>→</kbd>
 Erase line before cursor                   | <kbd>Ctrl</kbd> + <kbd>u</kbd>
 Paste register `a` contents                | <kbd>Ctrl</kbd> + <kbd>r</kbd> followed by `a`
 Show completions based on typed characters | <kbd>Ctrl</kbd> + <kbd>d</kbd>
 Edit commands in normal mode               | <kbd>Ctrl</kbd> + <kbd>f</kbd>
 **Yank comand-line text**                  | <kbd>Ctrl</kbd> + <kbd>y</kbd>
 Delete word                                | <kbd>Ctrl</kbd> + <kbd>w</kbd>
 Delete all text                            | <kbd>Ctrl</kbd> + <kbd>u</kbd>

Actions in **bold** are custom actions I added.

If you are typing in the command line and you have multiple completion options, then `<C-L>` will select the longest unambiguous string.

### History

Use `↑` and `↓` to navigate history.

`q:` opens window for `:` commands.
View history of commands: `:history`.

`q/` and `q?` open window for search patterns.
<kbd>Ctrl</kbd> + <kbd>f</kbd> opens appropriate history window.

Press <kbd>Enter</kbd> to select entry from history window.

## Search

### Patterns

See `:help pattern`.

Just like regex, `\t` matches tab, `\r` matches carriage return and `\n` matches EOL.

#### Quantifiers

Quantifiers are same as you would expect except they are prefixed by `\`: `\+` instead of `+`, `\?` (OR `\=`) for `?`, `\{m, n}` instead of `{m, n}`.

`:%s/^\s\+` will match all lines beginning with whitespace.

Non-greedy quantifiers match as minimally as possible:

`\{-}` matches zero or more times, e.g. `at\(t\)\{-}e` will match `date` and `pattern`.
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

#### Zero-width

This information is adapted from [here](https://thevaluable.dev/vim-adept/#zero-width).

`\<` matches the beginning of a word.
`\>` matches the end of a word.
`\%<` matches the beginning of the file.
`\%>` matches the end of the file.
`\%V` matches inside the visual selection.

You can even use marks:

`\%<'a` matches before the position of mark `a`.
`\%>'a` matches after the position of mark `a`.

#### Alternation and grouping

Need to use `\|` instead of `|`. So, instead of `\d|\s`, write `\d\|\s`.

For grouping, use `\(` and `\)`, e.g. `\(bar\|cat\)`

For non-capturing group: `\%(pattern\)`

#### Backreferences

In `:s/\(\d\w\)\1`, `\1` refers to the first capture group.

`&` and `\0` refer to the entire match.

Another example to replace names like `Smith, John` with `John Smith`: `:%s/\([^,]*\), \(.*\)/\2 \1/`.

#### Lookarounds

Syntax is different: `\d\@!` vs `(?!\d)` and `\(pat.*\)\@<=` vs `(?<=pat.*)`.

> [!TIP]
> Notice that `\@` always follows the pattern atom.

Negative lookahead: `ice\d\@!` matches `ice` or `iced` but not `ice1`.

Negative lookbehind: `s\@<!c` matches `cool` but not `school`.

Positive lookahead: `ice\d\@=` matches `ice1` but not `ice`.

Positive lookbehind: `s\@<=c` matches `school` but not `cool`.

#### Atomic grouping

This differs from a regular group in that, once the pattern is matched, no backtracking is allowed.

Syntax: `\(\w+\)\@>\d` vs `(?>\w+)\d`

Example: `:s/\(0*\)\@>\d{3,}/(&)/g` will surround numbers >= 100 with brackets ignoring any leading zeros.

#### Case sensitivity

`\C` to make case-sensitive.
`\c` to make case-insensitive.

`/\cdog` matches `dog` and `Dog`.

### Normal Mode

 Action                                           | Keymap/command
--------------------------------------------------|----------------
 Search forward                                   | `/`
 Search backwards                                 | `?`
 Find word under cursor                           | `*`
 Find word under cursor (backwards)               | `#`
 Find word under cursor (partial match)           | `g*`
 Find word under cursor (backwards partial match) | `g#`
 Repeat the last substitute, without its range and its flags | `&`
 Repeat the last substitute with the same flags, and replace its pattern with the last *search* pattern | `g&`

#### Advanced usage

You can supply an offset: `/[pattern]/[offset]<CR>`.

- `/[pattern]/s` places cursor at the start of the match.
- `/[pattern]/s+2` places cursor 2 characters after the start of the match.
- `/[pattern]/s-3` places cursor 3 characters before the start of the match.
- `/[pattern]/e` places cursor at the end of the match.
- `/[pattern]/e+2` and `/[pattern]/e-4` behave analogously to commands for start of match.
- `/[pattern]/+2` and `/[pattern]/-4` places cursor 2 lines below and 4 lines above match respectively.

#### Navigation

After entering text for search, press <kbd>Enter</kbd>. All matches will be highlighted.

Type <kbd>n</kbd> to go to the next match or <kbd>N</kbd> to go to the previous match.

These motions support count, e.g. `2n` to go to second (forward) match.

`gn` goes to the match of your last search, enters Visual mode and selects it. If you then hit `n`, it will select the whole line containing the match. Instead, if you press `gn` again, it will select the area between the current match and the next match!

You can use this with an action, e.g. `dgn` to delete search result.

#### Clear results

Press <kbd>Esc</kbd>[^5] to clear search highlights.

[^5]: Built-in keymap is `<c-l>` but this is overridden in my config by the command `TmuxNavigateRight`.

#### Delete search results

You can use these operators in combination with `d` to delete text, e.g. `d/hello` to delete everything until the first occurrence of `hello`. To delete everything including first occurrence: `d/hello/e`.

To delete search results:

1. Press `gn` if your cursor is on match to select it in visual mode. Then press `dgn`.
2. Else, press `dgn` to delete matches!

Similarly, you can use `cgn` to change search result text.

### Command-line Mode

Use `substitute` to search and replace and `global` to search and execute a command on search results.

See [here](https://stackoverflow.com/a/25684690/781045) for more details on how they differ.

#### global

`:[range]g[lobal]/{pattern}/[cmd]` is used to execute a command `[cmd]` on *lines* within `[range]` where pattern `{pattern}` matches.

`:[range]g[lobal]!/{pattern}/[cmd]` is used to execute a command `[cmd]` on *lines* within `[range]` where pattern `{pattern}` **DOES NOT** match.

You can also use `v` instead of `g!`

It is very powerful when combined with normal commands via `:norm`, e.g. `:g/test/norm gu$` will make all lines containing `test` lower-case.

The default range for the command is the whole file.

#### substitute

`s` is substitute command used to find and replace.

`:[range]s[ubstitute]/{pattern}/{string}/{flags} [count]`

If you omit `[range]`, then the `[range]` is the current line (`.`).

If you omit `{pattern}`, then the matches are deleted.

If you use `:s`, it repeats the last substitute without any flags.

To repeat the last substitute with flags, use `:&&`.

To repeat the last substitute command with the same replacement but using last *search* pattern, use `:~`.

Examples:

1. `10,12:s/test/ok` replaces first occurrences of `test` in lines 10-12 with `ok`.

2. `:s/test/ok/g` (or `:.s/test/ok/g`) replaces all occurrences of `test` in current line with `ok`.

3. Replace in whole file: `:%/s/test/ok/g`.

4. Here's a more complicated example involving `:~`:
   1. Use `substitute` to replace all instances of `foo` with `bar`.

      ```vim
      :s/foo/bar/g
      ```

   2. Search for `hello`.

      ```vim
      /hello
      ```

   3. Replace all instances of `hello` with `bar`.

      ```vim
      :~
      ```

##### Flags

We have already seen `g` can be used to replace all matches on each line (instead of just the first one).

Other flags besides `g`:

- `c` to confirm each submission
- `i` for case-insensitive search
- `I` for case-sensitive search
- `n` to report the number of matches without replacing
- `&` to use previous substitute call's flags.
- `e` to indicate that not finding a match is not an error.

##### Change case for replacement

`\U` makes the following characters upper-case.
`\u` makes the next character upper-case.
`\L` makes the following characters lower-case.
`\l` makes the next character lower-case.

Use `:s/\<\l/\u&/g` to capitalize every word.

##### Replacement expressions

Use `\={expression}` as replacement, e.g. `:s/te\(\w\+\)/\=strftime("%Y-%m-%d")/g` will replace `test` with `2024-05-22`.

Can use `submatch()` for backreference, e.g.`:s/\d\+/\=submatch(0)*2/g` will double every number found.

#### Alternate delimiters

If you wish to search for text containing `/`, you can use any other single-byte character except for alphanumeric, `\`, `"`, or `|` as delimiter.

To search for `/usr/bin/` and replace with `~/bin`: `:s,/usr/bin,\~/bin`.

Compare this with: `:s/\/usr\/bin/\~\/bin`.

#### Search tips

- Use `\%V` to only search in visual area! For example, use `:'<,'>s/\%Vds/x/g` to replace all occurrences of `ds` with `x`. Without `/g` flag, this only replaces the first occurrence for each line.

- Use `\%[set]` to match as many characters as possible in `set`, e.g. `sta\%[red]` matches longesst match from `sta`, `star`, `stare`, `stared`.

- Combine the power of `g` and `s`: `:% g/foo/s/bar/bat/g` will replace every occurrence of `bar` with `bat` on each line that contains `foo`!

## Motions

In this section, **NBC** = **n**on-**b**lank **c**haracter.

### Jumps and changes

See `:h jump-motions`.

When making changes, the cursor position is saved.

 Action                                | Keymap/command
---------------------------------------|--------------------------------
 View jumps                            | `:jumps` OR `<leader>sj` (courtesy of **snacks.nvim**)
 Go to previous jump position          | <kbd>Ctrl</kbd> + <kbd>o</kbd> OR <code>``</code>
 Go to next jump position              | <kbd>Ctrl</kbd> + <kbd>i</kbd>
 View changes                          | `:changes`
 Go to previous change position        | <kbd>g</kbd> + <kbd>;</kbd>
 Go to next change position            | <kbd>g</kbd> + <kbd>,</kbd>
 Go to last insert position and INSERT | <kbd>g</kbd> + <kbd>i</kbd>

`<C-]>` jumps to the location of the tag given by the word under the cursor. Tags in help are essentially hyperlinks. Press `<C-T>` to go back to original location.

### Use arrow keys

Action | Keymap/command
---------|----------
Go 2 lines below | `2↓`
Go 3 lines above | `3↑`
Go 3 characters right | `3→`
Go 2 characters leftt | `2←`

These work with editing, e.g. `d2↑` will delete 2 lines above current line.

### Line-based

Action | Keymap/command
---------|----------
Go to 3rd line | `:3` OR `3gg` OR `3G`

### Word-based

First, [need to know the difference between word and WORD](https://stackoverflow.com/questions/22931032/vim-word-vs-word):

A WORD is a sequence of NBCs separated by whitespace. A word is delimited by non-keyword characters. It consists only of numbers, letters or underscores.

 Action                       | Keymap/command
------------------------------|-----------------------------
 Move to next word            | <kbd>w</kbd>
 Move to beginning of word    | <kbd>b</kbd>
 Move to end of word          | <kbd>e</kbd>
 Move to end of previous word | `ge`
 Move to next WORD            | <kbd>W</kbd>
 Move to beginning of WORD    | <kbd>B</kbd>
 Move to end of WORD          | <kbd>E</kbd>
 Move to end of previous WORD | `gE`

### Moving within same line

 Action                  | Keymap/command
-------------------------|-----------------------------
 Move to first character | `0` OR `_`
 Move to first NBC       | <kbd>\^</kbd>
 Move to end of line     | <kbd>\$</kbd>
 Move to last NBC        | `g_`
 Move to 3rd character   | `3\|`
 Move to middle of line  | `gM`

`80gM` to go to position at 80% of current line.

`|` is same as <kbd>0</kbd> or `1|`

See `:h left-right-motions`.

### Moving within screen lines

A line that is wrapped will have 2 or more screen lines.

 Action                      | Keymap/command
-----------------------------|----------------
 Move to the first character | `g0`
 Move to the first NBC       | `g^`
 Move up screen line         | `gk` OR `g↑`
 Move down screen line       | `gj` OR `g↓`

`g2j` move down 2 screen lines.

### Reposition current line

Source: <https://learnbyexample.github.io/tips/vim-tip-4/>

 Action                                                          | Keymap/command
 -----------------------------------------------------------------|-----------------------------
 Reposition the current line to the bottom of the visible window | <kbd>z</kbd> + <kbd>b</kbd>
 Reposition the current line to the middle of the visible window | <kbd>z</kbd> + <kbd>z</kbd>
 Reposition the current line to the top of the visible window    | <kbd>z</kbd> + <kbd>t</kbd>

### Moving Vertically

 Action                  | Keymap/command
-------------------------|---------------------------------
 Move up 1 line          | <kbd>k</kbd>
 Move down 1 line        | <kbd>j</kbd>
 Move up 1 paragraph     | <kbd>Shift</kbd> + <kbd>[</kbd>
 Move down 1 paragraph   | <kbd>Shift</kbd> + <kbd>]</kbd>
 Scroll half a page down | <kbd>Ctrl</kbd> + <kbd>d</kbd>
 Scroll half a page up   | <kbd>Ctrl</kbd> + <kbd>u</kbd>
 Scroll page forward     | <kbd>Ctrl</kbd> + <kbd>f</kbd>
 Scroll page backward    | <kbd>Ctrl</kbd> + <kbd>b</kbd>
 Scroll up 1 line        | <kbd>Ctrl</kbd> + <kbd>e</kbd>
 Scroll down 1 line      | <kbd>Ctrl</kbd> + <kbd>y</kbd>
 Move up 1 paragraph     | `{`
 Move down 1 paragraph   | `}`
 Move up 1 sentence      | `(`
 Move down 1 sentence    | `)`

`zt` puts cursor line on top and `zb` to bottom.

### Find characters

- Use `f{character}` to move to the next occurrence of a character in a line. For instance, `2f"` sends you to the second next occurrence of a double quote.
If your target is behind the cursor you can use `F{character}` to find the previous occurrence of a character.

Use `t{character}` to move the cursor just before the next occurrence of a character. Again, you can use `T{character}` to do the same as `t{character}` but backwards.

<kbd>;</kbd> repeats the last find (`f`/`F`/`t`/T`) motion in the same direction.

<kbd>,</kbd> repeats the last find motion in the opposite direction.

### Forcing a motion to be linewise, charwise or blockwise

When a motion is not of the type you would like to use, you can force another type by using "v", "V" or `CTRL-V` just after the operator.

For example:

`dj` deletes 2 lines.

`dVj` deletes from the cursor position until the character below the cursor (LINEWISE).

`d<C-V>j` deletes the character under the cursor and the character below the cursor (BLOCKWISE).

To force a linewise motion to be charwise, use `v`.

### Misc

<kbd>h</kbd>, <kbd>l</kbd> are used for navigating left and right.

 Action                                                                                       | Keymap/command
----------------------------------------------------------------------------------------------|-----------------------------
 Move to first NBC of first line                                                              | `gg`
 Move to first NBC of last line                                                               | <kbd>G</kbd>
 Moves to matching bracket (or end of current Treesitter node courtesy of `nvim-tree-pairs`s) | <kbd>%</kbd>
 Moves to line at 40% of total lines                                                          | `40%`
 Move to top of window                                                                        | <kbd>H</kbd>
 Move to middle of window                                                                     | <kbd>M</kbd>
 Move to bottom of window                                                                     | <kbd>L</kbd>
 Move to first non-empty character 2 lines below | `2+`
 Move to first non-empty character 1 line above | `-`

> [!TIP]
> `H` stands for Home, `M` for Middle and `L` for Last.  Alternatively,
`H` for High, `M` for Middle and `L` for Low.

## Editing

To execute a normal mode command from insert mode in Neovim, you can use the `<C-o>` (<kbd>Ctrl</kbd> + <kbd>o</kbd>) shortcut. This allows you to execute a single normal mode command without leaving insert mode. After executing the command, you will return to insert mode.

For a good overview of different operators: <https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/editing-like-magic-with-vim-operators/>

The "." command is used to repeat the last change. It works for all changes you make, except for `u` (undo), `<C-R>` (redo) and commands that start with a colon (:).

In Vim, editing commands have the following structure: `<number><command><text object or motion>`.

This is a good read on text objects: <https://blog.carbonfive.com/vim-text-objects-the-definitive-guide/>.

If you want to create your own text object, please read [this blog post](https://jdhao.github.io/2020/11/15/nvim_text_objects).

### Formatting text

Use `gq` operator in NORMAL and VISUAL mode to format, e.g. `gqip` to format a paragraph.

To align lines, there are 3 commands:

1. `:[range]le[ft] [indent]` : Default `indent` is 0.
2. `:[range]ce[nter] [width]` : Default `width` is `textwidth` (or 80 when `textwidth` is 0).
3. `:[range]ri[ght] [width]` : Default `width` is `textwidth` (or 80 when `textwidth` is 0).

### Undo/redo

 Action                                  | Keymap/command
-----------------------------------------|---------------------------------
 Undo                                    | <kbd>u</kbd>
 Redo                                    | <kbd>Ctrl</kbd> + <kbd>r</kbd>
 Redo latest changes on last edited line | <kbd>Shift</kbd> + <kbd>u</kbd>

<!-- TODO: Add snippet about Snacks picker for undo after switching. -->

### Insert

All these commands put you in insert mode.

 Action                                                            | Keymap/command
 ------------------------------------------------------------------|---------------------------------
 Insert                                                            | <kbd>i</kbd>
 Append                                                            | <kbd>a</kbd>
 Insert at beginning of line                                       | `gI`
 Insert at beginning of line before the first non-blank characters | <kbd>Shift</kbd> + <kbd>i</kbd>
 Append at end of line                                             | <kbd>Shift</kbd> + <kbd>a</kbd>
 Insert new line after line                                        | <kbd>o</kbd>
 Insert new line before current line                               | <kbd>Shift</kbd> + <kbd>o</kbd>

`gi` puts you into Insert mode at the last place you made a change.
Use `g;` and `g,` to navigate history of insertions.

> [!TIP]
> Use `<C-a>` to insert the last content inserted when in insert mode.
> Use `<C-y>` to insert character from the line above and `<C-e>` to insert character from the line below.

### Delete/replace character

 Action                                                    | Keymap/command
-----------------------------------------------------------|---------------------------------------------
 Delete current character                                  | <kbd>x</kbd> OR <kbd>d</kbd> + <kbd>l</kbd>
 Delete current character and enter insert mode            | <kbd>s</kbd> OR <kbd>c</kbd> + <kbd>l</kbd>
 Replace current character with `a`                        | `Ra`
 Replace current character with `a`, return to Normal mode | `ra`
 Delete previous character                                 | <kbd>X</kbd> OR <kbd>d</kbd> + <kbd>h</kbd>

<kbd>r</kbd> accepts count, e.g. `cde` becomes `aae` if you type `2ra` with cursor on `c`

The `R` command causes Vim to enter replace mode.  In this mode, each
character you type replaces the one under the cursor.  

For example, `cde` becomes `abe` if you type `Rab` with cursor on `c`. Line will get extended as needed.

When you use `<BS>` (backspace) to make a correction, you will notice that the
old text is put back.

Press <kbd>Esc</kbd> when done replacing.

### Delete line

<kbd>Shift</kbd> + <kbd>s</kbd> (or `cc`) in normal mode, blanks the line, *sends you into insert mode*, also placing you at the right indent level too. It's perfect for wiping a line and writing something new without having to delete and then reposition the cursor.

<kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>s</kbd> (`Alt+S`), does the same in both modes.

#### Delete lines in normal mode

 Action                                       | Keymap/command
 ---------------------------------------------|----------------
 Delete current line                          | `dd` OR `:d`
 Delete current line and enter insert mode    | `S` OR `cc`
 Delete line and line above                   | `dk`
 Delete current line to bottom                | `dG`
 Delete from current character to end of line | `D` OR `d$`
 Delete from current character to end of line and enter insert mode | `C` OR `c$`

`10dd` = delete current line and 9 lines below. Same as `d9j`.

#### Delete lines in command-line mode

You can also delete in command-line mode:

 Action                                 | Keymap/command
----------------------------------------|----------------
 Delete last line                       | `:$d`
 Delete 5th line                        | `:5d`
 Delete line below (works with `count`) | `:+d`
 Delete line above (works with `count`) | `:-d`

You can even delete lines based on matches 🤯

`:/b/,/func/d` deletes from (first) line containing `b` to line containing `func`!

Delete line containing `g` and line below it: `:/g/;+1d`

Delete from line 5 and line after that containing `for`: `:5;/for/d`

This even works with marks: `:'a,'bd` deletes from line with mark `a` to line with mark `b`!

### Delete text in INSERT mode

`<C-W>` deletes from cursor the beinning of word (or previous, if on first character of current word).

`<BS>` works as expected.

`<C-U>` deletes to start of the line.

### Yank

<kbd>y</kbd> is yank operator.

 Action                                     | Keymap/command
 -------------------------------------------|---------------
 Copy line and line above into register `d` | `"dyk`
 Copy current line                          | `yy`
 Copy from current character to end of line | `y$` or `Y`

`yk` copies current line and above it.

You can also use yank in command-line mode: `:5y a` yanks line 5 into register `a`.

Use `gV` to select previously yanked area in normal mode.

### Paste

 Action                                                           | Keymap/command
 -----------------------------------------------------------------|---------------
 Paste from register `w` below current line or to right of cursor | `"wp`
 Paste above current line or to left of cursor                    | `P`
 Paste below current line or right of cursor (matching indent)    | `]p`
 Paste above current line or to left of cursor (matching indent)  | `]P`
 Same as `p` but puts the cursor after the pasted selection       | `gp`
 Same as `P` but puts the cursor after the pasted sele ction      | `gP`
 Paste from register `n` after line 2                             | `:2pu n`
 Paste from register `t` above current line                       | `:-1put t`
 Paste after line 3                                               | `:3pu`

Duplicate a line: `yyp`

Using `CTRL-R {register}` you can paste the contents of a register after the cursor in **INSERT** mode.

Using `CTRL-R CTRL-P {register}` you can paste the contents of a register with the correct indentation in **INSERT** mode.

### Tuck

`:1,3t.` tucks (copies) lines 1-3 and moves after current line.
`.t-1` tucks current line and pastes above current line.

You can use this to easily edit text:

1. First, create a mark `a` using `ma` where you want to move text to.
2. Select text to copy in visual mode.
3. Press `:`.
4. Now type `t'a` (so, command is `:'<,'>t'a`) to copy text after mark `a`.

### Comment

This functionality was added to neovim 0.10 in this [PR](https://github.com/neovim/neovim/pull/28176).

 Action                                                  | Keymap/command
  --------------------------------------------------------|---------------------
 Toggle comment current line                             | `gcc`
 Toggle block comment                                    | `gbc`
 Add comment on the line above                           | `gcO`
 Add comment on the line below                           | `gco`
 Add comment at the end of line                          | `gcA`
 (Op-pending) Toggles the region using linewise comment  | `gc[count]{motion}`
 (Op-pending) Toggles the region using blockwise comment | `gb[count]{motion}`

Both `gc` and `gb` act as leaders, e.g. comment to end of line: `gc$` or comment out entire paragraph: `gcip`.

This even has Treesitter integration, e.g. `gcam` to comment out method!

### Indent

Source: <https://learnbyexample.github.io/tips/vim-tip-2/>

 Action                                                                       | Keymap/command
 ------------------------------------------------------------------------------|------------------------------
 Indent the current line (normal, visual mode)                                | `>>`
 Indent the current line (insert mode)                                        | <kbd>Ctrl</kbd>+<kbd>t</kbd>
 Indent the current line and two lines below (same as `2>j`)                  | `3>>`
 Dedent the current line (normal, visual mode)                                | `<<`
 Dedent the current line (insert mode)                                        | <kbd>Ctrl</kbd>+<kbd>d</kbd>
 Auto-indent code, use motion commands to indicate the portion to be indented | `=`
 Auto-indent current line and 4 lines below                                   | `=4j`
 Auto-indent the current paragraph                                            | `=ip`

To change the amount text is shifted: `:set shiftwidth=4`.

### Filter

A filter is a program tht accepts text at standard input, modifies it and sends output to standard output.

`!{motion}{filter}`

`!5Gsort` sends the current line + 4 lines below to `sort`.

### Sort Lines

Usage: `:[range]sor[t][!] [b][f][i][l][n][o][r][u][x] [/{pattern}/]`

If no `[range]` is provided, all lines are sorted.

Use `:sort!` to reverse the order.

See `:help sort` for more information.

#### Options

Specify `i` to ignore case, e.g. `:sort i`.

Specify `f|n|o|b` to sort based on the first `float | decimal | octal | binary` number on each line.

`/{pattern}/` is to sort lines based on **what comes after** `{pattern}`, e.g. to sort based on value after `Value:`: `:sort /Value:/`

If you specify `r /{pattern}/`, it will sort based on the pattern, e.g. `:sort /\a/ r` to sort based on the first letter on each line.

If a pattern is used and there are any lines that do not match it, they will be placed in their original order, right before the sorted lines but if you sorted in reverse, they will be in reverse order after the sorted lines.

### Join Lines

Source: <https://youtu.be/rubhH6v4lN0?feature=shared>

 Action                                                                                            | Keymap/command
---------------------------------------------------------------------------------------------------|----------------
 Join current and next line (replace EOL with space[^6] and remove indentation except for current) | <kbd>J</kbd>
 Join current and next 2 lines (replace EOL with space)                                            | `3J`
 Join current and next line (remove EOL and preserve indentation)                                  | `gJ`

These also work in VISUAL or COMMAND-LINE mode.

[^6]: When there is a trailing space at end of line or next line begins with `)`, then no space is added.

### Add empty lines

`[<Space>`, `]<Space>` add an empty line above and below the cursor.

### Moving lines

In command-line mode: `<orig>m<new>`, e.g. `:3m0` moves 3rd line to top of file or `:2m$` moves 2nd line to bottom.

This also works with ranges: `:10,15m4` to move lines 10-15 (both inclusive) after 4th line. To move after current line: `:10,15m.`.

`:m+1` moves current line below the line following it.

### Abbreviations

You can create abbreviations to expand words into their full form, e.g. `ad` for `advertisement`: `:iab[brev] ad advertisement`.

It is possible to define an abbreviation that results in multiple words: `:iabbrev PS public static`.

List abbreviations: `:abbreviate`.

### Digraphs

To input a digraph, in INSERT mode, press <kbd>Ctrl</kbd>+<kbd>q</kbd> followed by the two letters which define the digraph. Here are a few useful, built-in, combinations:

<kbd>Ctrl</kbd>+<kbd>q</kbd> + <kbd>a</kbd>+<kbd>:</kbd> = ä

<kbd>Ctrl</kbd>+<kbd>q</kbd> + <kbd>a</kbd>+<kbd>*</kbd> = α

<kbd>Ctrl</kbd>+<kbd>q</kbd> + <kbd>T</kbd>+<kbd>E</kbd> = ∃

Show digraphs: `:digraphs` OR `:dig`.

Useful links:

- <https://stackoverflow.com/questions/19183272/vim-digraph-not-working>
- <https://alt-romes.github.io/posts/2023-06-21-haskell-unicode-syntax-vim.html>

### Increment

Source: <https://learnbyexample.github.io/tips/vim-tip-1/>

<kbd>Ctrl</kbd> + <kbd>a</kbd> will increment the number under the cursor or the first occurrence of a number to the right of the cursor.

<kbd>Ctrl</kbd> + <kbd>x</kbd>  will decrement the number under the cursor or the first occurrence of a number to the right of the cursor

You can also provide a count prefix, e.g. `5<c-a>` to increase number by 5.

In Visual mode, prefix with `g`, e.g. `g<C-a>` to increment the first number of each line sequentially.

### Editing with motion

Some examples of using motions for editing:

 Action                                                | Keymap/command
-------------------------------------------------------|----------------
 Delete from current line to the end of the file       | `dG`
 Delete from current line to the beginning of the file | `dgg`
 Copy until next `c` in current line                   | `yfc`
 Copy until end of sentence                            | `y)`
 Indent until end of paragraph                         | `>}`

### Text object selection

`a` is for around (includes delimiters) and `i` is for inner (excludes delimiters).

All text objects work with operators like:

- `d` (delete)
- `c` (change)
- `y` (yank)
- `v` (visual selection)

Examples:

- `dip` deletes paragraph
- `ciw` deletes current word and enters INSERT mode
- `daW` deletes current word + trailing whitespace (leading if word is at the end of the line).
- `dit` deletes all characters within HTML/XML tags (nesting is handled)
- `ci"` deletes all text within double quotes and enters INSERT mode  
- `di'` deletes all text within single quotes
- `yis` yanks a sentence
- `vib` selects text within parentheses (same as `vi(`))
- `vat` selects a tag block (e.g. `<b>Test</b>`) including the tags
- `vi{` selects everything within curly braces (same as `viB`))
- `va[` selects everything within square brackets including brackets
- - `ci<` deletes text inside `<>` block and enters INSERT mode

These also work with `{count}`, e.g. `d2i{` will delete inner braces and text between braces one level above.

To illustrate the difference between `a` and `i`, consider the following:

```text
|Neovim rocks!
```

Here, `|` represents the cursor position. `d2aw` will delete `Neovim rocks` while `d2aW` will delete `Neovim rocks!`.

See `:h text-objects` for more details.

### Editing with Ex commands

> See [Deleting Multiple Lines At Once](https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/command-line-mode/#deleting-multiple-lines-at-once).

`:[range]command[options]`

Delete the lines 10, 11 and 12 and puts them inside the `a` register: `:10,12d a` or `:10,+2d a`.

Copy current line: `:.y`

Delete emtire buffer's contents: `:%d`

`0` refers to beginning of the file and `$` to end.

So, `:.,$y` copies text from current line to end of file.

`:'<,'>` shows up if you type `:` and you're in **VISUAL** mode. It refers to current selection so to delete it: `:'<,'>d`.

Repeat last ex-command: `@:`. After that, type `@@` to repeat it again.

### Change case

Toggle case of character (works in VISUAL mode too): `~`

Toggle case with motion: `g~<motion>`, e.g. `g~iw`.

Lower case with motion: `gu<motion>`, e.g. `gue`.

Upper case with motion: `gU<motion>`, e.g. `gUiw`.

To get ASCII value of current character: `ga`.

These work with `{count}` prefix, e.g. `2~`.

Use `guu` to change all text on the line to lowercase, `gUU` for uppercase, `g~~` to toggle case.

### [Editing line filtered by pattern](https://youtu.be/uQKaAOKgr2o?feature=shared)

`:[range]g[lobal]/{pattern}/[cmd]` - edit lines that are first filtered by a pattern

`:g/call/d a` - delete all lines containing `call` and store in `a` register

`:1,5 g/call/m0` - move all lines from 1 to 5 containing `call` to top of file.

`:g /cat/ s/rat/bat/g` : replace `rat` with `bat` in all lines containing `cat`.

`:.,+2 g/\wa/ normal gU$` - for current line and 2 lines below it, convert to upper case all lines containing `\wa`.

`:g/^def.*/ normal @d` - for all lines starting with `def`, apply macro in register `d`.

`:,/foo[0-9]/-1norm ^cEbar` changes the first word to `bar` for each of the lines from the current line to the line before the next line matching `foo[0-9]`.

Use `g!` or `v` to negate pattern.

`:v/test/d` deletes all lines not containing `test`.

Can use `|`, `\`, `"` or any single byte character that is not alphanumeric as delimiter too:

`:.g%call%d` does same as `:.g/call/d`, i.e. delete all occurrences of `call` in current line.

See `:h substitute`.

### Exiting insert mode

You can use <kbd>Esc</kbd> or <kbd>Ctrl</kbd> + <kbd>[</kbd> to return to normal mode.

<kbd>Ctrl</kbd> + <kbd>c</kbd> is much more powerful than both. It will cancel repetition for count, e.g. `3iabc<Esc>` will insert `abcabcabc`, while `3iabc<C-c>` will insert simply `abc`. It also does not trigger the `InsertLeave` autocommand event.

([source](https://vimhelp.org/insert.txt.html#i_CTRL-C))

## Completion and snippets

`nvim-cmp.nvim` provides completion support.

`luasnip.nvim` provides extensive snippet functionality.

 Action                                                | Keymap
-------------------------------------------------------|-------------------------------------------------------------------------------
 Scroll documentation window back                      | <kbd>Ctrl</kbd> + <kbd>d</kbd>
 Scroll documentation window forward                   | <kbd>Ctrl</kbd> + <kbd>f</kbd>
 Close                                                 | <kbd>Ctrl</kbd> + <kbd>e</kbd>
 Next entry                                            | <kbd>Ctrl</kbd> + <kbd>n</kbd> OR `<Down>` OR <kbd>Tab</kbd>
 Previous entry                                        | <kbd>Ctrl</kbd> + <kbd>p</kbd> OR `<Up>` OR <kbd>Shift</kbd> + <kbd>Tab</kbd>
 Accept suggestion                                     | <kbd>Enter</kbd>
 **Toggle documentation window**                       | <kbd>Alt</kbd> + <kbd>d</kbd>
 Invoke completion                                     | <kbd>Ctrl</kbd> + <kbd>Space</kbd>
 **Toggle autocompletion**                             | `<leader>tc`
 **Go to next snippet node**                           | <kbd>Ctrl</kbd> + <kbd>k</kbd>
 **Go to previous snippet node**                       | <kbd>Ctrl</kbd> + <kbd>j</kbd>
 **Select current entry (Insert, Commandline mode)**   | <kbd>Ctrl</kbd> + <kbd>y</kbd>
 **Complete common string (Insert, Commandline mode)** | <kbd>Ctrl</kbd> + <kbd>l</kbd>
 **Select choice (shows dropdown for choice node)**    | <kbd>Ctrl</kbd> + <kbd>u</kbd>
 **List snippets**                                     | `<leader>sl`

> [!NOTE]
> Actions in **bold** above are custom actions I added in addition to those to provided by NvChad.

### Special completions

These keymaps work in INSERT mode. See `:help ins-completion` for more information.

1. Press `<C-X><C-F>` to insert file names.
2. Press `<C-X><C-L>` to insert whole lines.
3. Press `<C-X><C-N>` to insert keywords from current file.
4. Press `<C-X><C-K>` to insert items from the dictionary.
5. Press `<C-X><C-]>` to insert tags.
6. Press `<C-X><C-D>` to insert definitions or macros.
7. Press `<C-X><C-V>` to insert command-line entries.

## Recipes + FAQ

### [Enter Special characters](https://neovim.io/doc/user/usr_24.html#_entering-special-characters)

Use `<C-V>` followed by character, e.g. `<C-V> <Esc>` in INSERT mode yields `^[` while `<C-V> <BS>` yields `<BS>`.

### [Reverse line order](https://neovim.io/doc/user/usr_12.html#_reverse-line-order)

Use `:global` + `:move` commands to move all the lines before the first line resulting in a reversed file: `:global/^/move 0` (OR `:g/^m 0`).

This also works on a range of lines.  First move to above the first line and mark it with `mt`.  Then move the cursor to the last line in the range and type: `:'t+1,.g/^m 't`.

### Run code block in help buffer

Use `g==` in Normal mode in a help buffer to execute a block of code.

### Select lines

Press `4:` to bring up `:.,.+3`. If you then press `d`, it will delete from current line to 3 lines below.

### How do you check if Neovim is built with luajit?

Run:

```shell
:lua print(jit.version)
```

### Open file under cursor

Use `gf`.

### Toggle line numbers

`:set relativenumber`: show relative numbers
`:set number`: show numbers

Prefix with `no` to negate above or add `!` suffix to toggle instead.

### Swap lines

Do this: `ddp`

### Multi-file find and replace

1. Search for files with text using Telescope live grep.
2. Add results to QuickFix list via <kbd>Ctrl</kbd> + <kbd>q</kbd>.
3. Now do `:cdo %s/{findWhat}/{replaceWith}/g` to replace all QuickFix results. Add `c` at end if you want to be prompted to confirm each time.

### Where are Treesitter parsers located?

They are located inside `parser` sub-folder of `nvim-treesitter` plugin install path, i.e. `~/.local/share/nvim/lazy/nvim-treesitter/parser` ([source](https://www.reddit.com/r/neovim/comments/13sz7kc/comment/jlskhod/?utm_source=share&utm_medium=web2x&context=3)).

### Open/View URLs

`gx` in Normal mode calls `vim.ui.open()` on whatever is under the cursor, which shells out to your operating system's "open" capability. For instance, pressing `gx` on a URL will open that URL in your browser.

Courtesy of `urlview.nvim` plugin, you can view a list of URLs: `:UrlView`.
Use `]u` and `[u` to navigate to previous and next URL in buffer.

### Copy text to mark location

1. Set location to be marked (here, we use `a`): `ma`.
2. Go to location of text to copy and type: `:.t'a`.

### Check key maps

You can use `<leader>Sk` (`snacks.nvim`) or `:Telescope keymaps` to bring up a GUI showing a list of keymaps that you can search.

Also, try `:[<MODE>]map <KEYMAP>`, e.g. `:nmap <leader>lf` tells you binding for `<leader>lf` in normal mode.

Another approach is `:echo maparg("<leader>lf", "n")`

### Increment selection with search iterator

Replace all instances of `1` with auto-incremented sequence 🤯:

`:let idx =0 | g/1/let idx+=1 | s//\=idx`

([source](https://www.youtube.com/watch?v=X35yfs3yvKw&t=523s))

### Add a string at a line number in multiple files

1. Add files to quickfix list.
2. To add `<TEXT>` to line 5 in each file: `:cfdo execute 'norm 5GO<TEXT>' | update` (`5G` goes to line 5, `O` inserts line above). Alternative: `:cfdo :call append(4, '<TEXT>')`.

([source](https://www.youtube.com/watch?v=X35yfs3yvKw&t=723s))

### Suspend Neovim

<kbd>Ctrl</kbd> + <kbd>z</kbd> suspends Neovim. To resume, `fg` in shell.

### Find and replace in multiple files at once

First, add files to quickfix list.

Then to replace all instances of `cat` with `dog`:

`:cfdo %s/cat/dog/g | update | bd`

Less eficient way to do this is with `cdo` which operates on each entry (versus `cfdo` which operates on each file):

`:cdo s/cat/dog/ | update | bd`

### Create auto-increment sequence

The command <kbd>g</kbd> + <kbd>Ctrl</kbd> + <kbd>a</kbd> in Neovim performs an incremental increment operation on numbers in visual mode. Here's a concise explanation:

1. Select a block of text containing numbers in visual mode.
2. Press `g + Ctrl + a`.
3. Each number in the selection will be incremented by consecutive integers.

Example:

```text
1
2
3
4
```

After applying `g + Ctrl + a`, it becomes:

```text
1
3
5
7
```

You can use this to create a series of `0` into auto-incremented series: $1,2,\cdots$ 😄

### Where does `mason` install binaries?

`~/.local/share/nvim/mason/bin`

### Copy text between brackets on multiple lines

1. Select lines containing text you want.
2. `:'<,'>norm "Ayi{` copies text between brackets and *appends* to register `a`.
3. Paste: `"aP`.

### Include/exclude text using external command

1. Select lines.
2. To filter lines only containing `foo`: `:'<,'> ! rg -F foo`. Else to remove lines containing `foo`: `:'<,'> ! rg -v -F foo` (`-v` inverts match!).

### Get list of local files in insert mode

Press `<C-x><C-f>` to get a list of local files when in insert mode ([source](https://www.reddit.com/r/neovim/comments/1g380b0/comment/lrvq01m/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button)).

### Use normal mode commands in insert mode

Prefix them with <kbd>Alt</kbd>, e.g. `<A-P>` pastes in insert mode.

`<A-d>,d` deletes current line.

### Go backwards/forwards in time

`:earlier` (`:later`) can be used to go back (forward) in time ([source](<https://www.reddit.c> om/r/neovim/comments/1fu9an8/neovim_gems/)).

### Filter lines using external program

`1,3!grep test` will filter out lines from 1 to 3 not containing `test`!

### Search help

Use [`:helpgrep`](https://neovim.io/doc/user/helphelp.html#%3Ahelpgrep) to search in all help pages (and also of any installed plugins). All matches are available in the quickfix list.

## Plugins

### Utility

#### Toggleterm

This plugin helps manage multiple terminal windows.

To launch or toggle visibility for a terminal window:

```shell
:ToggleTerm size=40 dir=~/Desktop direction=horizontal name=desktop
```

You can prefix it with a count to target a specific terminal.
Direction is one of: `horizontal`, `vvertical`, `float`, `tab`.

`ToggleTermToggleAll` will toggle all terminal windows.

`TermSelect` lets the user select the terminal window to open or to focus if already open.

`<C-\>` toggles the last opened terminal in normal mode. You can prefix by count to specify a certain window.

`TermExec` allows you to execute a command in a terminal, e.g. `2TermExec cmd="git status" dir=~/<my-repo-path>` will run git status in terminal 2. :point_right: `cmd` argument **must** be quoted.

##### Sending lines to the terminal

 Action                                              | Keymap
-----------------------------------------------------|----------------------------------
 Send current line to terminal 1                     | `:ToggleTermSendCurrentLine 1`
 Send all the (whole) lines in your visual selection | `:ToggleTermSendVisualLines`
 Sends only the visually selected text               | `:ToggleTermSendVisualSelection`

Specifying a terminal in the above commands is optional. If missing, it defaults to the first terminal.

#### nvim-tree

[nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) is a file explorer for Neovim.

To launch, press <kbd>Ctrl</kbd> + <kbd>n</kbd>.

To close, press <kbd>q</kbd>.

Floating preview is courtesy of [nvim-tree-preview.lua](https://github.com/b0o/nvim-tree-preview.lua).

Below are some useful key maps for when the window is displayed.

> [!NOTE]
> All actions in **bold** in the tables below have custom keymaps. The other commands use plugin defaults.

<details>
  <summary>Root</summary>

Action                          | Keymap
---------------------------------|----------------------------------
**Change root to input path**   | <kbd>Alt</kbd> + <kbd>r</kbd>
Change root to node             | <kbd>Ctrl</kbd> + <kbd>\]</kbd>
**Change root to global cwd**   | <kbd>Ctrl</kbd> + <kbd>c</kbd>

</details>

<details>
  <summary>File and Directory</summary>

Action                          | Keymap
---------------------------------|----------------------------------
**Launch Find Files**           | <kbd>Ctrl</kbd> + <kbd>f</kbd>
**Launch Live Grep**            | <kbd>Ctrl</kbd> + <kbd>g</kbd>
Open: Horizontal split          | <kbd>Ctrl</kbd> + <kbd>x</kbd>
Open                            | <kbd>Enter</kbd>
Open: Vertical split            | <kbd>Shift</kbd> + <kbd>l</kbd>
Open: In place                  | <kbd>Ctrl</kbd> + <kbd>e</kbd>
Run command                     | <kbd>.</kbd>
Delete                          | <kbd>d</kbd>
Rename (omit filename)          | <kbd>Ctrl</kbd> + <kbd>r</kbd>
Rename: Basename                | <kbd>e</kbd>
Create File Or Directory        | <kbd>a</kbd>
Copy File Or Directory          | <kbd>c</kbd>
Cut File Or Directory           | <kbd>x</kbd>
Paste File Or Directory         | <kbd>p</kbd>

</details>

<details>
  <summary>Info and preview</summary>

Action                          | Keymap
---------------------------------|----------------------------------
Show Info (pop-up)              | <kbd>Ctrl</kbd> + <kbd>k</kbd>
**Print path**                  | <kbd>Ctrl</kbd> + <kbd>p</kbd>
**Preview (Watch)**             | <kbd>Shift</kbd> + <kbd>Tab</kbd>
**Close Preview/Unwatch**       | <kbd>Esc</kbd>
Help                            | <kbd>g</kbd> + <kbd>?</kbd>

</details>

<details>
  <summary>git</summary>

Action                          | Keymap
---------------------------------|----------------------------------
Prev git                        | <kbd>\[</kbd> + <kbd>c</kbd>
Next git                        | <kbd>\]</kbd> + <kbd>c</kbd>
Stage/unstage Files             | <kbd>g</kbd> + <kbd>a</kbd>

</details>

<details>
  <summary>Navigation and Movement</summary>

Action                          | Keymap
---------------------------------|----------------------------------
Next sibling                    | <kbd>></kbd>
Previous sibling                | <kbd><</kbd>
First sibling                   | `K`
Last sibling                    | `J`
Move down                       | <kbd>j</kbd>
Move up                         | <kbd>k</kbd>
**Expand folder or go to file** | <kbd>l</kbd>
**Open folder or show preview** | <kbd>Tab</kbd>
**Close parent folder**         | <kbd>h</kbd>
Close Directory                 | <kbd>Backspace</kbd>
Prev diagnostic                 | <kbd>\[</kbd> + <kbd>e</kbd>
Next diagnostic                 | <kbd>\]</kbd> + <kbd>e</kbd>
Parent directory                | `P`

</details>

<details>
  <summary>Bookmark</summary>

Action                          | Keymap
---------------------------------|----------------------------------
Toggle bookmark                 | <kbd>m</kbd>
Delete bookmarked               | `bd`
Trash bookmarked                | `bt`
Move bookmarked                 | `bmv`

</details>

<details>
  <summary>Filter and view</summary>

Action                          | Keymap
---------------------------------|----------------------------------
Expand All                      | <kbd>Shift</kbd> + <kbd>e</kbd>
Live Filter: Clear              | <kbd>Shift</kbd> + <kbd>f</kbd>
Live Filter: Search             | <kbd>f</kbd>
Toggle hidden files             | <kbd>Shift</kbd> + <kbd>h</kbd>
**Toggle group empty**          | <kbd>g</kbd> +  <kbd>l</kbd>
Collapse all                    | <kbd>Shift</kbd> + <kbd>w</kbd>
Toggle bookmarks                | <kbd>Shift</kbd> + <kbd>m</kbd>

</details>

<details>
  <summary>Copy info</summary>

Action                          | Keymap
---------------------------------|----------------------------------
Copy Basename                   | <kbd>g</kbd> + <kbd>e</kbd>
Copy absolute path              | <kbd>g</kbd> + <kbd>y</kbd>
Copy name                       | <kbd>y</kbd>
Copy relative path              | <kbd>Shift</kbd> + <kbd>y</kbd>

</details>

<details>
  <summary>Buffer</summary>

Action                          | Keymap
---------------------------------|----------------------------------
Wipe buffer                      | `BW`
Delete buffer                    | `BD`

These commands work on the buffer for the current node if it exists.

</details>

<details>
  <summary>AI</summary>

Action                          | Keymap
---------------------------------|----------------------------------
**Add file or directory to chat**   | `<leaber>ca`
**Add file or directory to chat (pinned)**   | `<leaber>cp`

These require [codecompanion.nvim](#codecompanion).

</details>

#### Telescope

[Telescope](https://github.com/nvim-telescope/telescope.nvim) is a very powerful plugin to search for items.

> [!NOTE]
> I have replaced many pickers from Telescope and its extensions with those from [Snacks](#snacks).

- `actions.which_key` (<kbd>Ctrl</kbd> + <kbd>/</kbd> in **insert** or <kbd>?</kbd> in **normal** mode) shows the mappings for your picker. Press again to close. Default mappings are [here](https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/mappings.lua).

- `builtin.grep_string` searches for the string under your cursor or selection in your current working directory.
`builtin.live_grep` searches for a string in your current working directory and gets results live as you type, respects `.gitignore`. (Requires **ripgrep**)

- <kbd>Alt</kbd> + <kbd>p</kbd> toggles preview.

- <kbd>s</kbd> in normal mode or <kbd>Alt</kbd> + <kbd>s</kbd> in insert mode activates search via [flash.nvim](https://github.com/folke/flash.nvim) plugin.

- `:Telescope` lists all builtin pickers.
- Example of custom command: `Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍`. For more details, see `:help telescope.command.`

To resume previous search: `<leader>rs`.

<summary>DAP</summary>

 Action             | Keymap/command
--------------------|----------------
 List breakpoints   | `<leader>dlb`
 List commands      | `<leader>dlc`
 List configuration | `<leader>dlC`
 List frames        | `<leader>dlf`
 List variables     | `<leader>dlv`

</details>

#### vim-tmux-navigator

[This plugin](https://github.com/christoomey/vim-tmux-navigator) provides seamless navigation between tmux panes and vim splits.

 Action         | Keymap/command
----------------|---------------------------------
 Left           | <kbd>Ctrl</kbd> + <kbd>h</kbd>
 Right          | <kbd>Ctrl</kbd> + <kbd>l</kbd>
 Up             | <kbd>Ctrl</kbd> + <kbd>k</kbd>
 Down           | <kbd>Ctrl</kbd> + <kbd>j</kbd>
 Go to previous | <kbd>Ctrl</kbd> + <kbd>\\</kbd>

You also need to setup the same mappings in your `.tmux.conf`. The easiest way to do is add this to the file:

```bash
set -g @plugin 'christoomey/vim-tmux-navigator'
```

#### nvim-highlight-colors

Highlight colors within Neovim. This works for color names ('red'), hex values ('#FFFFFF'), etc.

#### screenkey

[This](https://github.com/NStefan002/screenkey.nvim) is a very useful plugin that shows keys pressed. You can toggle it on /off using `:Screenkey [toggle]`.

This plugin exposes `get_keys` function that you can use in a statusline component. You can use `:Screenkey toggle_statusline_component` or change `vim.g.screenkey_statusline_component` to toggle this feature on/off.

#### Snacks

[snacks](https://github.com/folke/snacks.nvim) is a "collection of small QoL plugins for Neovim".

Below are some of the commands with their respective keymaps:

<details open>
  <summary>LSP</summary>

 Action                          | Keymap
 --------------------------------|--------------
 Next Reference                  | `]r`
 Prev Reference                  | `[r`
 Snacks LSP Diagnostics          | `<leader>lSD`
 Snacks LSP Diagnostics (Buffer) | `<leader>lSd`
 Lsp type definitions            | `<leader>ltd`
 Lsp document symbols            | `<leader>ls`  
 Lsp workspace symbols           | `<leader>lws`

</details>

<details open>
  <summary>Grep</summary>

 Action                          | Keymap
 --------------------------------|--------------
 Snacks Grep                     | `<leader>sgg`
 Snacks Grep (hidden)            | `<leader>sgh`
 Snacks Grep cwd                 | `<leader>sgc`
 Snacks Visual selection or word | `<leader>sw`  
 Snacks Grep Open Buffers        | `<leader>sgB`

</details>

<details open>
  <summary>General</summary>

 Action                      | Keymap
 ----------------------------|--------------
 Snacks picker builtins      | `<leader>sb`
 Snacks Command History      | `<leader>s:`
 Snacks Notification History | `<leader>sn`
 Snacks Find projects        | `<leader>sp`
 Snacks Find plugins         | `<leader>sP`
 Snacks Quickfix List        | `<leader>sq`
 Resume                      | `<leader>sR`
 Snacks Treesitter           | `<leader>st`
 Undo History                | `<leader>su`
 Snacks Zoxide               | `<leader>sz`
 Snacks Registers            | `<leader>s"`
 Snacks Search History       | `<leader>s/`
 Snacks Autocmds             | `<leader>sa`
 Snacks Colorschemes         | `<leader>sc`
 Snacks Commands             | `<leader>sC`
 Snacks Help Pages           | `<leader>s?`
 Snacks Highlights           | `<leader>sH`
 Snacks Jumps                | `<leader>sj`
 Snacks Keymaps              | `<leader>sk`
 Marks                       | `<leader>sm`
 Man Pages                   | `<leader>sM`

</details>

<details open>
  <summary>Files</summary>

 Action                            | Keymap
 ----------------------------------|---------------
 Snacks Find Old Files             | `<leader>sff`
 Snacks File Explorer              | `<leader>se`  
 Snacks Find Config File           | `<leader>sfc`
 Snacks Recent                     | `<leader>sr`  
 Delete current buffer             | `<leader>bd`  
 Delete all buffers except current | `<leader>bD`  
 Snacks Find Buffers               | `<leader>sB`  

</details>

#### Toggle

[Toggle](https://github.com/gregorias/toggle.nvim) as its name suggests, lets you toggle settings.

- Keymap prefix is `yo`, e.g. `yos` is to show settings that can be toggled.
- Toggle on setting: `]o` + setting, e.g. `]or` to toggle on relative numbers.
- Toggle off setting: `[o` + setting, e.g. `]ow` to toggle off wrap.
- See [here](https://github.com/gregorias/toggle.nvim#default-options) for a list of default options that can be toggled.

#### yazi

 Action                         | Keymap/command
 -------------------------------|---------------
 Open yazi                      | `<leader>yy`
 Open yazi in current directory | `<leader>yw`

### UI

#### rainbow-delimiters

[This](https://github.com/HiPhish/rainbow-delimiters.nvim) provides rainbow delimiters powered by Treesitter.

#### hlchunk

This is similar to indent-rainbow plugin in VS Code but also has additional functionality like showing current context.

#### lualine

[This](https://github.com/nvim-lualine/lualine.nvim) is a performant, highly configurable statusline plugin.

See [here](https://github.com/nvim-lualine/lualine.nvim#usage-and-customization) on how to customize.

To get your current config: `:lua vim.notify(vim.inspect(require('lualine').get_config()))`.

I added the following 3 user commands for this plugin:

1. `LuaLineRefresh`
2. `LuaLineEnable`
3. `LuaLineDisable`

##### Lualine Layout

Below is an overview of how I have configured Lualine. It explains the structure of the statusline, the components in each section, and the actions triggered by clickable segments.

<details open>
  <summary>lualine_a</summary>

 Name        | Description                                                                  | Click Action
-------------|------------------------------------------------------------------------------|--------------------------------------------------------------------------------
 mason       | Displays Mason status.                                                       | None
 diagnostics | Displays diagnostics for `error`, `warn`, `info`, and `hint` severity types. | **Left**: Opens diagnostics picker (Press <kbd>Ctrl</kbd> to get workspace level diagnostics. Default is buffer). <br> **Right**: Opens location list.

</details>

<details open>
  <summary>lualine_b</summary>

 Name              | Description                                         | Click Action
-------------------|-----------------------------------------------------|-----------------------------------------------------------------------------------------------
 git | Displays the current Git branch.                    | **Left**: Opens Git branches picker. <br> **Other**: Opens Git log picker.
 diff            | Displays Git diff stats (added, modified, removed). | Opens `Diffview`.

</details>

<details open>
  <summary>lualine_c</summary>

 Name                   | Description                                                    | Click Action
------------------------|----------------------------------------------------------------|--------------------------------------------------------------------------------------------------------
 file info        | Displays the filename with color based on its modified status. | Toggles `NvimTree`.
 screenkey            | Displays active keybindings if `vim.g.screenkey_statusline_component` is `true`.                  | None
 lsp status           | Displays LSP status with a spinner for ongoing operations.     | **Left**: `:LspInfo`. <br> **Other**: Use `trouble` to display LSP document symbols.
 Available Formatters | Lists available formatters from `conform` if `vim.g.show_formatters` is `true`.                     | None
 Linters      | Displays active linters from `nvim-lint` if `vim.g.show_linters`   is `true`.                      | None

</details>

<details open>
  <summary>lualine_x</summary>

 Name             | Description                                              | Click Action
------------------|----------------------------------------------------------|-----------------------------------------
 Code Companion | Displays a spinner for CodeCompanion operations.                    | None
 lazy   | Displays pending updates from `lazy.nvim`.               | Opens `Lazy` plugin manager.
 noice   | Displays mode and search status from `noice.nvim`.       | None
 encoding       | Displays file encoding.                                  | None
 file format    | Displays file format (e.g., Unix, DOS, Mac).             | None
 filetype       | Displays the filetype icon.                              | None
 yaml key/value | Displays the current YAML key and value (if applicable). | None

</details>

<details open>
  <summary>lualine_y</summary>

Name      | Description                                  | Click Action
-----------|----------------------------------------------|--------------
 r | Displays the status of the R plugin. | None

</details>

<details open>
  <summary>lualine_z</summary>

 Name     | Description                                                       | Click Action
 ----------|-------------------------------------------------------------------|--------------
 location | Displays the current cursor position in the format `line:column`. | None            |

</details>

#### bufferline

[bufferline.nvim](https://github.com/akinsho/bufferline.nvim) provides a snazzy buffer line (with tabpage integration).

#### dropbar

[dropbar](https://github.com/Bekaboo/dropbar.nvim) provides an IDE-like, highly-customizable winbar with drop-down menu support.

 Action                         | Keymap
 -------------------------------|------------
 Pick symbols in winbar         | `<leader>;`
 Go to start of current context | `[;`
 Select next context            | `];`

Keymaps when menu is active:

 Action       | Keymap
 -------------|------------------------
 Close        | `q` OR `<kbd>Esc</kbd>`
 Select       | `<CR>`
 Fuzzy-find   | `i`

#### nvim-ufo

[nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) provides advanced fold functionality. See README for how to set up with different providers: LSP (what I use), Treesitter.

### AI

#### [copilot.vim](https://github.com/github/copilot.vim/)

This is a Neovim plugin for GitHub Copilot.

Assuming that you have GitHub Copilot access, run `:Copilot setup` to get started.

Action | Command/Keymap
--------|---------
Authenticate and enable GitHub Copilot. | `:Copilot setup`
Globally disable Copilot inline suggestions. | `:Copilot disable`
Re-enable GitHub Copilot. | `:Copilot enable`
Sign out of GitHub Copilot. | `:Copilot signout`
Check if GitHub Copilot is operational for the current buffer and report any issues. | `:Copilot status`
Open a window with up to 10 completions for the current buffer.  Use `<CR>` to accept a completion. | `:Copilot panel`
Show version information. | `:Copilot version`
Accept suggestion | `<M-a>`

`:Copilot panel` is the default command if `:Copilot` is called without an argument.

:bulb: Set `vim.b.copilot_enabled` to `false` to disable Copilot for the current buffer.

:bulb: To improve the quality of suggestions, you can set `vim.b.workspace_folder` for an individual buffer.

> [!IMPORTANT]
> This plugin is currently disabled as it's flaky and has outdated support for `nvim-cmp`.

#### codecompanion

[CodeCompanion](https://codecompanion.olimorris.dev/) is a plugin that enables AI-powered coding with LLMs.

In the table below, actions in **bold** are courtesy of custom prompts.

 Action                             | Keymap
------------------------------------|-------------
 Open chat buffer              | `<leader>cc` OR `:CodeCompanionChat [adapter]`
 Toggle chat buffer | `:CodeCompanionChat Toggle`
 Inline assistant | `<leader>ci` OR `:CodeCompanion [adapter] [prompt]`
 Create command in command-line mode | `<leader>cC` OR  `:CodeCompanionCmd`
 Add to chat (visual mode) | `<leader>cA` OR `:CodeCompanionChat Add`
 Actions palette | `<leader>ca` OR `:CodeCompanionActions`
 Fix code | `<leader>cf` OR `:'<,'>CodeCompanion /fix`
 LSP Diagnostics | `<leader>cl` OR `:'<,'>CodeCompanion /lsp`
 Generate Tests | `<leader>ct` OR `:'<,'>CodeCompanion /tests`
 **Generate Documentation** | `<leader>cd` OR `:'<,'>CodeCompanion /doc`
 **Generate a commit message (advanced)** | `<leader>cm`
 **Review code** | `<leader>cr`

##### Adapters

An adapter is what connects Neovim to an LLM. See [here](https://github.com/olimorris/codecompanion.nvim/tree/main/lua/codecompanion/adapters) for the list of supported adapters. API Keys can be provided via `*_API_KEY` environment variable or you can run commands from within your config by prefixing them with `cmd:` to retrieve the key.

If you prefer to only display the adapters defined in your user configuration, you can set the `show_defaults` option to `false`:

```lua
require("codecompanion").setup({
  adapters = {
    opts = {
      show_defaults = false,
    },
    -- Define your custom adapters here
  },
})
```

##### Chat Buffer

Press `?` for help.

Press `<C-c>` to close (works for both NORMAL and INSERT modes).

Press <kbd>Ctrl</kbd> + <kbd>Space</kbd> to activate completion in INSERT mode.

Press `ga` to change the adapter for the current chat.

Press `gr` to regenerate the last response.

See [here](https://codecompanion.olimorris.dev/usage/chat-buffer/#keymaps) for the full list of keymaps.

You can add context from your code base by using [*Variables*](https://codecompanion.olimorris.dev/getting-started.html#variables) and [*Slash Commands*](https://codecompanion.olimorris.dev/getting-started.html#clash-commands) in the chat buffer, e.g. `#buffer:8-12` shares lines 8-12 of current buffer while `/buffer` is a command to insert an open buffer.

In order to allow for references to self-update, they can be *pinned* (for files and buffers) using `gp` or *watched* (for buffers) using `gw`. See [here](https://codecompanion.olimorris.dev/usage/chat-buffer/#references) for more details. If you pin a buffer, then the whole contents of the buffer or file is added to the message stack before your current message. If you watch it, it will send only the added, edited or deleted lines to the LLM.

You can also pin (or watch) the current buffer using `#buffer[pin]` (or `#buffer[watch]`).

[Agents](https://codecompanion.olimorris.dev/configuration/chat-buffer.html#agents-and-tools) are prefixed with `@` and can be used to perform tasks like update code. The most comprehensive one is `@full_stack_dev` which is a combination of the `@cmd_runner`, @`editor` and `@files` tools. For a description of these agents, see [Using Agents and Tools](https://codecompanion.olimorris.dev/usage/chat-buffer/agents.html).

> [!NOTE]
> The message history can be modified via the debug window (`gd`) in the chat buffer.
> This window is simply a Lua buffer which the user can edit as they wish. To persist any changes, the chat buffer keymaps for sending a message (defaults: `<CR>` or `<C-s>`) can be used.

##### Inline Assistant

The Inline Assistant enables an LLM to write code directly into a Neovim buffer. Supply a prompt and the LLM will either write code or open a chat buffer. You can make a visual selection and call the Assistant.

For convenience, you can call prompts from the [prompt library](https://codecompanion.olimorris.dev/configuration/prompt-library.html) via the Assistant such as `:'<,'>CodeCompanion /buffer what does this file do?`.

By default, an inline assistant prompt will trigger the diff feature, showing differences between the original buffer and the changes from the LLM.

To accept changes: `<leader>ca`.

To reject changes: `<leader>cr`.

##### Prompts

CodeCompanion comes with a set of built-in prompts that can be accessed via the Actions Palette or by `:CodeCompanion <prompt>`.

For more information on how to create custom prompts, see [here](https://codecompanion.olimorris.dev/extending/prompts.html). You can assign a keymap and even specify that it is a slash command.

Prompts can be used inline or in chat buffer.

##### Workflows

From [Creating Workflows](https://codecompanion.olimorris.dev/extending/workflows):

> Workflows in CodeCompanion, are successive prompts which can be automatically sent to the LLM in a turn-based manner.
> ...
> When initiated from the [Action Palette](https://codecompanion.olimorris.dev/usage/action-palette.html), workflows attach themselves to a [chat buffer](https://codecompanion.olimorris.dev/usage/chat-buffer/index.html) via the notion of a *subscription*.

To disable the requirement of approvals and automatically save any edited buffer:

```lua
vim.g.codecompanion_auto_tool_mode = true
```

##### Workspaces

From the [announcement](https://github.com/olimorris/codecompanion.nvim/discussions/705):

> The new workspace slash command allows users to share defined groups of files and/or symbols with an LLM, alongside some pre-written context.

In order to use this, you need to create a file called [`codecompanion-workspace.json`](https://codecompanion.olimorris.dev/extending/workspace.html) in the root of your current working directory. See an example [here](https://github.com/olimorris/codecompanion.nvim/blob/main/codecompanion-workspace.json).

### Coding

#### neominimap

[This plugin](https://github.com/Isrothy/neominimap.nvim) provides a visual representation of your code structure on the side of your windows, similar to the minimap found in VS Code.

You can customize the display to show diagnostics, marks, search results, git information.

 Action                             | Keymap
------------------------------------|-------------
 Toggle global minimap              | `<leader>mtg`
 Refresh global minimap             | `<leader>mrg`
 Toggle minimap for current window  | `<leader>mtw`
 Refresh minimap for current window | `<leader>mrw`
 Toggle minimap for current tab     | `<leader>mtt`
 Refresh minimap for current tab    | `<leader>mrt`
 Toggle minimap for current buffer  | `<leader>mtb`
 Refresh minimap for current buffer | `<leader>mrb`
 Toggle focus on minimap            | `<leader>mtf`

#### Outline

[Outline.nvim](https://github.com/hedyhli/outline.nvim) produces a code outline sidebar powered by LSP + Treesitter.

See [here](https://github.com/hedyhli/outline.nvim#default-keymaps) for default keymaps. They are only active for the outline window.

##### Commands

- `:Outline[!]` toggles the outline window. If you use `!`, the cursor focus stays in your original window.
You can use command modifiers `topleft`/`aboveleft`/`botright`/`belowright` on this command.

- `:OutlineOpen[!]` opens the outline window. You can use modified to specify location as well.

- Use `:OutlineFocusOutline` to focus on the outline window.

- Use `:OutlineFocusCode` to focus on code.

- `:OutlineFollow[!]` goes to the corresponding node in the outline window based on the cursor position in code, and then switches focus on the outline window (use `!` to keep focus on original window).

 Action             | Keymap
 -------------------|---------------
 Outline Open       | `<leader>oo`  
 Outline Close      | `<leader>oc`  
 Outline Toggle     | `<leader>ot`  
 Outline Focus      | `<leader>ofo`
 Outline Focus code | `<leader>ofc`
 Outline Follow     | `<leader>oF`  

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

I tried to keep the shortcuts the same as those in Visual Studio as much as possible:

 Action            | Keymap/command
-------------------|-----------------------------------
 Toggle breakpoint | <kbd>F9</kbd>
 Clear breakpoints | <kbd>F8</kbd>
 Launch debugger   | <kbd>F5</kbd>
 Step over         | <kbd>F10</kbd>
 Step into         | <kbd>F11</kbd>
 Step out          | <kbd>Shift</kbd> + <kbd>F11</kbd>
 Toggle REPl       | `<leader>dr`
 DAP Hover         | `<leader>dh`
 DAP Preview       | `<leader>dp`
 REPL: Go to previous prompt | `[[`
 REPL: Go to next prompt | `]]`
 DAP Set conditional breakpoint | `<leader>db`
 DAP Log Message | `<leader>dl`

 For Python, there is an addional keymap for **DAP Debug closest method to cursor**: `<leader>dt`.

#### code_runner

 Action       | Keymap/command
 -------------|---------------
 Run code     | `<leader>rc`
 Run file     | `<leader>rf`
 Run project  | `<leader>rp`
 Close runner | `<leader>rx`

#### neotest

[Neotest](https://github.com/nvim-neotest/neotest?tab=readme-ov-file#installation) is an extensible framework for managing tests.

See [here](https://github.com/nvim-neotest/neotest?tab=readme-ov-file#supported-runners) for supported runners.

### Language-specific

#### R

[nvim-R](https://github.com/jalvesaq/Nvim-R) supports working with R code.

Nvim-R is a file-type plugin. Its functionalities will be available only when an R file type (.R, .Rmd, .qmd) is being edited.

> [!IMPORTANT]
> [You must start R from neovim](https://github.com/jamespeapen/Nvim-R/wiki/Known-Bugs-and-Workarounds#r-must-be-started-by-vim).

##### Settings

Start R automatically: `vim.g.R_auto_start = 1` (Change to 2 to start automatically when editing an R Script).
Start object browser automatically: `vim.g.R_objbr_auto_start = 1`

To view dataframes, install `visidata`, then `vim.g.R_csv_app = "terminal:vd"`.

To use radian, please refer to the instructions [here](https://github.com/randy3k/radian/blob/master/README.md#nvim-r-support).

For more details, see [online documentation](https://github.com/jamespeapen/Nvim-R/wiki).

##### Commands

The command `:Rinsert <cmd>` inserts one or more lines with the output of the R command sent to R e.g. `Rinsert dput(names(iris))` will insert in the buffer:

```r
c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", 
"Species")
```

Use `:RStop` to stop execution, i.e. sends `<C-c>` to R console.

<details>
<summary>Start/Close</summary>

 Action  | Keymap/command
 --------|------------------
 Start R | `<localleader>rf`
 Close R | `<localleader>rc`

</details>

<details>
<summary>Send</summary>

 Action                               | Keymap/command
 -------------------------------------|-------------------
 Send File                            | `<localleader>aa`
 Send File (echo)                     | `<localleader>ae`
 Send current block                   | `<localleader>bb`
 Send current block (echo)            | `<localleader>be`
 Send current block (move down)       | `<localleader>bd`
 Send current block (echo, move down) | `<localleader>ba`
 Send current chunk                   | `<localleader>cc`
 Send current chunk (echo)            | `<localleader>ce`
 Send current chunk (move down)       | `<localleader>cd`
 Send current chunk (echo, move down) | `<localleader>ca`
 Send current chunk + chunks above    | `<localleader>ch`
 Send selection                       | `<localleader>ss`
 Send selection (echo)                | `<localleader>se`
 Send selection (move down)           | `<localleader>sd`
 Send selection (echo, move down)     | `<localleader>sa`
 Send line                            | `<localleader>l`  
 Send line (move down)                | `<localleader>d`  

If the cursor is between manually inserted marks, the plugin will send the lines between them to R if you press `<localleader>bb`. If the cursor is above the first mark, the plugin will send from the beginning of the file to the
mark. If the cursor is below the last mark, the plugin will send from the mark
to the end of the file. The mark above the cursor is included and the mark
below is excluded from the block to be sent to R.

Use `\m` + `<motion>` to send motion to console, e.g. send paragraph to console with `\mip`.

</details>

<details>
<summary>RMarkdown + Quarto</summary>

 Action  | Keymap/command
 --------|------------------
 Make All| `<localleader>ka`
 Make Rmd HTML | `<localleader>kh`
 Knit current doc | `<localleader>kn`
 Make Rmd PDF | `<localleader>kp`
 Make Rmd (default) | `<localleader>kr`
 Quarto render | `<localleader>qr`
 Quarto preview | `<localleader>qp`
 Go to next chunk | `<localleader>gn`
 Go to previous chunk | `<localleader>gN`

</details>

<details>
<summary>Object Browser</summary>

 Action  | Keymap/command
 --------|------------------
 Open/close | `<localleader>ro`
 Collapse all | `<localleader>r-`
 Expand | `<localleader>r=`
 Toggle current | `<CR>`

</details>

<details>
<summary>Other</summary>

 Action  | Keymap/command
 --------|------------------
 `ls` | `<localleader>rv`
 Clear console | `<localleader>rr`
 View data.frame | `<localleader>rv`
 Show arguments | `<localleader>ra`
 Show examples | `localleader>re`
 Show help | `localleader>rh`
 Summary | `localleader>rs`
 Plot current object | `localleader>rg`
 Plot and summary | `localleader>rb`

</details>

#### C\#

<!-- TODO: Add info for roslyn.nvim -->
🚧 **TBD**

### Editing

#### [nvim-autopairs](https://github.com/windwp/nvim-autopairs)

nvim-autopairs provides auto-completion of brackets. One useful feature is **FastWrap**:

If you're in INSERT mode and have following text (`|` indicates cursor position):

```text
(|the(test)
```

Then pressing `<C-m>` will insert a closing bracket at the end!

```text
(the(test))
```

If there is text after the last bracket or no closing bracket, then you can choose where to put the bracket.

```text
(|the test is OK
```

Press `qh`: `(the) test is OK`.
Press `ql`: `(the )test is OK`.
Press `wh`: `(the test) is OK`.
Press `wl`: `(the test )is OK`.
Press `$`: `(the test is OK)`.

#### mini.move

[mini.move](https://github.com/echasnovski/mini.move) lets you move lines in Normal/Visual mode.

 Action | Keymap/command
--------|-------------------------------
 Left   | <kbd>Alt</kbd> + <kbd>h</kbd>
 Right  | <kbd>Alt</kbd> + <kbd>l</kbd>
 Up     | <kbd>Alt</kbd> + <kbd>k</kbd>
 Down   | <kbd>Alt</kbd> + <kbd>j</kbd>

#### nvim-spider

This plugin extends regular `web` motions to handle snake and camel case!

> [!NOTE]
> I have mapped the actions to different mappings to avoid clobbering the default mappings.

 Action                       | Keymap
------------------------------|-------------------------------
 Move to next word            | <kbd>Alt</kbd> + <kbd>w</kbd>
 Move to end of word          | <kbd>Alt</kbd> + <kbd>e</kbd>
 Move to beginning of word    | <kbd>Alt</kbd> + <kbd>b</kbd>
 Move to end of previous word | <kbd>g</kbd> + <kbd>E</kbd>
 Move to number               | <kbd>1</kbd>

#### [nvim-surround](https://github.com/kylechui/nvim-surround)

This provides three separate operators:

- `ds` to delete the surroundings: `ds{char}`.
- `cs` to change the surroundings: `cs{target}{replacement}`.
- `ys` to add surroundings: `ys{motion}{char}`.

Repeatable via `.`

There are also insert-mode `<C-g>s` and visual-mode `S` mappings, that add the delimiter pair around the cursor and visual selection, respectively.

For the following examples, `*` denotes the cursor position and `|` demarcates the start and end of a visual selection:

 Old text                                  | Command     | New text
-------------------------------------------|-------------|---------------------------
 `surr*ound_words`                         | `ysiw)`     | `(surround_words)`
 `*make strings`                           | `ys$"`      | `"make strings"`
 `[delete ar*ound me!]`                    | `ds]`       | `delete around me!`
 `remove <b>HTML t*ags</b>`                | `dst`       | `remove HTML tags`
 `'change quot*es'`                        | `cs'"`      | `"change quotes"`
 `<b>or tag* types</b>`                    | `csth1<CR>` | `<h1>or tag types</h1>`
 `delete(functi*on calls)`                 | `dsf`       | `function calls`
 `local str = *` (insert mode)             | `<C-g>s"`   | `local str = "*"`
 `local str = \|some text\|` (visual mode) | `S'`        | `local str = 'some text'`

Detailed information on how to use this plugin can be found in [`:h nvim-surround.usage`](https://github.com/kylechui/nvim-surround/blob/main/doc/nvim-surround.txt).

##### More Mappings

The  `yr`[^7] operator is a special case for `ys`, and operates on the **current line** via `yr{char}`, ignoring leading and trailing whitespace. The `yS` and `yR` operators are analogous to `ys` and `yr`, but add the delimiter pair on new lines.

[^7]: I overrode the default mappings of `yss` and `ySS` with `yr` and `yR` to make this smoother and eliminate warnings about overlapping keymaps.

 Old text       | Command | New text
----------------|---------|-------------------------------------------
 `hel*lo world` | `yr'`   | `'hello world'`
 `This is cool` | `yRtp`  | <code>\<p><br>This is cool<br>\<p></code>

The `<C-g>S` insert-mode operator is analogous to `C-g>s`, but adds the delimiter pair on new lines.

 Old text                    | Command  | New text
----------------------------|----------|------------------------------------
 `func_name*`  (insert mode) | `<C-g>s(` | <code>func\_name(<br>*<br>)</code>

The `cS` normal-mode operator is analogous to `cs`, but adds the replacement delimiter pair on new lines.

 Old text      | Command | New text
---------------|---------|---------------------------------
 `func(a*rgs)` | `cS))`  | <code>func(<br>args<br>)</code>

##### Default pairs

When using open-close pairs like `()`, adding a surround with opening character adds a space between character and text but using closing character does not.

 Old text | Command | New text
----------|---------|-------------
 `hel*lo` | `ysiw)` | `(hello)`
 `hel*lo` | `ysiw(` | `( hello )`

This applies for `()`, `{}`, `[]`, and `<>` pairs.

When deleting or changing open/close pairs, **the closing character always leaves whitespace intact**, while the opening character will try to remove a whitespace character (if it exists).

 Old text             | Command | New text
----------------------|---------|-------------------
 `{( sa*mple_text )}` | `ds(`   | `{sample_text}`
 `{( sa*mple_text )}` | `ds)`   | `{ sample_text }`
 `(sa*mple_text)`     | `cs({`  | `{ sample_text }`
 `( sa*mple_text )`   | `cs)}`  | `{ sample_text }`
 `( sa*mple_text )`   | `cs){`  | `{ sample_text }`

There is an "insert" key, denoted by `i`. It queries the user for what should go on the left and right hand sides of a selection, and adds the delimiter pair to the buffer.

<!-- markdownlint-disable-next-line MD038 -->
For example, typing `yri` for `Neo*vim` will bring up 2 prompts for left and right delimiter respectively. If we enter, `Hi, ` and ` is great.`, then text becomes: `Hi, Neovim is great.`

##### Aliases

`b` is an alias for `)` and r for `]`.

The other type of alias is a "tabular alias" e.g. `q` is for quotes (`'`, `"`, `` ` ``). It will always work on nearest match.

 Old text             | Command | New text
----------------------|---------|---------------------
 `"Nested '*quotes'"` | `dsq`   | `"Nested quotes"`
 `"Nes*ted 'quotes'"` | `dsq`   | `Nested 'quotes'`
 `"Nes*ted 'quotes'"` | `csqb`  | `(Nested 'quotes')`

Here are the aliases based on the default configuration:

```lua
aliases = {
    ["a"] = ">",
    ["b"] = ")",
    ["B"] = "}",
    ["r"] = "]",
    ["q"] = { '"', "'", "`" },
    ["s"] = { "}", "]", ")", ">", '"', "'", "`" },
}
```

##### Cursor

By default (`move_cursor = "begin"`), the cursor will move to the beginning of the action but you can change this so that the absolute position remains the same (`move_cursor = false`) or position relative to current character remains same (`move_cursor = "sticky"`).

#### multicursors

With [this plugin](https://github.com/smoka7/multicursors.nvim), you can edit and execute commands on multiple selections all at once!

The plugin provides the following commands:

 Command           | Description
-----------------|----------------------------------------------------------------------------------------------------------------
 `MCstart`         | Select the word under the cursor and start listening for the actions. In visual mode, it acts like `MCvisual`.
 `MCvisual`        | Select the last visual mode selection and start listening for the actions.
 `MCpattern`       | Prompts for a pattern and selects every match in the buffer.
 `MCvisualPattern` | Prompts for a pattern and selects every match in the visual selection.
 `MCunderCursor`   | Select the char under the cursor and start listening for the actions.
 `MCclear`         | Clears all the selections.

Use one of the above commands to enter **Multicursor** mode. This mode will allow you to edit or execute commands on multiple selections at once.

When it is activated, you should see a listing of commands to the right of the window as well as a visual indication in the status line.

To exit this mode, press <kbd>Esc</kbd>.

Let's show how to use this plugin for the case where you want to capitalize instances of `local` in your buffer and your cursor is on one of the instances:

1. `:MCStart` or `<leader>ms` in normal mode (`ms` in visual mode) will activate multi-cursor mode.
2. To select all instances, press `<C-a>`. If you want to select only a few instances, you can instead traverse instances via `n` (next match), `N` (previous match), `q` (skip current selection and find next), `Q` (skip current selection and find previous) -- all these mappings accept a `[count]`!
3. Press `gU` to capitalize.
4. Finally <kbd>Esc</kbd> to exit multicursor mode.

> [!TIP]
> We could have used `:MCpattern` instead to find all instances.

Prepend word in front of selected lines:

1. `:MCStart` or `<leader>ms` in normal mode (`ms` in visual mode) will activate multi-cursor mode.
2. If you are not at beginning of word, press `b`.
3. To select lines below (above), use `j` (`k`).
4. Enter MC Insert mode: `i`.
5. Type word to prepend.
6. Press <kbd>Esc</kbd> to exit MC Insert mode.
7. Finally press <kbd>Esc</kbd> again to exit multicursor mode.

##### Extend mode

Once you enter the Extend mode, you can expand or shrink your selections using Vim motions or Treesitter nodes. At first, the left side of the selections stays put, and selections get extended from the right side. But you can change which side of selections stay put by pressing `o`.

#### flash

[This plugin](<https://github.com/folke/flash.nvim>)  lets you search and navigate using labels + Treesitter integration.

When you search via `/`, each match will have a corresponding label, e.g. `a`. Press the key(s) matching that label (here, <kbd>a</kbd>) to go to the search result.

 Command                 | Normal mode  | Visual/operator-pending mode
 -------------------------|--------------|----------------------------
 Flash jump              | `<leader>fs` | `fs`
 Flash jump (Treesitter) | `<leader>fT` | `fT`
 Flash forward           | `<leader>ff` | `ff`
 Flash backward          | `<leader>fb` | `fb`
 Flash continue          | `<leader>fc` | `fc`
 Flash diagnostics       | `<leader>fd` | `fd`
 Flash Treesitter search | **NA**       | `fR`
 Flash toggle search     | `<leader>ft` | **NA**
 Flash current word      | `<leader>fw` | **NA**
 Move next               | `;`          | **NA**
 Move previous           | `,`          | **NA**

> [!NOTE]
> Move next/previous do not use the standard `;`/`,` as they do not seem to work.

**Flash jump** lets you search for text in any direction.

**Flash forward** searches only in the forward direction.

**Flash continue** continues the previous search.

**Flash jump (Treesitter)** lets you select Treesitter nodes based on cursor position.

**Flash Treesitter search** lets you select Treesitter nodes containing text searched for.

Let's illustrate usage for operator-pending and visual mode:

1. `dfs` would let you delete text based on a search and selected label.
2. `v$` selects from current position to end of line. Type `fb` to extend selection based on search (backwards only) and selected label. Then type `d` to delete visual selection.

#### grug-far

[grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) is a find-and-replace plugin for Neovim. It lets you use regular regex syntax with `ripgrep` and `ast-grep`.

`:GrugFar` launches a new buffer to search. Use `g?` to see list of commands for this buffer.

:bulb: I also added `<localleader>h` to toggle `--hidden` switch.

There are 2 keymaps available:

1. `<leader>g*` to find the current word.
2. `<leader>gc` to find in the current file.

> [!NOTE]
> Due to clunky UX and lack of docummentation, I probably will replace or remove this eventually.

#### undo-glow.nvim

[undo-glow.nvim](https://github.com/y3owk1n/undo-glow.nvim) highlights changed text after any action which modifies the current buffer. I have configured it to highlight text after undo (`u`), redo (`<C-r>`).

#### spellwarn.nvim

[This plugin](https://github.com/ravibrock/spellwarn.nvim) displays spelling errors as diagnostics.

#### precognition.nvim

[precognition.nvim](https://github.com/tris203/precognition.nvim) helps with discovering motions. It will display hints, e.g. `$` at end of current line.

#### nvim-various-textobjs

[This plugin](https://github.com/chrisgrieser/nvim-various-textobjs) provides additional textobjects that are quite useful. See [List of text objects](https://github.com/chrisgrieser/nvim-various-textobjs?tab=readme-ov-file#list-of-text-objects) for specifics -- `ai`, `aI`, `ii`, `C` from that table have been disabled.

Based on [this](https://github.com/chrisgrieser/nvim-various-textobjs?tab=readme-ov-file#smarter-gx), I added a keymap `gX` to smartly open a URL. Unlike the builtin `gx`, you do not have to have your cursor on a URL as it's forward seeking! Also, added `Dsi` to [delete surrounding indentation](https://github.com/chrisgrieser/nvim-various-textobjs?tab=readme-ov-file#delete-surrounding-indentation).

### LSP-related

#### garbage-day.nvim

[garbage-day.nvim](https://github.com/Zeioth/garbage-day.nvim) stops inactive LSP clients to free RAM.

#### lsplinks.nvim

[lsplinks.nvim](https://github.com/icholy/lsplinks.nvim) extends the behavior of `gx` to support LSP document links.

### Treesitter-related

`:Inspect` shows the highlight groups under the cursor.
`:InspectTree` shows the parsed syntax tree.
`:EditQuery` opens the Live Query Editor.

#### nvim-treesitter

 Action                                   | Keymap
------------------------------------------|--------------
 Initialize selection                     | `<leader>ti`
 Increment selection to named node        | `<leader>tk`
 Shrink selection to previous named node  | `<leader>tj`
 Increment selection to surrounding scope | `<leader>ts`

See `:h nvim-treesitter-commands`.

#### nvim-treesitter-context

This shows you current context when you scroll.

Commands: `TSContextEnable`, `TSContextDisable` and `TSContextToggle`.

#### treesitter-textobjects

Syntax aware text-objects, select, move, swap, and peek support.

##### Select

 Action                                            | Keymap
---------------------------------------------------|-----------
 Select outer part of an assignment                | `va=`
 Select inner part of an assignment                | `vi=`
 Select left hand side of an assignment            | `v=L`
 Select right hand side of an assignment           | `v=R`
 Select outer part of a parameter/argument         | `vaa`
 Select inner part of a parameter/argument         | `via`
 Select outer part of a conditional                | `vai`
 Select inner part of a conditional                | `vii`
 Select outer part of a loop                       | `val`
 Select inner part of a loop                       | `vil`
 Select outer part of a function call              | `vaf`
 Select inner part of a function call              | `vif`
 Select outer part of a method/function definition | `vam`
 Select inner part of a method/function definition | `vim`
 Select outer part of a class                      | `vac`
 Select inner part of a class                      | `vic`
 ~~Select language scope~~                         | ~~`vaS`~~

:bulb: Pattern is `v<selection_style><node>`.

##### Navigate

Pattern is `<D><L>`.
`<D>` (direction) = `[` for previous and `]` for next.
`<L>`(location) is lower case for start and upper case for end.

An example: `]f` will navigate to **start** (`f` is lower case) of **next** (`]`) **function call** (`f`).

###### Goto next start

 Action                         | Keymap
--------------------------------|--------
 Next function call start       | `]f`
 Next method/function def start | `]m`
 Next class start               | `]c`
 Next conditional start         | `]i`
 Next loop start                | `]l`
 Next fold                      | `]Z`

###### Goto next end

 Action                       | Keymap
------------------------------|--------
 Next function call end       | `]F`
 Next method/function def end | `]M`
 Next class end               | `]C`
 Next conditional end         | `]I`
 Next loop end                | `]L`

###### Goto previous start

 Action                             | Keymap
------------------------------------|--------
 Previous function call start       | `[f`
 Previous method/function def start | `[m`
 Previous class start               | `[c`
 Previous conditional start         | `[i`
 Previous loop start                | `[l`

###### Goto previous end

 Action                           | Keymap
----------------------------------|-------
 Previous function call end       | `[F`
 Previous method/function def end | `[M`
 Previous class end               | `[C`
 Previous conditional end         | `[I`
 Previous loop end                | `[L`

##### Swap

 Action                                | Keymap
--------------------------------------|--------------
 Swap with previous function           | `<leader>pm`
 Swap with previous property           | `<leader>p:`
 Swap with previous parameter/argument | `<leader>pa`
 Swap with next function               | `<leader>nm`
 Swap with next property               | `<leader>n:`
 Swap with next parameter/argument     | `<leader>na`

##### LSP interop

 Action                            | Keymap
-----------------------------------|--------------
 Peek definition of outer class    | `<leader>pc`
 Peek definition of outer function | `<leader>pf`

#### nvim-treesitter-refactor

 Action               | Keymap
----------------------|---------------------------------
 Go to next usage     | `]U`
 Go to previous usage | `[U`

#### nvim-tree-pairs

NeoVim plugin for jumping to the other end of the current Tree-sitter node using `%`

#### treewalker.nvim

[This plugin](https://github.com/aaronik/treewalker.nvim) enables fast navigation around the abstract syntax tree (AST).

Can navigate or swap nodes by specifying a direction (one of `Up`, `Down`, `Left`, or `Right`)

`Up` refers to the previous neighbor node, `Down` to next.
Similarly, `Left` refers to the first ancestor node that's on a different line while `Right` refers to the first node that's indented further than the current node.

Navigate: `:Treewalker <direction>` .
Swap nodes: `:Treewalker Swap<direction>`, e.g. `:Treewalker SwapUp`.

👉 `Swap{Left,Right}` are meant for swapping function arguments, enum members, list elements, etc.  

### Markdown

#### [markdown.nvim](https://github.com/tadmccorkle/markdown.nvim)

This provides Markdown-related functionality.

##### Inline-style

 Action                                                 | Keymap
 -------------------------------------------------------|------------------------------------------------
 Toggle inline style                                    | `gs` (+ motion for normal mode) + `{emphasis}`
 Line-wise toggle inline style                          | `gss{emphasis}`
 Delete emphasis surrounding cursor                     | `ds{emphasis}`
 Change emphasis surrounding cursor from `from` to `to` | `cs{from}{to}`

Emphasis can be one of the following:

1. Bold: `b`
2. Italics: `i`
3. Strikethrough: `s`
4. Code: `c`

Examples:

1. Make current word bold: `gseb`.
2. Italicize current line: `gssi`

For visual mode, I set up keyboard shortcuts identically to the ones for VS Code:

1. Bold: `<C-b>`
2. Italics: `<C-i>`
3. Strikethrough: `<A-s>`
4. Code (span): `<C-m><C-i>`

##### Links

 Action       | Keymap
 -------------|--------
 Add link[^8] | `gl`
 Follow link  | `gx`

[^8]: Use motion in normal mode, e.g. `gl$` to add link for text upto and including end of line.

Set cursor to current section heading | `<leader>mc`
Set cursor to parent section heading | `<leader>mp`
Set cursor to next section heading | `<leader>mh`
Set cursor to previous section heading | `<leader>mH`

##### Table of contents

- Use `:MDInsertToc [max_level]` to add a TOC.
- The `:MDToc [max_level]` and `:MDTocAll [max_level]` commands show a TOC for the current buffer in the current window's location list. `:MDToc` omits flagged headings and `:MDTocAll` includes all headings.

You can omit headings by flagging them as shown below:

```markdown
# heading 1 <!-- toc omit heading -->

<!-- toc omit heading -->
## heading 2

<!-- toc omit section -->
# section heading omitted
## subsection heading also omitted
```

##### Lists

These commands work in normal mode:

 Action                 | Keymap
 -----------------------|-------------
 Toggle task            | `<C-m><C-x>`
 Insert list item below | `<C-m><C-j>`
 Insert list item above | `<C-m><C-k>`

#### Markdown Preview

[This plugin](https://github.com/iamcco/markdown-preview.nvim) lets you preview Markdown in your browser with synchronized scrolling and flexible configuration.

Press `<leader>mP` to preview Markdown.

#### render-markdown.nvim

[This plugin](https://github.com/MeanderingProgrammer/render-markdown.nvim?tab=readme-ov-file) improves viewing Markdown files in Neovim.

Install `latext2text` for LaTeX rendering: `uv tool install pylatexenc`.

Press `<leader>tm` to toggle rendering.

Run `:RenderMarkdown config` to validate your configuration.

### VimTex

[VimTeX](https://github.com/lervag/vimtex) is a filetype and syntax plugin for LaTeX files. Commands use `<localleader>` (which I have mapped to `\`).

#### Configuration

Set `vim.g.vimtex_fold_enabled = 1` to enable folding.

Use following to specify PDF viewer:

```lua
vim.g.vimtex_view_method = "zathura_simple"
vim.g.vimtex_view_general_viewer = "zathura"
```

#### Basic Usage

 Action                  | Keymap/command
-------------------------|-------------------------------------
 Clean                   | `<localleader>lc` OR `:VimtexClean`
 Clean (full)            | `<localleader>lC` OR `:VimtexClean!`
 View errors             | `<localleader>le`
 View status             | `<localleader>lg` OR `:VimtexStatus`
 View status (all)       | `<localleader>lG` OR `:VimtexStatus!`
 View info               | `<localleader>li` OR `:VimtexInfo`  
 View info (all)         | `<localleader>lI` OR `:VimtexInfo!`  
 Stop compile            | `<localleader>lk` OR `:VimtexStop`
 Stop compile (all)      | `<localleader>lK` OR `:VimtexStopAll`
 Compile                 | `<localleader>ll` OR `:VimtexCompile`
 Imaps (insert mappings)[^9] | `<localleader>lm` OR `:VimtexImapsList`
 Compile output          | `<localleader>lo`
 View log                | `<localleader>lq` OR `:VimtexLog`
 View TOC                | `<localleader>lt`
 Forward search          | `<localleader>lv`

[^9]: Only visible if `vim.g.vimtex_imaps_enabled=1`.

 `:VimtexInfo` shows information about the project including packages used.

#### Motions and text objects

> [!NOTE]
> The word `section` below refers to `\section`, `\subsection` or `\subsubsection`, whichever comes first.

These motions support `count`, e.g. `2]]`.

Motion                 | Keymap
-----------------------|--------
Go to next start of a section     | `]]`
Go to previous start of section | `[[`
Go to previous end of section | `[]`
Go to next end of a section | `][`
**Go to previous start of an environment** | `[e`
**Go to next start of an environment** | `]e`
**Go to previous end of an environment** | `[E`
**Go to previous start of an environment** | `]E`
Go to next start of a math zone     | `]n`
Go to previous start of a math zone | `[n`
Go to next end of of a math zone  | `]N`
Go to previous end of a math zone  | `[N`

Go to next start of a LaTeX comment     | `]/`
Go to previous start of a LaTeX comment | `[/`
Go to next end of of a LaTeX comment  | `]*`
Go to previous end of a LaTeX comment  | `[*`

> [!NOTE]
> Mnemonic for keymaps: `]` means *next* and `[` means *previous*. You can tell based on which side `|` is on. Lower case letter means *start* while upper case means *end*.

> [!NOTE]
> Motions in **bold** have their keymaps overridden from default (see `:help vimtex-default-mappings`).

Use `%` to move between matching delimiters, inline-math `$` delimiters, and LaTeX environments.

Text object | Keymap| Example
-----------------------|--------|---
Surrounding environment   | `se` | `dse` removes surrounding brackets.
Inner environment | `ie` | `vie` selects inner text in evironment
Around environment | `ae` | `dae` deletes evironment
Toggle environment | `tse` | `tse` toggles environment.
Surrounding command | `sc` | `csc` changes a command while preserving the command's argument(s).
`*` in environments[^10] | `tss` | Toggle `*`.
Inner math environment | `i$ | `vi$` selects inner content of environment.
Outer math environment | `a$ | `va$` selects outer content of environment.
Inner section | `iP` | `viP` selects entire content below current section.
Around section | `aP` | `daP` deletes whole section including `\section{...}`.
Inner delimiter | `id`| `vid` applied to `{foo(1*+a)}` highlights `(1+a)`
Around delimiter| `ad` | `dad` applied to `$\alpha = (1 + *\frac{2}{3})$` becomes `$alpha = $`.
Surrounding delimiters  | `sd` | `tsd` toggles between `()` and `\left(\right)`.

:point_right: In the table above, `*` indicates cursor position.

[^10]: See [Difference between equation and equation* enviroment](https://tex.stackexchange.com/questions/539986/difference-between-equation-and-equation-enviroment) for more details.

### Linting + Formatting

#### conform

<!-- TODO: Finish -->
🚧 **TBD**

#### [nvim-lint](https://github.com/mfussenegger/nvim-lint)

This is an asynchronous linter plugin.

List of available linters: <https://github.com/mfussenegger/nvim-lint#available-linters>.

### Web

#### urlview

[urlview](https://github.com/axieax/urlview.nvim?tab=readme-ov-file) finds and displays URLs from a variety of search contexts, e.g. buffer, lazy.

- `:Urlview` or `:Urlview buffer` will display all the links in current buffer.
- `:Urlview lazy` will display all the links for `lazy.nvim` plugins.
- Use `]u` and `[u` to navigate to next and previous link.

#### rest

This is a asynchronous HTTP client that works with `http` files. Commands start with `:Rest`, e.g. `:Rest run`.
