set -gx EDITOR "emacs -nw"
set -gx VISUAL $EDITOR
set -gx TERM "xterm-kitty-24bit"

# Start X at login
if status is-login
	if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
		exec startx -- -keeptty
	end
end
