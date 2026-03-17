#!/usr/bin/env bash

OMP_EXEC="<OH_MY_POSH_BIN>"
OMP_THEME="<OH_MY_POSH_THEME>"

if [[ $- == *i* ]]; then
  source "<GIT_FOR_WINDOWS_INSTALL_DIR>/mingw64/share/git/completion/git-completion.bash"
fi

if [ -x "$OMP_EXEC" ] && [ -f "$OMP_THEME" ]; then
  eval "$($OMP_EXEC init bash --config "$OMP_THEME")"
fi

export PATH="$HOME/.code-dispatcher/bin:$PATH"

alias claudex='claude --dangerously-skip-permissions'
alias codexx='codex --dangerously-bypass-approvals-and-sandbox'
