return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})

    require("neo-tree").setup({
      use_libuv_file_watcher = true,
      filesystem = {
        follow_current_file = {
          enabled = true,            -- This will find and focus the file in the active buffer every time
        },
      }
    })
  end,
}
