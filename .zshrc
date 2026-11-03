alias ls='ls -AG'
alias la='ls -AGl'
alias gip='curl http://gungnir-odin.appspot.com/util/clientinfo'
alias x86='arch -x86_64 zsh'
alias ctags="`brew --prefix`/bin/ctags"

#export JAVA_HOME=$(/usr/libexec/java_home -v 14.0)
export PYTHONIOENCODING='utf-8'
export PATH=$PATH:$HOME/.nodebrew/current/bin
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
export PATH=$PATH:$HOME/Flutter/flutter/bin
export PATH=$PATH:/opt/homebrew/opt/openjdk@17/bin
export PATH=$PATH:/usr/local/share/dotnet

# export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

export ANDROID_HOME=$HOME/Library/Android/sdk

export LSCOLORS="ExFxcxdxBxegedabagacad"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function powerline_precmd() {
    PS1="$(~/go/bin/powerline-go -error $? -modules user,perms,cwd,git,exit,time -priority cwd,user,git-branch,git-status,perm,exit)"
}

function install_powerline_precmd() {
    for s in "${precmd_functions[@]}"; do
        if [ "$s" = "powerline_precmd" ]; then
            return
        fi
    done
    precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    install_powerline_precmd
fi

eval "$(pyenv init -)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:$HOME/.cache/lm-studio/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
export PATH="$(brew --prefix python)/libexec/bin:$PATH"
