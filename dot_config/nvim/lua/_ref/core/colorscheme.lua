-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, tn = pcall(require, "tokyonight")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end

tn.setup({
  style = "storm",
  dim_inactive = true,
  lualine_bold = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
  },
})

vim.cmd("colorscheme tokyonight-storm") 

-- vim.cmd.colorscheme 'catppuccin-mocha'

vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' }) -- transparent bg
vim.api.nvim_set_hl(0, 'NonText', { bg = 'none' })

