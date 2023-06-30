# zsh
export ZSH="$HOME/.oh-my-zsh"

# cargo
. "$HOME/.cargo/env"

# fnm
export FNM_HOME="$HOME/.local/share/fnm"
case ":$PATH:" in
  *":$FNM_HOME:"*) ;;
  *) export PATH="$FNM_HOME:$PATH" ;;
esac

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# dprint
export DPRINT_INSTALL="$HOME/.dprint"
export DPRINT_HOME="$DPRINT_INSTALL/bin"
case ":$PATH:" in
  *":$DPRINT_HOME:"*) ;;
  *) export PATH="$DPRINT_HOME:$PATH" ;;
esac

# local
export LOCAL_HOME="$HOME/.local/bin"
case ":$PATH:" in
  *":$LOCAL_HOME:"*) ;;
  *) export PATH="$LOCAL_HOME:$PATH" ;;
esac

# emacs
export EMACS_HOME="$HOME/.config/emacs/bin"
case ":$PATH:" in
  *":$EMACS_HOME:"*) ;;
  *) export PATH="$EMACS_HOME:$PATH" ;;
esac
