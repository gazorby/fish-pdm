set current_dir (dirname (status --current-filename))
set set_vars

for file in {$current_dir}/../functions/*.fish
    source $file
end

function _get_set_universal_vars
    for var in $argv
        if set -q $var
            set -a set_vars $var
        end
    end
end

function setup
    _get_set_universal_vars __fish_pdm_initialized __fish_pdm_abbreviations

    set -g __tmp_fish_pdm_initialized $__fish_pdm_initialized
    set -g __tmp_fish_pdm_abbreviations $__fish_pdm_abbreviations
end

function teardown
    for var in $set_vars
        set -l tmp (string join "" _tmp $var)
        set -U $var $$tmp
    end
end

function setup_test
    set -U __fish_pdm_initialized
    abbr -a _fish_pdm_foo bar
    set -U __fish_pdm_abbreviations _fish_pdm_foo
end
