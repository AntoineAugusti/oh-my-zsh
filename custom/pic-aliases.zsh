# Environment variables
export PIC_HOME="$HOME/Documents/pic"
export PIC_RESSOURCES_PATH="$PIC_HOME/ressources/"

# Aliases
alias archivage="$PIC_HOME/pdfArchiver/app archive"
alias qualite="cd $PIC_HOME/qualite"
alias livraison="cd $PIC_HOME/livraison"
alias spec="cd $PIC_HOME/specifications"
alias dev="cd $PIC_HOME/developpement"
alias ressources="cd $PIC_HOME/ressources"
alias GP="cd $PIC_HOME/qualite/GP"
alias DSQ="cd $PIC_HOME/qualite/DSQ"

alias pull="cd $PIC_HOME; ./gitPull.sh"

# PDF related
alias pdf="open pdf"
alias pdf-last="cd pdf;evince `ls -tr | grep ".pdf" | tail -1`&;cd .."
alias create-pdf="mkdir pdf;touch pdf/.gitkeep;ga pdf/.gitkeep"
