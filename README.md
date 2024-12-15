# mine

> [@nicholaswmin's][nicholaswmin] dotfiles

> repo is for personal use but   
> just in case, license is [MIT-0][mit-zero].

1. follow steps in order of precedence
2. Install typography 
3. The rest (sort out Zed settings, etc.)

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

> overview

- v. minimal, pallette is muted, no icons, disabled panels etc..
    - some stuff that impact usability can't be thrown away obvs.
 - syntax highlighting is influenced by Atom One Dark but even more minimal
   - tries to be sensible about colors rather than paint keywords arbitrarily,s
  still looks meh but ok.
 - rest are just sensible choices that play well with each other  
 - terminal (in-app) uses the "vibrant" color palette, from Apple's  
  Human Interface Guidelines, current version


looks like this (more or less):

<img width="800" alt="screenshot of zed code editor showing the theme colours" src="https://github.com/user-attachments/assets/ce2632b8-8a5c-42f2-971c-3bc3e0514ec5" />


- working terminal
- disables a lot of unused features etc..
- custom keybindings:
  - add folder to project like Atom
  - open/close terminal via <key>Shift</key><key>n</key>/<key>Shift</key>+ <key>m</key>

## steps

`users/nicholaswmin/config/zed` should look like:

- `themes/nicholaswmin.json` <-- theme file
- `keybindings.json` 
- `settings.json`



## Typography

[Monaco][monaco] (Susan Kare), used in Zed UI

[Menlo][menlo] (Jim Lyles, shipped with old OSX), used in Zed Buffer & shell


[mit-zero]: https://spdx.org/licenses/MIT-0.html
[nicholaswmin]: https://github.com/nicholaswmin
[serve]: https://www.npmjs.com/package/serve
[monaco]: https://en.wikipedia.org/wiki/Monaco_(typeface)
[menlo]: https://en.wikipedia.org/wiki/Menlo_(typeface)
