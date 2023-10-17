function _fish_pdm_init -d "Initialize fish_pdm plugin"
    # Add your abbreviations/aliases here:

    _fish_pdm_abbr pdmin 'pdm init'
    _fish_pdm_abbr pdmi 'pdm install'
    _fish_pdm_abbr pdmup 'pdm update'
    _fish_pdm_abbr pdma 'pdm add'
    _fish_pdm_abbr pdmrm 'pdm remove'
    _fish_pdm_abbr pdms 'pdm show'
    _fish_pdm_abbr pdmb 'pdm build'
    _fish_pdm_abbr pdmp 'pdm publish'
    _fish_pdm_abbr pdmc 'pdm config'
    _fish_pdm_abbr pdmr 'pdm run'
    _fish_pdm_abbr pdml 'pdm lock'
    _fish_pdm_abbr pdmx 'pdm export'
    _fish_pdm_abbr pdmv 'pdm venv'
    _fish_pdm_abbr pdmf 'pdm search'
    _fish_pdm_abbr pdmls 'pdm lis'
    _fish_pdm_abbr pdmn 'pdm new'
    _fish_pdm_abbr pdmav 'eval (pdm venv activate)'

    # Mark plugin as initialized
    set -U __fish_pdm_initialized 1
end
