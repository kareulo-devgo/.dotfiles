if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

export HISTCONTROL=ignoredups
export HISTFILESIZE=10000
export HISTSIZE=10000

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            source "$rc"
        fi
    done

    unset rc
fi
