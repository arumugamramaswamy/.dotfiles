if command -v nvim >/dev/null 2>&1; then
    alias vim=nvim
    alias vi=nvim
    export EDITOR=nvim
fi

if command -v zoxide >/dev/null 2>&1; then
    alias cdi=zi
    alias cd=z
fi
