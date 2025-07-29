return {
  'lervag/vimtex',
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = 'zathura'

    -- Or use a generic interface (e.g., Okular)
    -- vim.g.vimtex_view_general_viewer = 'okular'
    -- vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'

    -- Set the compiler backend to latexrun
    vim.g.vimtex_compiler_method = 'latexmk'
  end,
}
