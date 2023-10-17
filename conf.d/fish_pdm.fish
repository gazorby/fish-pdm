function _fish_pdm_install --on-event fish_pdm_install
    set -U __fish_pdm_abbreviations
end

function _fish_pdm_update --on-event fish_pdm_update
    _fish_pdm_uninstall
    _fish_pdm_install
    _fish_pdm_init
end

function _fish_pdm_uninstall --on-event fish_pdm_uninstall
    _fish_pdm_destroy
end

# Starting from fish 3.6.0, 'abbr' is a builtin and abbreviations are no longer stored in universal variables.
not builtin -q abbr; and set -q __fish_pdm_initialized; and return 0

_fish_pdm_init
