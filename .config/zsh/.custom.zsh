HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

alias neofetch='neofetch --ascii_distro Arch'
alias vim='nvim'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/ripgreprc"
export PATH="$PATH:~/.dotnet/tools"
export OPENAI_API_KEY=""
export FZF_DEFAULT_COMMAND='rg --files'
export PYENV_ROOT="$HOME/.pyenv"


command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
