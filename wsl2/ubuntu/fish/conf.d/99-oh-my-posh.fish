if status is-interactive
    function __omp_init_once --on-event fish_prompt
        functions -e __omp_init_once
        if type -q oh-my-posh
            oh-my-posh init fish --config ~/.config/oh-my-posh/themes/carbon-red.omp.json | source
        end
    end
end
