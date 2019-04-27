export ZSH="/Users/kaboom/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon virtualenv dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B4'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B6'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "
POWERLEVEL9K_STATUS_VERBOSE=false

# VCS colors
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='015'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='120'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
# POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes)

source $ZSH/oh-my-zsh.sh

# Example aliases
alias v="nvim"
#alias ls='ls -G'
source $(dirname $(gem which colorls))/tab_complete.sh
# https://github.com/athityakumar/colorls
alias ls='colorls'
alias ll='ls -la'
alias la='ls -a'
alias lt='ls --tree'
alias hexo="./node_modules/hexo/bin/hexo"

plugins=(
	git-open
	git
	zsh-autosuggestions
	autojump
	brew
	python
)

# auto suggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=30'
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autojump
[[ -s /Users/kaboom/.autojump/etc/profile.d/autojump.sh ]] && source /Users/kaboom/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export HISTSIZE=10000000
export SAVEHIST=10000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH="$HOME/.npm-global/bin:$PATH"

fortune

