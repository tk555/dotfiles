return {
  "stevearc/overseer.nvim",
  keys = {
    { "<leader>t", "<CMD>OverseerRun<CR>" },
    { "<leader>T", "<CMD>OverseerToggle<CR>" },
  },
  opts = {},
  config = function(_, opts)
    local overseer = require("overseer")
    overseer.setup(opts)
    overseer.add_template_hook({ module = "^vscode$" }, function(task_defn, _)
      local current_file = vim.api.nvim_buf_get_name(0)
      local target_root = vim.fs.root(current_file, ".vscode")
      if target_root then
        task_defn.cwd = target_root
      end
    end)
  end,
}
