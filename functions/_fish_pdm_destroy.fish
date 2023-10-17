function _fish_pdm_destroy -d "Initialize fish_pdm plugin"
    for ab in $__fish_pdm_abbreviations
        abbr --erase $ab
    end
    set -Ue __fish_pdm_abbreviations
end
