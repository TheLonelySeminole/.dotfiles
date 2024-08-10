-- Lazy
-- This is an interesting security detail ... ;
return {
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({
        transparent = true,
        -- optional configuration here
      })
    end,
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "vague",
  --   },
  -- },
}
