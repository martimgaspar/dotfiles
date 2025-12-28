return {
  {
    "barrett-ruth/live-server.nvim",
    build = "npm i -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    keys = {
      { "<leader>ls", "<cmd>LiveServerStart<cr>", desc = "Live Server Start" },
      { "<leader>lS", "<cmd>LiveServerStop<cr>", desc = "Live Server Stop" },
    },
    config = true,
  },
}
