# set -x DOCKER_DIR $HOME/.docker/run
# set -x DOCKER_DIR /mnt/wsl/docker
# set -x DOCKER_HOST unix://$DOCKER_SOCK
# set -x DOCKER_SOCK $DOCKER_DIR/docker.sock
# set -x GEM_HOME $HOME/gems
# set -x PATH $HOME/.config/composer/vendor/bin:$PATH
# set -x PATH $HOME/gems/bin:$PATH
set -x EDITOR /usr/bin/emacs -nw
set -x GPG_TTY (tty)
set -x HIGHLIGHT_STYLE base16/gruvbox-dark-medium
set -x PATH $HOME/.emacs.distro/.doom/bin:$PATH
set -x PATH $HOME/.local/bin:$PATH
set -x PATH $HOME/.local/share/gem/ruby/3.0.0/bin:$PATH
set -x PATH $HOME/bin:$PATH
set -x TERM xterm-24bit
set -x VISUAL $EDITOR
# set -x XDG_RUNTIME_DIR $HOME/.docker/run

if [ -z "$XDG_RUNTIME_DIR" ]
    set -x XDG_RUNTIME_DIR /run/user/$UID
    if [ ! -d "$XDG_RUNTIME_DIR" ]
        set -x XDG_RUNTIME_DIR /tmp/$USER-runtime
        if [ ! -d "$XDG_RUNTIME_DIR" ]
            mkdir -m 0700 "$XDG_RUNTIME_DIR"
        end
    end
end

# set -gx DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0 #GWSL
# set -gx LIBGL_ALWAYS_INDIRECT 1 #GWSL
# set -gx PULSE_SERVER tcp:(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}') #GWSL

source $HOME/.config/fish/docker-service.fish

fish_vi_key_bindings
