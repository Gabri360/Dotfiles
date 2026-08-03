# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
[[ -f "$HOME/.zsh-async/async.zsh" ]] && source "$HOME/.zsh-async/async.zsh"


ZSH_THEME="dracula"

DRACULA_DISPLAY_GIT=1          # mostra branch/stato git
DRACULA_DISPLAY_TIME=0         # nascondi orario
DRACULA_DISPLAY_CONTEXT=0      # nascondi user@host
DRACULA_DISPLAY_FULL_CWD=0     # mostra solo la dir corrente, non tutto il path


plugins=(git sudo)

source $ZSH/oh-my-zsh.sh



# ==============================================================
# Opzioni Oh My Zsh disponibili (documentazione, tutte disattivate)
# ==============================================================

CASE_SENSITIVE="true"                # completamento case-sensitive
HYPHEN_INSENSITIVE="true"            # tratta - e _ come equivalenti
DISABLE_MAGIC_FUNCTIONS="true"       # se il paste di URL/testo si comporta male
# DISABLE_LS_COLORS="true"             # disattiva i colori in ls
# DISABLE_AUTO_TITLE="true"            # disattiva il titolo automatico del terminale
# ENABLE_CORRECTION="true"             # auto-correzione dei comandi
# COMPLETION_WAITING_DOTS="true"       # puntini rossi durante il completamento
# DISABLE_UNTRACKED_FILES_DIRTY="true" # velocizza lo stato git su repo grandi
# HIST_STAMPS="dd/mm/yyyy"             # formato data nella history
# ZSH_CUSTOM=/path/to/new-custom-folder

# Aggiornamenti automatici di Oh My Zsh:
# zstyle ':omz:update' mode disabled  # disattiva
# zstyle ':omz:update' mode auto      # aggiorna senza chiedere
# zstyle ':omz:update' mode reminder  # ricorda soltanto
# zstyle ':omz:update' frequency 13   # ogni N giorni
