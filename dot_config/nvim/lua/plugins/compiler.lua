return {
  {
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
    keys = {
      {
        "<leader>rr",
        "<cmd>CompilerOpen<cr>",
        desc = "build operation",
      },
      {
        "<leader>rt",
        "<cmd>CompilerToggleResults<cr>",
        desc = "build operation",
      },
      {
        "<leader>rl",
        "<cmd>CompilerRedo<cr>",
        desc = "build operation",
      },
    },
    opts = {},
    -- config = function(opts)
    --   require("compiler").setup(opts)
    --   vim.api.nvim_set_keymap("n", "<F6>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
    -- end,
  },
  {
    "stevearc/overseer.nvim",
    commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1,
      },
    },
  },
}
