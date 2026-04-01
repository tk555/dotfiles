return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
    },
    keys = {
      { "<leader>e", false },
      { "<leader>E", false },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Explorer" },
      { "<leader>E", "<cmd>Neotree toggle reveal<cr>", desc = "Explorer (reveal)" },
    },
    opts = function(_, opts)
      opts.filesystem = opts.filesystem or {}
      opts.filesystem.group_empty_dirs = true
      opts.window = opts.window or {}
      opts.window.mappings = opts.window.mappings or {}
      opts.window.mappings["<space>"] = "none"
      opts.window.mappings["l"] = "open"
      opts.window.mappings["q"] = "none"
      opts.window.mappings["d"] = "none"
      opts.window.mappings["h"] = "close_node"
    end,
  },
  --  {
  --    "nvim-mini/mini.ai",
  --    opts = function(_, opts)
  --      opts.custom_textobjects = opts.custom_textobjects or {}
  --      opts.custom_textobject.e = function()
  --        local from = { line = 1, col = 1 }
  --        local to = {
  --          line = vim.fn.line("$"),
  --          col = math.max(vim.fn.getline("$"):len(), 1),
  --        }
  --        return { from = from, to = to }
  --      end
  --    end,
  --  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      pickers = {
        find_files = {
          hidden = true,
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
      },
      defaults = {
        path_display = { "filename_first" },
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden", -- 隠しファイルを含める
          "--glob", -- パターン指定
          "!**/.git/*", -- .gitディレクトリは除外する
        },
      },
    },
  },
}
