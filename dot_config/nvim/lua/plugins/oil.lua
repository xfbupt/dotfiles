return {
  "stevearc/oil.nvim",
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  keys = {
    {
      "<leader>o",
      "<cmd>Oil<cr>",
      desc = "Find Plugin File",
    },
  },
  config = function()
    require("oil").setup()
  end,
}
