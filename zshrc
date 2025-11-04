autoload -Uz compinit && compinit
eval "$(starship init zsh)"
eval "$(/opt/homebrew/bin/mise activate zsh)"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enviroment variables
export PATH="$HOME/go/bin:$HOME/.cargo/bin:$PATH"
export GOEXPERIMENT=greenteagc
export GOROOT="$(brew --prefix golang)/libexec"
export CLICOLOR=1
export HOMEBREW_NO_ENV_HINTS=1
export RUSTUP_DIST_SERVER=https://cloudfront-static.rust-lang.org

# Minio
export MINIO_ACCESS_KEY=minio
export MINIO_SECRET_KEY=minio123

# Localstack
export AWS_ACCESS_KEY_ID="test"
export AWS_SECRET_ACCESS_KEY="test"
export AWS_DEFAULT_REGION="us-east-1"
alias awslocal="aws"
alias aws="aws --endpoint-url=http://127.0.0.1:4566"

# Common aliases
alias ls="eza"
alias cat="bat"
alias ll="ls -lahF --group-directories-first"
alias df="df -h"
alias find="fd"
alias cd..="cd .."
alias car="cat"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
