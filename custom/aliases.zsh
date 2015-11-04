os=`uname -s`
host=`hostname | cut -d. -f1`

if [ $os = "Linux" ]; then
    alias update="sudo apt-get update"
    alias upgrade="sudo apt-get upgrade"
    alias cleanup="sudo apt-get autoremove"

    alias open="xdg-open"
else
    alias update="brew update"
    alias upgrade="brew upgrade"
    alias cleanup="brew cleanup"
fi

alias update-packages="update && upgrade && cleanup"
