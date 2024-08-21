return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "hyprlang",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
    config = function()
      vim.filetype.add({
        pattern = {
          [".*/hypr/.*%.conf"] = "hyprlang",
          [".*/waybar/config"] = "json",
          [".*/mako/config"] = "dosini",
          [".*/wofi/config"] = "dosini",
          [".*/kitty/*.conf"] = "bash",
        },
      })
    end,
  },
}
