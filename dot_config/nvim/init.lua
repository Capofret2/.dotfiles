-- 确保只加载一次配置
if vim.g.vim_loaded then
  return
end
vim.g.vim_loaded = true

-- 基础设置
vim.opt.number = true
vim.opt.clipboard = 'unnamedplus'

-- Packer 插件管理初始化
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- 自动安装 packer.nvim
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.cmd 'packadd packer.nvim'
end

-- 插件声明
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'echasnovski/mini.icons'
  use 'folke/which-key.nvim'
  use 'tpope/vim-sensible'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use 'mhinz/vim-startify'
  use { 'preservim/nerdtree', cmd = 'NERDTreeToggle' }
  use 'godlygeek/tabular'
  use 'preservim/vim-markdown'
  use 'numToStr/Comment.nvim'
  use 'ycm-core/YouCompleteMe'
end)

-- 加载模块化配置（需要创建 lua/config/ 目录）
require('config.colors')
require('config.clipboard')
require('config.keymaps')
require('config.plugins')

-- Startify 配置
vim.g.startify_custom_header = [[
  _________  ___  ________  ________  _____ ______   ___                  
  |\___   ___\\  \|\   __  \|\   __  \|\   _ \  _   \|\  \                 
  \|___ \  \_\ \  \ \  \|\  \ \  \|\  \ \  \\\__\ \  \ \  \                
       \ \  \ \ \  \ \   _  _\ \   __  \ \  \\|__| \  \ \  \               
        \ \  \ \ \  \ \  \\  \\ \  \ \  \ \  \    \ \  \ \  \              
         \ \__\ \ \__\ \__\\ _\\ \__\ \__\ \__\    \ \__\ \__\             
          \|__|  \|__|\|__|\|__|\|__|\|__|\|__|     \|__|\|__|             
]]

vim.g.startify_bookmarks = {
  '~/.config/nvim/init.lua',
  '~/.config/hypr/hyprland.conf',
  '/etc/keyd/keyd.conf'
}
