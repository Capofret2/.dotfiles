require('nvim-web-devicons').setup()
require('mini.icons').setup()
require('smear_cursor').enabled = true
require('alpha').setup(
  require'alpha.themes.startify'.config
)

-- 禁用 easymotion 的默认快捷键
vim.g.EasyMotion_do_mapping = 0

-- 启用智能大小写匹配
vim.g.EasyMotion_smartcase = 1

-- 设置 NERDTreeMinimalUI 为 1
vim.g.NERDTreeMinimalUI = 1

local wk = require('which-key')
wk.setup({
  icons = {
    group = "", -- 禁用旧版分组图标
  },
  plugins = {
    marks = true,
    registers = true,
    spelling = {
      enabled = true,
      suggestions = 20,
    },
  },
      ---Add a space b/w comment and the line
  padding = true,
  ---Whether the cursor should stay at its position
  sticky = true,
  ---Lines to be ignored while (un)comment
  ignore = nil,
  ---LHS of toggle mappings in NORMAL mode
  toggler = {
      ---Line-comment toggle keymap
      line = 'gcc',
      ---Block-comment toggle keymap
      block = 'gbc',
  },
  ---LHS of operator-pending mappings in NORMAL and VISUAL mode
  opleader = {
      ---Line-comment keymap
      line = 'gC',
      ---Block-comment keymap
      block = 'gB',
  },
  ---LHS of extra mappings
  extra = {
      ---Add comment on the line above
      above = 'gcO',
      ---Add comment on the line below
      below = 'gco',
      ---Add comment at the end of line
      eol = 'gcA',
  },
  ---Enable keybindings
  ---NOTE: If given `false` then the plugin won't create any mappings
  mappings = {
      ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
      basic = true,
      ---Extra mapping; `gco`, `gcO`, `gcA`
      extra = true,
  },
  ---Function to call before (un)comment
  pre_hook = nil,
  ---Function to call after (un)comment
  post_hook = nil,
})

