require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "c",
    "cpp",
    "python",
    "fish",
    "java",
    "javascript",
    "html",
    "make",
    "lua",
    "vim",
    "typescript",
    "tsx",
    "css",
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    -- additional_vim_regex_highlighting = false,
  },

  -- Incremental selection of tree-sitter nodes
  incremental_selection = {
    enable = true,

    -- Keybindings for incremental selection
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  -- Indentation is an experiemental feature
  indent = {
    enable = true,
  },

  -- Refactor module
  refactor = {
    smart_rename = {
      enable = true,
      keymaps = {
	smart_rename = "grr",
      },
    },
  },

  -- Autotag module
  autotag = {
    enable = true,
  },
}
