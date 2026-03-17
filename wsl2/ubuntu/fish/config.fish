set -U fish_greeting

if type -q fnm
    fnm env --use-on-cd --shell fish --version-file-strategy recursive | source
end

set -U fish_color_autosuggestion 5B6477

zoxide init fish | source

abbr -a gco 'git checkout'
abbr -a gst 'git status -sb'

if test -f <CONDA_HOME>/bin/conda
    eval <CONDA_HOME>/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "<CONDA_HOME>/etc/fish/conf.d/conda.fish"
        . "<CONDA_HOME>/etc/fish/conf.d/conda.fish"
    else
        fish_add_path -m "<CONDA_HOME>/bin"
    end
end

if test -d "$HOME/.code-dispatcher/bin"
    fish_add_path -m "$HOME/.code-dispatcher/bin"
end
