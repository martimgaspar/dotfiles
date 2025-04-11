return {
  "xiyaowong/transparent.nvim",
  lazy = false, -- Force the plugin to load immediately
  config = function()
    require("transparent").setup({
      enable = true, -- enable transparent on startup
      extra_groups = { -- additional groups you want to clear
        "NormalFloat",
        "NvimTreeNormal",
        "FloatBorder",
        "TelescopeNormal",
        "TelescopeBorder",
      },
      exclude = {}, -- groups you don't want to clear
    })

    -- Optionally toggle transparency with a keybinding
    vim.keymap.set("n", "<leader>ut", function()
      require("transparent").toggle()
      -- Automatically run :TransparentEnable to apply transparency
      vim.cmd("TransparentEnable")
    end, { desc = "Toggle Transparency" })
  end,
}
