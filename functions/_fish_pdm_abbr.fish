function _fish_pdm_abbr -d "Create fish_pdm abbreviations and aliases"
    set -l name $argv[1]
    set -l body $argv[2..-1]
    abbr -a $name $body
    set -a __fish_pdm_abbreviations $name
end
