- [Neovim](#neovim)
  - [NvChad](#nvchad)
  - [Layout](#layout)
    - [Buffers](#buffers)
    - [Windows](#windows)
    - [Tabs](#tabs)
      - [Create new tab(s)](#create-new-tabs)
    - [Executing command in tab](#executing-command-in-tab)
  - [General Neovim info](#general-neovim-info)
    - [Options](#options)
    - [Autocommands](#autocommands)
    - [Find](#find)
    - [Marks](#marks)
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
    - [Executing external commands](#executing-external-commands)
  - [LSP](#lsp)
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
    - [Misc](#misc)
  - [Editing](#editing-1)
    - [Undo/redo](#undoredo)
    - [Insert](#insert)
    - [Delete/replace character](#deletereplace-character)
    - [Delete line](#delete-line)
      - [Delete lines in normal mode](#delete-lines-in-normal-mode)
      - [Delete lines in command-line mode](#delete-lines-in-command-line-mode)
    - [Yank](#yank)
    - [Paste](#paste)
    - [Tuck](#tuck)
    - [Comment](#comment)
    - [Indent](#indent)
    - [Join Lines](#join-lines)
    - [Moving lines](#moving-lines)
    - [Digraphs](#digraphs)
    - [Increment](#increment)
    - [Editing with motion](#editing-with-motion)
    - [Text object selection](#text-object-selection)
    - [Editing with Ex commands](#editing-with-ex-commands)
    - [Change case](#change-case)
    - [Editing line filtered by pattern](#editing-line-filtered-by-pattern)
    - [Exiting insert mode](#exiting-insert-mode)
  - [Completion and snippets](#completion-and-snippets)
  - [Recipes + FAQ](#recipes--faq)
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
  - [Plugins](#plugins)
    - [Utility](#utility)
      - [Toggleterm](#toggleterm)
        - [Sending lines to the terminal](#sending-lines-to-the-terminal)
      - [nvim-tree](#nvim-tree)
      - [Telescope](#telescope)
      - [Legendary](#legendary)
      - [vim-tmux-navigator](#vim-tmux-navigator)
      - [Toggle](#toggle)
      - [yazi](#yazi)
    - [UI](#ui)
      - [rainbow-delimiters](#rainbow-delimiters)
      - [hlchunk](#hlchunk)
      - [lualine](#lualine)
      - [bufferline](#bufferline)
      - [dropbar](#dropbar)
      - [nvim-ufo](#nvim-ufo)
    - [Coding](#coding)
      - [neominimap](#neominimap)
      - [Outline](#outline)
        - [Commands](#commands)
      - [Diffview](#diffview)
      - [nvim-dap](#nvim-dap)
      - [code\_runner](#code_runner)
      - [neotest](#neotest)
      - [Languages](#languages)
        - [nvim-R](#nvim-r)
          - [Settings](#settings)
          - [Commands](#commands-1)
    - [Editing](#editing-2)
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
      - [highlight-undo.nvim](#highlight-undonvim)
      - [spellwarn.nvim](#spellwarnnvim)
      - [precognition.nvim](#precognitionnvim)
    - [LSP-related](#lsp-related)
      - [garbage-day.nvim](#garbage-daynvim)
      - [lsp\_lines.nvim](#lsp_linesnvim)
      - [nvim-lsp-endhints](#nvim-lsp-endhints)
      - [roslyn.nvim](#roslynnvim)
    - [Treesitter-related](#treesitter-related)
      - [nvim-treesitter](#nvim-treesitter)
      - [ts-node-action](#ts-node-action)
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
      - [nvim-treesitter-textsubjects](#nvim-treesitter-textsubjects)
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

 Action             | Keymap/command
--------------------|---------------------------------------------------------------------
 Close buffer       | <kbd>Space</kbd> + <kbd>x</kbd>
 New buffer         | `<leader>bb` OR `:enew`
 List buffers       | `:buffers` OR `:ls` OR `:Telescope buffers`
 Next buffer        | `:bnext` OR `:bn`
 Previous buffer    | `:bprevious` OR `:bp`
 Get filetype       | `:echo &filetype`
 Go to next buffer  | <kbd>Tab</kbd>
 Go to prev. buffer | <kbd>Shift</kbd> + <kbd>Tab</kbd> OR <kbd>Ctrl</kbd> + <kbd>6</kbd>

 To run a command on every buffer, use `:bufdo <command>`, e.g. `:bufdo normal @a` will run the macro in register `a` on every buffer!
 To create a buffer, use `:badd <file>`, e.g. `:badd .gitconfig`.

### Windows

A window is a viewport onto a buffer. Different windows correspond to one or more buffers.

:bulb: Multiple windows displaying different parts of the same buffer is useful for comparing two sections of a file side by side.

Action | Keymap/command
---------|----------
New window | `:new`
Split[^1] | `:sp` OR <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>s</kbd>
Vertical split[^2] | `:vsp` OR <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>v</kbd>
Switch window | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>w</kbd>
Close window | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>q</kbd>
Close floating window | `:fclose:`
Swap window with next | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>x</kbd>
Split horizontally and edit a new file | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>n</kbd>
Resize windows to fit with the same size | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>=</kbd>
Decrease window height | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>-</kbd>
Increase window height | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>+</kbd>
Decrease window width | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd><</kbd>
Increase window width | <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>></kbd>

Navigate to left/below/above/right window: <kbd>Ctrl</kbd> + <kbd>w</kbd>, <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd>.

[^1]: Opens same buffer in new window below current window.

[^2]: Opens same buffer in new window to the right of current window.

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

Open terminal: `:terminal` OR `<leader>` + <kbd>h</kbd> / <kbd>v</kbd> (horizontal / vertical)

Install LSP (requires `mason.nvim`): `:MasonInstall bash-language-server`

Edit file: `:e <file>`

Read file: `:read <file>`

Write file: `:write` or `:w`. Can specify fillename if new or saving as new file.

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

To go to first non-blank character of line containing mark:  <kbd>'</kbd> + <kbd>A</kbd>.

To delete from current character to mark `a` position: ``d`a``.

:bulb: Whenever you jump across lines using motion, position gets saved in `` ` `` mark so you can jump to it using ``` '` ```!

:bulb: The built-in mark `'.` records the position of the last change in current!

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
`"bp` pastes content from `b` register.

In INSERT mode or COMMAND LINE mode, you can use `CTRL+R <reg>` to put the content of register `<reg>` in your current buffer.

#### [Expression Register](https://thevaluable.dev/vim-advanced/#the-insane-expression-register)

`=` register is for expressions.

Try this:

- Switch to INSERT mode and hit the keystroke `CTRL+r =`. You'll move to Vim's command-line.
- From there, you can type any Vimscript expression you want, like `system("ls")`.
- Hit `ENTER` to run the expression, and you'll see the output of the shell command `ls` directly inserted in your buffer!

#### Tips

- You can write to a register with a `:let` command, e.g.`:let @/ = "the"`

- Use `:reg(isters)` to display register contents. `:reg ab` will display contents of registers `a` and `b`.

- [Peekaboo](https://github.com/junegunn/vim-peekaboo) extends `"` and `@` in normal mode and <kbd>Ctrl</kbd> + <kbd>R</kbd> in insert mode so you can see the contents of the registers.

- Clear named register: Write an empty macro, e.g. `qaq` to clear `a` register.

- [Clear number registers](https://www.reddit.com/r/vim/comments/ugocqa/comment/i70w02c/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button): `call range(1,9)->map('setreg(v:val,"")')`

### Macros

1. Press <kbd>q</kbd>.
2. Type letter you want, e.g. <kbd>x</kbd>.
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
3. Replaces current character with new line ()`r^M`)
4. Indents (`>>`)
5. Adds new line via `o`
6. Exits insert mode (<kbd>Esc</kbd>)
7. Move down 1 line (`j`)
8. Finally recurses (`@r`).

> :bulb: Register should be empty before you record macro to avoid unforeseen problems.

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
**Peek fold** | <kbd>z</kbd> + <kbd>k</kbd>

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

### [Executing external commands](https://youtu.be/STSZt2c1rSA?feature=shared)

- `:!ls` displays results of `ls` in separate window.
- `:.!date` replaces current line with output of `date` command.
- `:%! sort` sort all lines.
- `:3,5! sort` sort lines 3-5.
- `:r! date` insert output of command below the current line.
- `:r <file>` insert contents of `<file>` at the current line.

> [!NOTE]
> `:r!` reads the results of a command.

## LSP

Action | Keymap/command
---------|----------
Go to definition | <kbd>Ctrl</kbd> + <kbd>]</kbd>
Go to previous diagnostic in current buffer | `[d` OR `:lua vim.diagnostic.goto_prev()`
Go to next diagnostic in current buffer | `]d` OR `:lua vim.diagnostic.goto_next()`
Show diagnotics under the cursor | `<C-w>d` or `<C-w><c-d>`

To learn what capabilities are available you can run the following command in a buffer with a started LSP client:

```vim
:lua =vim.lsp.get_clients()[1].server_capabilities
```

:point_right: Useful video to explain how code formatting works: [Code Formatting made easy](https://www.youtube.com/watch?v=mEqqkHLhlGY).

## Visual Mode

`v` - select current character. Use any motion to extend selection, e.g. `ve` or `v$`.

`V` - select current line. Can also extend with motion or count, e.g.`Vgg` selects from current line to start of file and `5V` selects 5 lines starting from current line.

`gv` selects previously highlighted visual area.
:point_right: This works in normal mode too.

Use `o` to move cursor to diagonally opposite corner of the visual selection.

`Q` and `@` in Visual mode will execute the last recorded/executed macro for all visually selected lines.

### Visual Block Mode

Press <kbd>Ctrl</kbd> + <kbd>q</kbd> or <kbd>Ctrl</kbd> + <kbd>v</kbd>[^3] to enter. Select a region of text, e.g. `2lj` selects a region with 3 columns and 2 rows. Press <kbd>Shift</kbd> + <kbd>i</kbd> to prepend or <kbd>Shift</kbd> + <kbd>a</kbd> to append. When you are done with your changes, press <kbd>Esc</kbd> and changes will be applied to all lines!

[^3]: If using Windows Terminal, make sure to disable default binding for <kbd>Ctrl</kbd> + <kbd>v</kbd>.

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

Delete in selection everything starting from `,`: `:'<,'> norm f,D`.
Delete in selection everything before `{`: `:'<,'>norm dt{`

`'<,'>` is a special range based on the selection made in visual mode. `'<` is a mark representing the first line selected and `'>` is a mark representing the last line.

:bulb: If you accidentally exit Visual mode before entering Command-line mode, you can use `*` as a shorthand for `'<,'>`. See [`:h :star`](https://neovim.io/doc/user/cmdline.html#%3Astar).

## Command-line mode

### Ranges

Commands that accept a range have `[range]` in front of their name in Vim help.

Examples of ranges:

- `%` refers to whole file
- `1,3` refers to lines 1-3
- `$` refers to the last line of buffer
- `*` refers to last selection you made in visual mode.
- `'a,'b` refers to range between mark `'a` and mark `'b`.

### Motion, editing

 Action                                     | Keymap/command
--------------------------------------------|------------------------------------------------
 Go to start                                | <kbd>Ctrl</kbd> + <kbd>b</kbd>
 Go to end                                  | <kbd>Ctrl</kbd> + <kbd>e</kbd>
 Go left one word                           | <kbd>Ctrl</kbd> + <kbd>←</kbd>
 Go right one word                          | <kbd>Ctrl</kbd> + <kbd>→</kbd>
 Erase line before cursor                   | <kbd>Ctrl</kbd> + <kbd>u</kbd>
 Paste register `a` contents                | <kbd>Ctrl</kbd> + <kbd>r</kbd> followed by `a`
 Show completions based on typed characters | <kbd>Ctrl</kbd> + <kbd>d</kbd>
 Edit commands in normal mode               | <kbd>Ctrl</kbd> + <kbd>f</kbd>

### History

Use `↑` and `↓` to navigate history.

`q:` opens window for `:` commands.
`q/` and `q?` open window for search patterns.
<kbd>Ctrl</kbd> + <kbd>f</kbd> opens appropriate history window.

Press <kbd>Enter</kbd> to select entry from history window.

## Search

### Patterns

See `:help pattern`.

Just like regex, `\t` matches tab, `\r` matches carriage return and `\n` matches EOL.

#### Quantifiers

Quantifiers are same as you would expect except they are prefixed by `\`: `\+` instead of `+`, `\?` (OR (`\=`) for `?`, `\{m, n}` instead of `{m, n}`.

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

#### Alternation and grouping

Need to use `\|` instead of `|`. So, instead of `\d|\s`, write `\d\|\s`.
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

#### Advanced usage

You can supply an offset: `/[pattern]/[offset]<CR>`.

`/[pattern]/s` places cursor at the start of the match.
`/[pattern]/s+2` places cursor 2 characters after the start of the match.
`/[pattern]/s-3` places cursor 3 characters before the start of the match.
`/[pattern]/e` places cursor at the end of the match.
`/[pattern]/e+2` and `/[pattern]/e-4` behave analogously to commands for start of match.

`/[pattern]/+2` and `/[pattern]/-4` places cursor 2 lines below and 4 lines above match respectively.

#### Navigation

After entering text for search, press <kbd>Enter</kbd>. All matches will be highlighted.

Type <kbd>n</kbd> to go to the next match or <kbd>N</kbd> to go to the previous match.

Press <kbd>Shift</kbd> + <kbd>q</kbd> to skip next match.

`gn` goes to match of your last search, enters Visual mode and selects it. You can continue to hit `n` (or `gn`) to select the area between the current match and the next match!
You can use this with an action, e.g. `dgn` to delete search result.

#### Clear results

Press <kbd>Esc</kbd> to clear search highlights.

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

`:[range]g[lobal]/{pattern}/[cmd]` is used to execute a command `[cmd]` on lines within `[range]` where pattern `[pattern]` matches.

`:[range]g[lobal]!/{pattern}/[cmd]` is used to execute a command `[cmd]` on lines within `[range]` where pattern `[pattern]` **DOES NOT** match.

You can also use `v` instead of `g!`

#### substitute

`s` is susbstitute command used to find and replace.

`:[range]s[ubstitute]/{pattern}/{string}/{flags} [count]`

If you omit `{pattern}`, then the matches are deleted.

If you use `:s`, it repeats the last search.

Examples:

`10,12:s/test/ok` replaces first occurrences of `test` in lines 10-12 with `ok`.

`:s/test/ok/g` (or `:.s/test/ok/g`) replaces all occurrences of `test` in current line with `ok`.

Replace in whole file: `:%/s/test/ok/g`.

Other flags besides `g`:

- `c` to confirm each submission
- `i` for case-insensitive search
- `I` for case-sensitive search

##### Change case for replacement

`\U` makes the following characters upper-case.
`\u` makes the next character upper-case.
`\L` makes the following characters lower-case.
`\l` makes the next character lower-case.

Use `:s/\<\l/\u&/g` to capitalize every word.

##### Replacement expressions

Use `\={expression}` as replacement, e.g. `:s/te\(\w\+\)/\=strftime("%Y-%m-%d")/g` will replace `test` with `2024-05-22`.

Can use `submatch()` for backreference, e.g.``:s/\d\+/\=sumatch(0)*2/g` will double every number found.

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
 View jumps                            | `:jumps`
 Go to previous jump position          | <kbd>Ctrl</kbd> + <kbd>o</kbd>
 Go to next jump position              | <kbd>Ctrl</kbd> + <kbd>i</kbd>
 View changes                          | `:changes`
 Go to previous change position        | <kbd>g</kbd> + <kbd>;</kbd>
 Go to next change position            | <kbd>g</kbd> + <kbd>,</kbd>
 Go to last insert position and INSERT | <kbd>g</kbd> + <kbd>i</kbd>

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

### Find characters

- Use `f{character}` to move to the next occurrence of a character in a line. For instance, `2f"` sends you to the second next occurrence of a double quote.
If your target is behind the cursor you can use `F{character}` to find the previous occurrence of a character.

Use `t{character}` to move the cursor just before the next occurrence of a character. Again, you can use `T{character}` to do the same as `t{character}` but backwards.

<kbd>;</kbd> repeats the last find (`f`/`F`/`t`/T`) motion in the same direction.

<kbd>,</kbd> repeats the last find motion in the opposite direction.

### Misc

<kbd>h</kbd>, <kbd>l</kbd> are used for navigating left and right.

 Action                                                                                       | Keymap/command
----------------------------------------------------------------------------------------------|-----------------------------
 Move to first NBC of first line                                                              | `gg`
 Move to first NBC of last line                                                               | <kbd>G</kbd>
 Moves to matching bracket (or end of current Treesitter node courtesy of `nvim-tree-pairs`s) | <kbd>%</kbd>
 Moves to line at 40% of total lines                                                          | `40%`
 Move to middle of window                                                                     | <kbd>M</kbd>
 Move to bottom of window                                                                     | <kbd>L</kbd>
 Move to first non-empty character 2 lines below | `2+`
 Move to first non-empty character 1 line above | `+`

## Editing

To execute a normal mode command from insert mode in Neovim, you can use the `<C-o>` (<kbd>Ctrl</kbd> + <kbd>o</kbd>) shortcut. This allows you to execute a single normal mode command without leaving insert mode. After executing the command, you will return to insert mode.

For good overview of different operators: <https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/editing-like-magic-with-vim-operators/>

In Vim, editing commands have the following structure: `<number><command><text object or motion>`.

This is a good read on text objects: <https://blog.carbonfive.com/vim-text-objects-the-definitive-guide/>.

### Undo/redo

 Action                                  | Keymap/command
-----------------------------------------|---------------------------------
 Undo                                    | <kbd>u</kbd>
 Redo                                    | <kbd>Ctrl</kbd> + <kbd>r</kbd>
 Undo latest changes on last edited line | <kbd>Shift</kbd> + <kbd>u</kbd>
 Redo latest changes on last edited line | <kbd>Shift</kbd> + <kbd>u</kbd>

Install [telescope-undo.nvim](https://github.com/debugloop/telescope-undo.nvim) to view undo tree and search changes.

Launch via `<leader>fu`. This will open a window in which you can browse undo tree.

If you have found the undo state you were looking for, you can use `<C-S-r>` ~~or `<C-cr>`~~ to revert to that state. If you'd rather not change your whole buffer, you can use `<cr>` to yank the additions of this undo state into your default register (use `<S-cr>` or `<C-y>` to yank the deletions).

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

### Delete/replace character

 Action                                                    | Keymap/command
-----------------------------------------------------------|---------------------------------------------
 Delete current character                                  | <kbd>x</kbd> OR <kbd>d</kbd> + <kbd>l</kbd>
 Delete current character and enter insert mode            | <kbd>s</kbd> OR <kbd>c</kbd> + <kbd>l</kbd>
 Replace current character with `a`                        | `Ra`
 Replace current character with `a`, return to Normal mode | `ra`
 Delete previous character                                 | <kbd>X</kbd> OR <kbd>d</kbd> + <kbd>h</kbd>

<kbd>r</kbd> accepts motion, e.g. `cde` becomes `aae` if you type `2ra` with cursor on `c`

<kbd>R</kbd> + multiple characters: `cde` becomes `abe` if you type `Rab` with cursor on `c`. Line will get extended as needed. Press <kbd>Esc</kbd> when done replacing.

### Delete line

<kbd>Shift</kbd> + <kbd>s</kbd> in normal mode, blanks the line, *sends you into insert mode*, also placing you at the right indent level too. It's perfect for wiping a line and writing something new without having to delete and then reposition the cursor.

<kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>s</kbd> (`Alt+S`), does the same in both modes.

#### Delete lines in normal mode

 Action                                       | Keymap/command
 ---------------------------------------------|----------------
 Delete current line                          | `dd` OR `:d`
 Delete current line and enter insert mode    | `S` OR `cc`
 Delete line and line above                   | `dk`
 Delete current line to bottom                | `dG`
 Delete from current character to end of line | `D` OR `d$`

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

### Yank

<kbd>y</kbd> is yank operator.

 Action                                     | Keymap/command
 -------------------------------------------|---------------
 Copy line and line above                   | `yk`
 Copy current line                          | `yy`
 Copy from current character to end of line | `y$` or `Y`

`yk` copies current line and above it.

You can also use yank in command-line mode: `:5y a` yanks line 5 into register `a`.

### Paste

 Action                                                          | Keymap/command
 -----------------------------------------------------------------|---------------------------------
 Paste below current line or to right of cursor                  | `p`
 Paste above current line or to left of cursor                   | <kbd>Shift</kbd> + <kbd>p</kbd>
 Paste below current line or right of cursor (matching indent)   | `]p`
 Paste above current line or to left of cursor (matching indent) | `]P`
 Same as `p` but puts the cursor after the pasted selection      | `gp`
 Same as `P` but puts the cursor after the pasted sele ction     | `gP`
 Paste before line 2                                             | `:2pu`
 Paste after line 3                                              | `:3pu`

Duplicate a line: `yyp`

Using `CTRL-R {register}` you can paste the contents of a register after the cursor in **INSERT** mode.

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

~~`<leader>cc` will comment out text smartly, i.e.use block comment style only if more than one line selected.~~

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

### Join Lines

Source: <https://youtu.be/rubhH6v4lN0?feature=shared>

 Action                                                                                            | Keymap/command
---------------------------------------------------------------------------------------------------|----------------
 Join current and next line (replace EOL with space[^4] and remove indentation except for current) | <kbd>J</kbd>
 Join current and next 2 lines (replace EOL with space)                                            | `3J`
 Join current and next line (remove EOL and preserve indentation)                                  | `gJ`

These also work in VISUAL or COMMAND-LINE mode.

[^4]: When there is a trailing space at end of line or next line begins with `)`, then no space is added.

### Moving lines

In command-line mode: `<orig>m<new>`, e.g. `3m0` moves 3rd line to top of file or `2m$` moves 2nd line to bottom.

This also works with ranges: `:10,15m4` to move lines 10-15 (both inclusive) after 4th line. To move after current line: `:10,15m.`.

`:m+1` moves current line below the line following it.

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

 Action                                                | Keymap/command
-------------------------------------------------------|----------------
 Delete from current line to the end of the file       | `dG`
 Delete from current line to the beginning of the file | `dgg`
 Copy until next `c` in current line                   | `yfc`
 Copy until end of sentence                            | `y)`
 Indent until end of paragraph                         | `>}`

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

To get ASCII value of current character: `ga`.

These work with `{count}` prefix, e.g. `2~`.

Use `guu` to change all text on the line to lowercase, `gUU` for uppercase.

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

Actions in **bold** above are custom actions I added in addition to those to provided by NvChad.

## Recipes + FAQ

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

You can use `<leader>fk`, `<leader>lk` to bring up GUI.
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

> [!NOTE]
> :warning: Doesn't seem to work reliably, e.g. `<A-d>d`should delete current line but is not working.

### Go backwards/forwards in time

`:earlier` (`:later`) can be used to go back (forward) in time ([source](<https://www.reddit.c> om/r/neovim/comments/1fu9an8/neovim_gems/)).

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

`TermSelect` will let user select terminal window to open or to focus if already open.

`<C-\>` will toggle last opened terminal in normal mode. You can prefix by count to specify a certain window.

`TermExec` allows you to execute a command in a terminal, e.g. `2TermExec cmd="git status" dir=~/<my-repo-path>` will run git status in terminal 2. :point_right: `cmd` argument **must** be quoted.

##### Sending lines to the terminal

 Action                                              | Keymap
-----------------------------------------------------|----------------------------------
 Send current line to terminal 1                     | `:ToggleTermSendCurrentLine 1`
 Send all the (whole) lines in your visual selection | `:ToggleTermSendVisualLines`
 Sends only the visually selected text               | `:ToggleTermSendVisualSelection`

Specifying terminal in above commandss is optional. If missing, it defaults to the first terminal.

#### nvim-tree

[nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) is a file explorer for Neovim.

To launch, press <kbd>Ctrl</kbd> + <kbd>n</kbd>. To close, press <kbd>q</kbd>.

Floating preview is courtesy of [nvim-tree-preview.lua](https://github.com/b0o/nvim-tree-preview.lua).

Here are some useful key maps for when the window is displayed:

 Action                          | Keymap
---------------------------------|----------------------------------
 **Change root to input path**   | <kbd>Alt</kbd> + <kbd>r</kbd>
 Change root to node             | <kbd>Ctrl</kbd> + <kbd>\]</kbd>
 **Change root to global cwd**   | <kbd>Ctrl</kbd> + <kbd>c</kbd>
 **Launch Find Files**           | <kbd>Ctrl</kbd> + <kbd>f</kbd>
 **Launch Live Grep**            | <kbd>Ctrl</kbd> + <kbd>g</kbd>
 **Print path**                  | <kbd>Ctrl</kbd> + <kbd>p</kbd>
 Open: Horizontal split          | <kbd>Ctrl</kbd> + <kbd>x</kbd>
 Open                            | <kbd>Enter</kbd>
 Open: Vertical split            | <kbd>Shift</kbd> + <kbd>l</kbd>
 Next sibling                    | <kbd>></kbd>
 Previous sibling                | <kbd><</kbd>
 Change root to parent           | <kbd>-</kbd>
 Prev git                        | <kbd>\[</kbd> + <kbd>c</kbd>
 Next git                        | <kbd>\]</kbd> + <kbd>c</kbd>
 Delete                          | <kbd>d</kbd>
 Expand All                      | <kbd>Shift</kbd> + <kbd>e</kbd>
 Rename: Basename                | <kbd>e</kbd>
 Live Filter: Clear              | <kbd>Shift</kbd> + <kbd>f</kbd>
 Live Filter: Search             | <kbd>f</kbd>
 Help                            | <kbd>g</kbd> + <kbd>?</kbd>
 Copy Basename                   | <kbd>g</kbd> +  <kbd>e</kbd>
 **Toggle hidden files**         | <kbd>g</kbd> +  <kbd>h</kbd>
 **Toggle group empty**          | <kbd>g</kbd> +  <kbd>l</kbd>
 Copy absolute path              | <kbd>g</kbd> +  <kbd>y</kbd>
 **Close parent folder**         | <kbd>h</kbd>
 **Collapse all**                | <kbd>Shift</kbd> + <kbd>h</kbd>
 Move down                       | <kbd>j</kbd>
 Move up                         | <kbd>k</kbd>
 **Expand folder or go to file** | <kbd>l</kbd>
 **Vsplit Preview**              | <kbd>Shift</kbd> + <kbd>l</kbd>
 Toggle bookmark                 | <kbd>m</kbd>
 Collapse all                    | <kbd>Shift</kbd> + <kbd>w</kbd>
 Copy name                       | <kbd>y</kbd>
 Copy relative path              | <kbd>Shift</kbd> +  <kbd>y</kbd>
 **Open folder or show preview** | <kbd>Tab</kbd>
 **Preview (Watch)**             | <kbd>P</kbd>
**Close Preview/Unwatch**        | <kbd>Esc</kbd>

All actions in **bold** in the table above have custom keymaps. The other commands use plugin defaults.

#### Telescope

[Telescope](https://github.com/nvim-telescope/telescope.nvim) is a very powerful plugin to search for items.

- `actions.which_key` (<kbd>Ctrl</kbd> + <kbd>/</kbd> in **insert** or <kbd>?</kbd> in **normal** mode)  shows the mappings for your picker. Press again to close. Default mappings are [here](https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/mappings.lua).

- `builtin.grep_string` searches for the string under your cursor or selection in your current working directory.
`builtin.live_grep` searches for a string in your current working directory and gets results live as you type, respects `.gitignore`. (Requires **ripgrep**)

- <kbd>Alt</kbd> + <kbd>p</kbd> toggles preview.

- <kbd>s</kbd> in normal mode or <kbd>Alt</kbd> + <kbd>s</kbd> in insert mode activates search via [flash.nvim](https://github.com/folke/flash.nvim) plugin.

- `:Telescope` lists all builtin pickers.
- Example of custom command: `Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍`. For more details, see `:help telescope.command.`

<details>
  <summary>General</summary>

 Action                 | Keymap/command
 -----------------------|---------------
 Find buffers           | `<leaderfB`
 Commands               | `<leader>fcC`
 Command History        | `<leader>fch`
 Colorschemes           | `<leader>fcs`
 Keymap                 | `<leader>fk`
 Search History         | `<leader>fS`
 Undo tree              | `<leader>fu`
 Search buffers         | `<leader>fy`
 Search emojis          | `<leader>fe`
 Jumplist               | `<leader>fj`
 Resume previous search | `<leader>fr`
 Registers              | `<leader>fR`
 LuaSnip                | `<leader>fs`
 Tags                   | `<leader>ftt`
 Treesitter             | `<leader>fts`
 TODO/Fix/FixMe         | `<leader>ftS`
 Noice                  | `<leader>fn`
 YAML schemas           | `<leader>fY`

</details>

<details>
  <summary>Files</summary>

 Action              | Keymap/command
 --------------------|--------------------
 File browser        | `<leader>fb`
 Search home         | `<leader>fh`
 Search config       | `<leader>fcc`
 frecency            | `<leader>fF<leader>`
 frecency (CWD)      | `<leader>fFc`
 Old files           | `<leader>fo`
 Find files          | `<leader>ff`
 Live grep           | `<leader>fw`
 Live grep (Plugins) | `<leader>fp`
 Multi-grep          | `<leader>f/`

Courtesy of [togglescope](https://github.com/Theo-Steiner/togglescope), `C-\>` toggles between excluding (default) and including hidden and ignored files for **Find files** and **Live grep**.

Multi-grep lets you also filter on file extension, e.g. enter `\d+  *.cs` to find numbers in C# source code.

</details>

<details>
  <summary>Help</summary>

 Action                  | Keymap/command
-------------------------|----------------
 Help tags               | `<leader>fHt`
 Man Pages               | `<leader>fm`
 Grep help (live grep)   | `<leader>fHl`
 Grep help (grep string) | `<leader>fHg`

</details>

<details>
  <summary>LSP</summary>

 Action                           | Keymap/command
----------------------------------|---------------
 Search Document Symbols          | `<leader>fls`
 Search Workspace Symbols         | `<leader>flw`
 Search Dynamic Workspace Symbols | `<leader>fld`

</details>

<details>
  <summary>git</summary>

 Action                   | Keymap/command
--------------------------|----------------
 Checkout branch          | `<leader>ga`
 Checkout commit          | `<leader>gc`
 git stash                | `<leader>gs`
 git status (from NvChad) | `<leader>gt`

</details>

<details>
  <summary>DAP</summary>

 Action             | Keymap/command
--------------------|----------------
 List breakpoints   | `<leader>fdb`
 List commands      | `<leader>fdc`
 List configuration | `<leader>fdC`
 List frames        | `<leader>fdf`
 List variables     | `<leader>fdv`

</details>

#### Legendary

[Legendary](https://github.com/mrjones2014/legendary.nvim) provides a legend for your keymaps, commands, and autocmds.

 Action                                                    | Keymap/command
 -----------------------------------------------------------|------------------------
 Search commands                                           | `:Legendary commands`
 Search functions                                          | `:Legendary functions`
 Search keymaps                                            | `:Legendary keymaps`
 Legend                                                    | `:Legendary`
 Repeat the last item executed via legendary.nvim's finder | `:LegendaryRepeat`

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

#### bufferline

[bufferline.nvim](https://github.com/akinsho/bufferline.nvim) provides a snazzy 💅 buffer line (with tabpage integration).

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

### Coding

#### neominimap

[This plugin](https://github.com/Isrothy/neominimap.nvim) provides a visual representation of your code structure on the side of your windows, similar to the minimap found in VS Code.

You can customize the display to show diagnostics, marks, search results, git information.

 Action                             | Keymap
------------------------------------|-------------
 Toggle global minimap              | `<leader>ntg`
 Refresh global minimap             | `<leader>nrg`
 Toggle minimap for current window  | `<leader>ntw`
 Refresh minimap for current window | `<leader>nrw`
 Toggle minimap for current tab     | `<leader>ntt`
 Refresh minimap for current tab    | `<leader>nrt`
 Toggle minimap for current buffer  | `<leader>ntb`
 Refresh minimap for current buffer | `<leader>nrb`
 Toggle focus on minimap            | `<leader>ntf`

#### Outline

[Outline.nvim](https://github.com/hedyhli/outline.nvim) produces a code outline sidebar powered by LSP + Treesitter.

See [here](https://github.com/hedyhli/outline.nvim#default-keymaps) for default keymaps. They are only active for the outline window.

##### Commands

- `:Outline[!]` toggles outline. If you use `!`, the cursor focus stays in your original window.
You can use command modifiers `topleft`/`aboveleft`/`botright`/`belowright` on this command.

- `:OutlineOpen[!]` opens outline. You can use modified to specify location as well.

- Use `:OutlineFocusOutline` to focus on outline.

- Use `:OutlineFocusCode` to focus on code.

- `:OutlineFollow[!]` goes to corresponding node in outline based on cursor position in code, and focus on the outline window (use `!` to keep focus on original window).

  Action             | Keymap
 --------------------|-------------
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

Tried to keep same shortcuts as Visual Studio:

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

#### Languages

##### nvim-R

[This plugin](https://github.com/jalvesaq/Nvim-R) supports working with R code.

Nvim-R is a file-type plugin. Its functionalities will be available only when an R file type (.R, .Rmd, .qmd) is being edited.

:point_right: [You must start R from neovim](https://github.com/jamespeapen/Nvim-R/wiki/Known-Bugs-and-Workarounds#r-must-be-started-by-vim).

###### Settings

Start R automatically: `vim.g.R_auto_start = 1` (Change to 2 to start automatically when editing an R Script).
Start object browser automatically: `vim.g.R_objbr_auto_start = 1`

To view dataframes, install `visidata`, then `vim.g.R_csv_app = "terminal:vd"`.

To use radian, refer to instructions [here](https://github.com/randy3k/radian/blob/master/README.md#nvim-r-support).

For more details, see [online documentation](https://github.com/jamespeapen/Nvim-R/wiki).

###### Commands

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

### Editing

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

> :bulb: I have mapped the actions to different mappings to avoid clobbering the default mappings.

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

The  `yr`[^5] operator is a special case for `ys`, and operates on the **current line** via `yr{char}`, ignoring leading and trailing whitespace. The `yS` and `yR` operators are analogous to `ys` and `yr`, but add the delimiter pair on new lines.

[^5]: I overrode the default mappings of `yss` and `ySS` with `yr` and `yR` to make this smoother and eliminate warnings about overlapping keymaps.

 Old text       | Command | New text
----------------|---------|-------------------------------------------
 `hel*lo world` | `yr'`   | `'hello world'`
 `This is cool` | `yRtp`  | <code>\<p><br>This is cool<br>\<p></code>

The `<C-g>S` insert-mode operator is analogous to `C-g>s`, but adds the delimiter pair on new lines.

 Old text                    | Command  | New text
----------------------------|----------|------------------------------------
 `func_name*`  (insert mode) | `<C-g>S` | <code>func\_name(<br>*<br>)</code>

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

> :bulb: We could have used `:MCpattern` instead to find all instances.

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
 -------------------------|--------------|---------------------------
 Flash jump              | `<leader>ss` | `ss`
 Flash jump (Treesitter) | `<leader>sT` | `sT`
 Flash forward           | `<leader>sf` | `sf`
 Flash backward          | `<leader>sb` | `sb`
 Flash continue          | `<leader>sc` | `sc`
 Flash diagnostics       | `<leader>sd` | `sd`
 Flash Treesitter search | **NA**       | `sR`
 Flash toggle search     | `<leader>st` | **NA**
 Flash current word      | `<leader>sw` | **NA**

 **Flash jump** lets you search for text in any direction.
 **Flash forward** searches only in the forward direction.
 **Flash continue** continues the previous search.
 **Flash jump (Treesitter)** lets you select Treesitter nodes based on cursor position.
**Flash Treesitter search** lets you select Treesitter nodes containing text searched for.

Let's illustrate usage for operator-pending and visual mode:

1. `dss` would let you delete text based on a search and selected label.
2. `v$` selects from current position to end of line. Type `sb` to extend selection based on search (backwards only) and selected label. Then type `d` to delete visual selection.

#### highlight-undo.nvim

[highlight-undo.nvim](https://github.com/tzachar/highlight-undo.nvim) highlights changed text after any action which modifies the current buffer. It is configurable -- in my config, it highlights text after undo (`u`), redo (`<C-r>`) and paste (`p` and `P`).

#### spellwarn.nvim

[This plugin](https://github.com/ravibrock/spellwarn.nvim) displays spelling errors as diagnostics.

#### precognition.nvim

[precognition.nvim](https://github.com/tris203/precognition.nvim) helps with discovering motions. It will display hints, e.g. `$` at end of current line.

### LSP-related

#### garbage-day.nvim

[garbage-day.nvim](https://github.com/Zeioth/garbage-day.nvim) stops inactive LSP clients to free RAM.

#### lsp_lines.nvim

> :bulb: For my config, enabled via `vim.g.lsp_inline = true`.

From [README](https://git.sr.ht/~whynothugo/lsp_lines.nvim):

> `lsp_lines` is a simple neovim plugin that renders diagnostics using virtual lines on top of the real line of code.

Use `<leader>ltd` to toggle virtual lines.

Disable functionality: `vim.diagnostic.config({ virtual_lines = false })`

And re-enable via: `vim.diagnostic.config({ virtual_lines = true })`

To show virtual lines only for the current line's diagnostics:

```lua
vim.diagnostic.config({ virtual_lines = { only\_current\_line = true } })
```

If you don't want to highlight the entire diagnostic line, use:

```lua
vim.diagnostic.config({ virtual_lines = { highlight\_whole\_line = false } })
```

#### nvim-lsp-endhints

> :bulb: For my config, enabled via `vim.g.lsp_inline = false`.

[This plugin](https://github.com/chrisgrieser/nvim-lsp-endhints) displays LSP inlay hints at the end of the line, rather than within the line.

Use `<leader>lte` to toggle behavior.

#### roslyn.nvim

<!-- TODO: Finish -->
🚧 **TBD**

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

#### ts-node-action

Lets you run functions on Tree-sitter nodes, and update the buffer with the result.

`gA` is used to trigger action (default is change case).

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
 Select left hand side of an assignment            | `vL=`
 Select right hand side of an assignment           | `vR=`
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

> :warning: Some of these keymaps do not seem to work.

 Action               | Keymap
----------------------|---------------------------------
 Smart rename         | `grr`
 List definitions     | `gld`
 List definitions TOC | `glt`
 Go to next usage     | <kbd>Shift</kbd> + <kbd>*</kbd>
 Go to previous usage | <kbd>Shift</kbd> + <kbd>#</kbd>

#### nvim-treesitter-textsubjects

Location and syntax aware text objects which *do what you mean*.

 Motion                 | Keymap
------------------------|--------
 Smart select           | `.`
 Select outer container | `;`
 Select inner container | `i;`

These work with `d`, `v`, etc.

#### nvim-tree-pairs

NeoVim plugin for jumping to the other end of the current Tree-sitter node using `%`

#### treewalker.nvim

[This plugin](https://github.com/aaronik/treewalker.nvim) enables fast navigation around the abstract syntax tree (AST).

Can navigate or swap nodes by specifying a direction (one of `Up`, `Down`, `Left`, or `Right`)

Navigate: `:Treewalker <direction>` .
Swap nodes: `:Treewalker Swap<direction>`, e.g. `:Treewalker SwapUp`.

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
 Add link[^6] | `gl`
 Follow link  | `gx`

[^6]: Use motion in normal mode, e.g. `gl$` to add link for text upto and including end of line.

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

Press `<leader>mt` to toggle rendering.

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
 Imaps (insert mappings)[^7] | `<localleader>lm` OR `:VimtexImapsList`
 Compile output          | `<localleader>lo`
 View log                | `<localleader>lq` OR `:VimtexLog`
 View TOC                | `<localleader>lt`
 Forward search          | `<localleader>lv`

[^7]: Only visible if `vim.g.vimtex_imaps_enabled=1`.

 `:VimtexInfo` shows information about the project including packages used.

#### Motions and text objects

:bulb: The word `section` below refers to `\section`, `\subsection` or `\subsubsection`, whichever comes first.

These motions support `count`, e.g. `2]]`.

Motion                 | Keymap
-----------------------|--------
Go to next end of a section     | `]]`
Go to previous start of section | `[[`
Go to previous end of section | `[]`
Go to next beginning of a section | `][`
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
Surrounding command | `sc` | `csc` changes a command while preserving the command's argument(s).
`*` in environments[^8] | `tse` | Toggle `*`.
Inner math environment | `i$ | `vi$` selects inner content of environment.
Outer math environment | `a$ | `va$` selects outer content of environment.
Inner section | `iP` | `viP` selects entire content below current section.
Around section | `aP` | `daP` deletes whole section including `\section{...}`.
Inner delimiter | `id`| `vid` applied to `{foo(1*+a)}` highlights `(1+a)`
Around delimiter| `ad` | `dad` applied to `$\alpha = (1 + *\frac{2}{3})$` becomes `$alpha = $`.
Surrounding delimiters  | `sd` | `tsd` toggles between `()` and `\left(\right)`.

🚧 **FINISH LATER**

:point_right: In the table above, `*` indicates cursor position.

[^8]: See [Difference between equation and equation* enviroment](https://tex.stackexchange.com/questions/539986/difference-between-equation-and-equation-enviroment) for more details.

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
