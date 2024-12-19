# mine

> [@nicholaswmin's][nicholaswmin] dotfiles

> repo is for personal use

##  todos

- [ ] ~~`npm` config~~ use a zed `task` to scaffold ESM modules.
- [ ] `git` config
- [ ] local dev. SSL
- [x] zed
- [x] shell settings/profile etc

## shell

> overview: Use `bash` and tell MacOS to stfu about upgrading `zsh`

### steps

- import settings from `terminal-settings.terminal` .
- no idea how.

```bash
# make that stupid shitty warning shut the fuck up
# for a second
export BASH_SILENCE_DEPRECATION_WARNING=1
```

## `./profile` 

> overview

- stores main settings
  - Sets `projects` alias 
  - `serve` runs [`npx serve`][serve] in the current directory

### steps

- add it in home directory, i.e: `Users/nicholaswmin/.profile`
- The `./bashrc` sources it.
- terminal settings `settings.terminal` sources `~/.bashrc` on startup

## zed 

entire `~/.config/zed` folder is uploaded here

> [!IMPORTANT]   
> avoid changing settings abitrarily,   
> almost every tweak is chosen for a reason

### theme 

> started as ripoff of Atom's One Dark theme; most choices are now deliberate.

- inline code-completions use unobtrusive muted palette; avoid interference
  with actual typing.
- code completions popup blends unobtrusively with background; borderless, 
  muted palette.
- muted punctuation `{`, `(` palette to emphasize code keywords, functions.
- muted peripheral UI palette

looks like this (more or less):

<img width="800" alt="zed app screenshot, showing the theme colours" src="https://github.com/user-attachments/assets/b4fbed84-2791-4fc4-85bb-a9beddcbcb73"/>

### snippets

#### `javascript.json` 

- organised in sections, e.g: `Promise`, `for`, `Array` etc..
- syntax is *primarily* hyper-consise lambdas
- each snippet `prefix` is intentionally named to order them appropriately in
  the code-completion popup:
  - e.g:`Array.forEach` is renamed `Array.each` to avoid popping up
    on `for` for `for loop` etc.
      
#### `snippet.json`

supposed to be generic snippets that are not language-specific, 
empty file for now.

#### `html.json`

code snippets nicked from `friendly-snippets` package, with some modifications,
needs cleanup to keep only ones I use.

### settings

- disables shitty code-completion suggestions from [LSP: `vtsls`][vtsls]
  - *without* disabling the LSP itself, needed for validations, formatting etc.
  - keeps ony useful custom snippets in code-completion popup, finally.
- customise *some* code formatting rules
- enable Github Copilot inline-suggestion
- disable alternate LSPs for JavaScript, keep only `vtsls`
- working terminal
- disables a lot of unused features etc..
- custom keybindings:
  - add folder to project like Atom
  - open/close terminal via <key>Shift</key><key>n</key>/<key>Shift</key>+ <key>m</key>


## Typography

[Monaco][monaco] (Susan Kare), used in Zed UI

[Menlo][menlo] (Jim Lyles, shipped with old OSX), used in Zed Buffer & shell


## authors

[@nicholaswmin][nicholaswmin]

[MIT-0 License][mit-zero]


[mit-zero]: https://spdx.org/licenses/MIT-0.html
[nicholaswmin]: https://github.com/nicholaswmin
[serve]: https://www.npmjs.com/package/serve
[monaco]: https://en.wikipedia.org/wiki/Monaco_(typeface)
[menlo]: https://en.wikipedia.org/wiki/Menlo_(typeface)
