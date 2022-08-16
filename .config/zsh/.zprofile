if [ $(which nvim | grep 'not found' | wc -l) = 0 ]; then
  EDITOR=nvim
  VISUAL_EDITOR=$EDITOR
  ALTERNATE_EDITOR=vim

  export EDITOR VISUAL_EDITOR ALTERNATE_EDITOR
fi

if [ $(which bat | grep 'not found' | wc -l) = 0 ]; then
  PAGER=bat
  MANPAGER=less
  export PAGER MANPAGER
fi

: '
if [ $(which batman | wc -l) = 1 ]; then
  export MANPAGER=batman
fi
'

export OPENCV_LOG_LEVEL=0
export OPENCV_VIDEOIO_PRIORITY_INTEL_MFX=0

[ -f $HOME/.xprofile ] && source $HOME/.xprofile
