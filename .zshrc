# .zshrc

# *** Path to your Oh-my-zsh installation ***
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/opt/nvim/bin"

# *** ZSH Theme ***
ZSH_THEME="gallois"

# *** ZSH Plugins ***
plugins=(git)

# *** Initialize oh-my-zsh ***
source $ZSH/oh-my-zsh.sh 

# *** NVM ***
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# *** Desk Modes ***
desk() {
    case $1 in
        red)
            wal -i /mnt/e/photos/desktopmodes/darkmode.png
            ;;
        darkg)
            wal -i /mnt/e/photos/desktopmodes/darkgreenmode.png
            ;;
        green)
            wal -i /mnt/e/photos/desktopmodes/greenmode.png
            ;;
        *)
            echo "Usage: desk {red|darkg|green}"
            ;;
    esac
}



# *** ZSH Autosuggestions ***
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# *** Initial Commands ***
desk red 
clear
neofetch

