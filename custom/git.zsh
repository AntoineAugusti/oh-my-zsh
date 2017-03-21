alias gc="git commit"
alias gs="git status"
alias gp="git push"
alias ga="git add"
alias gpp="git pull"
alias gr="git rebase -i"
alias rebaseMaster="gco master && gpp && gco - && gr master"
alias fpush="git push -f origin"

function prompt_local_branch {
  git branch | cut -c 3- | sort | fzf --reverse
}

function git_interactive_checkout {
  selected_branch=`prompt_local_branch`
  git checkout $selected_branch
}

alias gcb="git_interactive_checkout"
