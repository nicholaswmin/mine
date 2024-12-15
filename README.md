# mine

> [@nicholaswmin's][nicholaswmin] dotfiles

## Steps:

1. Install `.profile`
2. Install `programs.sh`
3. The rest (sort out Zed settings, etc.)

## `./profile` 

- stores main settings
 - Sets `projects` alias 
 - `serve` runs [`npx serve`][serve] in the current directory
- add it in home directory, i.e: `Users/nicholaswmin/.profile`
- The `./bashrc` sources it.
- terminal settings `settings.terminal` sources `~/.bashrc` on startup

## Zed Code editor

### Theme

- far more minimal.
- a lot of panels are disabled, also mutes colors.
- highlighting is influenced by Atom One Dark

### Setings

- working terminal
- disables a lot of unused features etc..
- custom keybindings:
  - add folder to project like Atom
  - open/close terminal via <key>Shift</key><key>n</key>/<key>Shift</key>+ <key>m</key>


## Typography

- Zed UI: Monaco (Susan Kare)
- Zed Buffer/Terminal: [Menlo][menlo] (Jim Lyles, shipped with old OSX)


[nicholaswmin]: https://github.com/nicholaswmin
[serve]: https://www.npmjs.com/package/serve
[monaco]: https://en.wikipedia.org/wiki/Monaco_(typeface)
[menlo]: https://en.wikipedia.org/wiki/Menlo_(typeface)
