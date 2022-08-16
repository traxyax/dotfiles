if [ $(which lsd | grep 'not found' | wc -l) = 0 ]; then
  alias ls='lsd'
fi

if [ $(which nvim | grep 'not found' | wc -l) = 0 ]; then
  alias vim='nvim'
  alias v='nvim'
fi

if [ $(which bat | grep 'not found' | wc -l) = 0 ]; then
  alias b='bat'
fi

if [ $(which batman | grep 'not found' | wc -l) = 0 ]; then
  alias man='batman'
fi

alias cprf='cp -rf'
alias rmrf='rm -rf'

alias x='chmod u+x'

alias wmname='xprop | grep WM_CLASS'
