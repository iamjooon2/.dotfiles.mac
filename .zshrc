# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# aws connect
export AWS_PROFILE=saml

# JAVA 환경변수 설정
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-24.jdk/Contents/Home
export PATH=${PATH}:$JAVA_HOME/bin

# Flutter 환경변수 설정
export PATH="$PATH:/Users/jooon/flutter/bin"

# Go 환경변수 설정
export GOPATH="/Users/jooon/go"
export PATH=$PATH:$GOPATH/pkg
export PATH=$PATH:$GOPATH/bin

# Ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export GEM_HOME="$HOME/.gem"
export GEM_PATH="$HOME/.gem"
export PATH="$GEM_HOME/bin:$PATH"
export PATH="$HOME/.gem/bin:$PATH"


######################################################
########### 이하 이준희 추가 터미널 세팅#####################
######################################################

# 테마 변경
ZSH_THEME="agnoster"

# syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# auto-suggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh 

# plugin (add autojump)
plugins=(git autojump)


# 실행
source $ZSH/oh-my-zsh.sh

# 사용자 이름 삭제하기
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# Added by Windsurf
export PATH="/Users/jooon/.codeium/windsurf/bin:$PATH"

# for everywhere
export PATH=$(go env GOPATH)/bin:$PATH
