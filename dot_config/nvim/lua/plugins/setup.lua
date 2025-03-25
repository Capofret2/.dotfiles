require('nvim-web-devicons').setup()
require('smear_cursor').enabled = true
require('alpha').setup(
  require'alpha.themes.startify'.config
)

-- easymotion
vim.g.EasyMotion_do_mapping = 0
vim.g.EasyMotion_smartcase = 1

-- nvim-tree
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },

  view = {
    width = 25,
  },

  renderer = {
    group_empty = true,
  },

  filters = {
    dotfiles = true,
  },

  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    root_folder_modifier = ":t",
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        git = {
          unstaged = "U",
          staged = "S",
          unmerged = "UM",
          renamed = "R",
          deleted = "D",
          untracked = "",
          ignored = "I",
        },
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
        },
      },
    },
  },
})
