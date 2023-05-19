return {
  "ThePrimeagen/harpoon",
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")
    require("harpoon").setup({
      menu = {
        width = vim.api.nvim_win_get_width(0) - 90,
      },
    })
    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<C-l>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<C-1>", function()
      ui.nav_file(1)
    end)
    vim.keymap.set("n", "<C-2>", function()
      ui.nav_file(2)
    end)
    vim.keymap.set("n", "<C-3>", function()
      ui.nav_file(3)
    end)
    vim.keymap.set("n", "<C-4>", function()
      ui.nav_file(4)
    end)
    vim.keymap.set("n", "<C-5>", function()
      ui.nav_file(5)
    end)
  end,
}
