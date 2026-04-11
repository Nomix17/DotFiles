# .bashrc

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

prompt_command(){
    local env_indicator=""
    if [[ -n "$VIRTUAL_ENV" ]]; then
        local venv_name=$(basename "$VIRTUAL_ENV")
        env_indicator="\[\033[38;2;136;136;136m\]($venv_name) \[\e[m\]"
    elif [[ -n "$CONDA_DEFAULT_ENV" ]]; then
        env_indicator="\[\033[38;2;136;136;136m\]($CONDA_DEFAULT_ENV) \[\e[m\]"
    fi

    if [ "$PWD" = "$HOME" ]; then
        PS1="${env_indicator}\[\033[38;2;136;136;136m\]~>\[\e[m\] "
    else    
        PS1="${env_indicator}\[\033[38;2;136;136;136m\]\w\[\e[m\] "
    fi
}
PROMPT_COMMAND=prompt_command


if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# ENV
export PATH="/usr/local/bin:$HOME/.local/bin:$HOME/.cargo/bin:$JAVA_HOME/bin:$PATH"
export EDITOR=nvim
export QT_STYLE_OVERRIDE=Adwaita-Dark
export QT_QPA_PLATFORMTHEME=qt6ct
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Aliases
alias ll='ls -l'
alias :q="exit"
alias fterminal="alacritty > /dev/null 2>&1 & disown"
alias filemanager="nautilus .  &> /dev/null & disown"
alias vim="nvim"
alias vi="nvim"
alias btop=bpytop
alias t="tmux"
alias catalina='/opt/tomcat-10.1.53/bin/catalina.sh'
mkdircd() { mkdir -p "$1" && cd "$1"; }
