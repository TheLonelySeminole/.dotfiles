if true then
  return {}
end
return {
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
        -- optional configuration here
      })
    end,
  },
}
