return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      root_dir = function(fname)
        local root = vim.fs.root(fname, { "gradlew", "build.gradle", ".git" })
        if not root then
          return nil
        end
        return root
      end,
    },
  },
}
