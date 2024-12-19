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

import settings from `terminal-settings.terminal`, in some way.

```bash
# make that stupid shitty warning shut the fuck up
# for a second
export BASH_SILENCE_DEPRECATION_WARNING=1
```

### Typography

[Monaco][monaco] by Susan Kare;used in Zed UI  

[Menlo][menlo] by Jim Lyles, shipped with old OSX; used in Zed buffer & shell


## [`zed`][zed]

entire `~/.config/zed` folder is uploaded here,   
so just replace that folder as-is.

> [!IMPORTANT]   
> avoid changing these settings abitrarily,   
> almost every tweak is chosen for a reason

### CLI

CLI is installed in-app: `Zed` -> `Install CLI` from menu bar

### theme `nicholaswmin.json`

> started as ripoff of Atom's One Dark theme; most choices are now deliberate.

- inline code-completions use unobtrusive muted palette; avoid interference
  with actual typing.
- code completions popup blends unobtrusively with background; borderless, 
  muted palette.
- muted punctuation `{`, `(` palette to emphasize code keywords, functions.
- muted peripheral UI palette

looks like this (more or less):

<img width="900" alt="zed app screenshot, showing the theme colours" src="https://github.com/user-attachments/assets/273cc94f-52d8-4cfb-b973-4ff775c6f62c" />

### snippets

#### `javascript.json` 

- organised in sections, e.g: `Promise`, `for`, `Array` etc..
  - snippet fields follow (more-or-less) some reasoned format so don't just 
    dump shit in there and messy it up.
- syntax style prefers consise lambdas but includes full-body as well
  in most cases.
- each snippet `prefix` is intentionally named to order them appropriately in
  the code-completion popup.   
  e.g:`Array.forEach` renamed to `Array.each`; avoids mixing-in with `for` 
  loop code completions
      
#### `snippet.json`

supposed to be generic snippets that are not language-specific, 
empty file for now.

#### `html.json`

code snippets nicked from `friendly-snippets` package, with some modifications,
needs cleanup to keep only ones I use.

### `settings.json`

- disable alternate LSPs for JavaScript, keep only [`vtsls`][vtsls]
- disables shitty code-completion suggestions from [LSP: `vtsls`][vtsls]
  - *without* disabling the LSP itself;   
    required for syntax validation, formatting etc.
  - keeps only custom snippets in code-completion popup, finally.
- customise *some* formatting rules so code-formatting is now usable.
- enable Github Copilot inline-suggestions
- working terminal
- disables UI unused features, panels
- custom keybindings:
  - add folder to project like Atom
  - open/close terminal via <key>Shift</key><key>n</key>/<key>Shift</key>+ <key>m</key>


### shell logins

#### `.profile`

- add it in home directory, i.e: `Users/nicholaswmin/.profile`
- The `./bashrc` sources it.
- terminal settings `settings.terminal` sources `~/.bashrc` on startup

#### `.bashrc`

no idea where this goes for now but ok

## authors

[@nicholaswmin][nicholaswmin]

[MIT-0 License][mit-zero]


[zed]: https://zed.dev/
[mit-zero]: https://spdx.org/licenses/MIT-0.html
[nicholaswmin]: https://github.com/nicholaswmin
[serve]: https://www.npmjs.com/package/serve
[monaco]: https://en.wikipedia.org/wiki/Monaco_(typeface)
[menlo]: https://en.wikipedia.org/wiki/Menlo_(typeface)
[vtsls]: https://github.com/yioneko/vtsls/blob/main/packages/service/configuration.schema.json
