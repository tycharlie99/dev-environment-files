# Development Environment Files

Here are the files that are used to set up the development environment.

## NeoVim

Please follow the submodules instructions to install the plugins.

> Please refer to the latest commit on the master branch for the latest configuration.

## Zsh

`.p10k.zsh` is the configuration file for the prompt using the [Powerlevel10k](https://github.com/romkatv/powerlevel10k).

`.zshrc` is the configuration file for zsh.

## Iterm2

`NorxZshTheme` is the theme for the iterm2.

The flollowing key bindings are used to move between words in the terminal:

```
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
```

> Iterm2 needs to set the key binding to `Esc+` for the above key bindings to work.

## Tmux

`.tmux.conf` is the configuration file for tmux.

## Git

`.gitconfig` is the configuration file for git.
`.gitmessage` is the template for the commit messages.
