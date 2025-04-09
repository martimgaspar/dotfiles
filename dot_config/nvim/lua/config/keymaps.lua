vim.keymap.set("n", "<leader>zz", ":wq<CR>", { desc = "Write Quit" })
vim.keymap.set("n", "<leader>zq", ":wq<CR>", { desc = "Write Quit" })
vim.keymap.set("n", "<leader>z", "<nop>", { desc = "+Saving" })

vim.keymap.set("n", "<leader>ce", function()
  local diags = vim.diagnostic.get(0)
  if #diags > 0 then
    local messages = {}
    for _, diag in ipairs(diags) do
      table.insert(messages, string.format("Line %d: %s", diag.lnum + 1, diag.message))
    end
    local full_message = table.concat(messages, "\n")
    vim.fn.setreg("+", full_message) -- copy to system clipboard
    print("Copied all diagnostics for current buffer with each message on its own row.")
  else
    print("No diagnostics found in current buffer.")
  end
end, { desc = "Copy all diagnostics for current buffer" })
