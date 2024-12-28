return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<Leader>p",
        node_incremental = "<Leader>;",
        scope_incremental = false,
        node_decremental = "<Leader>'",
      },
    },
  },
}
