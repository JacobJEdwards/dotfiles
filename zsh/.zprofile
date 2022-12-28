
# Setting PATH for Python 3.8
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# Setting PATH for Python 3.10
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH

# Added by Toolbox App
export PATH="$PATH:/usr/local/bin"

export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

eval "$(pyenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv virtualenv-init -)"

eval "$(direnv hook zsh)"
