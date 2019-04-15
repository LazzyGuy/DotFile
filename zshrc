# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/suraj/.oh-my-zsh"

#ZSH theme
ZSH_THEME="robbyrussell"

CASE_SENSITIVE="true"

DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"


# oh_my_zsh plugins 
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  tmux
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration
export MANPATH="/usr/local/man:$MANPATH"
 
# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

#aliases
source ~/.bash_aliases

# node version manager {{
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# }}


# Paths 
export PATH=~/.JAVA/jdk1.8.0_191/bin:$PATH
export PATH=~/.JAVA/apache-maven-3.6.0/bin:$PATH
export PATH=~/__lazzyscript__/bin:$PATH
JAVA_HOME=~/.JAVA/jdk1.8.0_191/bin


# ls with cd
#
chpwd() ls

# vi mode for zsh
bindkey -v
# Gnome term title
echo -e "\033];🤖\007"
alias tmux='tmux -u'

# added by travis gem
[ -f /home/suraj/.travis/travis.sh ] && source /home/suraj/.travis/travis.sh


# Daily message
echo '1. Understand\n2. Plan\n3. Solve\n4. Tweek'

#Android congiguration
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /mnt/workspace/acroknacks-workfiles/duvall-test/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /mnt/workspace/acroknacks-workfiles/duvall-test/node_modules/tabtab/.completions/electron-forge.zsh
