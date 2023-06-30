# zsh
export ZDOTDIR="$HOME/.zsh"
# cargo
. "$HOME/.cargo/env"
# fnm
case ":${PATH}:" in
    *:"$HOME/.local/share/fnm":*)
        ;;
    *)
        export PATH="$HOME/.local/share/fnm:$PATH"
        ;;
esac
eval "`fnm env`"
# doom emacs
case ":${PATH}:" in
    *:"$HOME/.config/emacs/bin":*)
        ;;
    *)
        export PATH="$HOME/.config/emacs/bin:$PATH"
        ;;
esac
# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pip
case ":${PATH}:" in
    *:"$HOME/.local/bin":*)
        ;;
    *)
        export PATH="$HOME/.local/bin:$PATH"
        ;;
esac
# fzf
# export FZF_DEFAULT_OPTS=" \
# --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
# --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
# --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
