alias ll="ls -GFhla"
alias ls="ls -GFha"
alias mc="mc -d -S gotar"
alias mcedit="mcedit -d -S gotar"

export PATH="${HOME}/bin:/usr/local/sbin:${PATH}"
export EDITOR="mcedit"
export TZ='Europe/Zurich'

. "$HOME/.cargo/env"

[ -n "${TMUX}" ] || tmux $(tmux ls | rg -vq attached && echo "attach -d")
