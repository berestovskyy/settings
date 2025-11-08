alias ll="ls -GFhla"
alias ls="ls -GFha"
alias mc="mc -d -S gotar"
alias mcedit="mcedit -d -S gotar"
alias top="top -o cpu" # for macOS

export PATH="${HOME}/bin:/usr/local/sbin:${PATH}"
export EDITOR="mcedit"

PS1="a@b %~ %# "

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:~/.zfunc:$FPATH
    autoload -Uz compinit
    compinit
fi
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
