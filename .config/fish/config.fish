set -x EDITOR /usr/bin/emacs -nw
set -x HIGHLIGHT_STYLE base16/gruvbox-dark-medium
# set -x PATH $HOME/.config/composer/vendor/bin:$PATH
set -x PATH $HOME/.emacs.distro/.doom/bin:$PATH
set -x PATH $HOME/.local/bin:$PATH
set -x TERM xterm-24bit
set -x VISUAL $EDITOR

set -gx DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0 #GWSL
set -gx PULSE_SERVER tcp:(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}') #GWSL
set -gx LIBGL_ALWAYS_INDIRECT 1 #GWSL

fish_vi_key_bindings
