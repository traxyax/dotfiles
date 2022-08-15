if [ $(which lsd | wc -l) = 1 ]; then
  alias ls='lsd'
fi

if [ $(which nvim | wc -l) = 1 ]; then
  alias vim='nvim'
  alias v='nvim'
fi

if [ $(which bat | wc -l) = 1 ]; then
  alias b='bat'
fi

alias cprf='cp -rf'
alias rmrf='rm -rf'

alias x='chmod u+x'

alias wmname='xprop | grep WM_CLASS'
