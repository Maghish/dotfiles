if patched_font_in_use; then
	TMUX_POWERLINE_SEPARATOR_LEFT_BOLD=""
	TMUX_POWERLINE_SEPARATOR_LEFT_THIN=""
	TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD=""
	TMUX_POWERLINE_SEPARATOR_RIGHT_THIN=""
else
	TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="◀"
	TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
	TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="▶"
	TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
fi

# Use colors from your Pywal theme directly
TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR='0'  # color0: "#020101" (black)
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR='1'  # color7: "#c4849b" (white)

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}

if [ -z "$TMUX_POWERLINE_WINDOW_STATUS_CURRENT" ]; then
    TMUX_POWERLINE_WINDOW_STATUS_CURRENT=(
        "#[$(format inverse)]"
        "$TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR"
        " #I#F "
        "$TMUX_POWERLINE_SEPARATOR_RIGHT_THIN"
        " #W "
        "#[$(format regular)]"
        "$TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR"
    )
fi

if [ -z "$TMUX_POWERLINE_WINDOW_STATUS_STYLE" ]; then
    TMUX_POWERLINE_WINDOW_STATUS_STYLE=(
        "$(format regular)"
    )
fi

if [ -z "$TMUX_POWERLINE_WINDOW_STATUS_FORMAT" ]; then
    TMUX_POWERLINE_WINDOW_STATUS_FORMAT=(
        "#[$(format regular)]"
        "  #I#{?window_flags,#F, } "
        "$TMUX_POWERLINE_SEPARATOR_RIGHT_THIN"
        " #W "
    )
fi

if [ -z "$TMUX_POWERLINE_LEFT_STATUS_SEGMENTS" ]; then
    TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
        "tmux_session_info 0 4"  # Black background with white text
        "hostname 0 255"            # Black background with white text
        "lan_ip 0 2 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}"  # Cyan on white
        "wan_ip 0 2"
        "vcs_branch 29 88"          # Magenta on bright color
    )
fi

if [ -z "$TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS" ]; then
    TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
        "pwd 0 255"                 # Black background with white text
        "now_playing 234 2"        # Darker text color
        "load 237 4"              # Dark text color
        "battery 237 2"           # Yellowish text color
        "weather 2 237"            # Bright text color
        "date_day 0 255"            # Black background with white text
        "date 0 255 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}"
        "time 0 255 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}"
    )
fi


