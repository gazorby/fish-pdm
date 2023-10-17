source (string join "/" (dirname (status --current-filename)) "common.fish")

setup

@test "Plugin initialization" (
    setup_test
    _fish_pdm_init
    test "$__fish_pdm_initialized" = 1
) "$status" = 0

@test "Plugin removal abbreviations erased" (
    setup_test
    _fish_pdm_destroy
    not abbr -q _fish_pdm_foo
) "$status" = 0

@test "Plugin removal __fish_pdm_abbreviations erased" (
    setup_test
    _fish_pdm_destroy
    not set -q "__fish_pdm_abbreviations"
) "$status" = 0

teardown
