call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'liuchengxu/vim-which-key'
Plug 'AckslD/nvim-whichkey-setup.lua'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'numToStr/Comment.nvim'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

colorscheme catppuccin-latte
set number
" 设置剪贴板工具为 wl-clipboard
let g:clipboard = {
  \   'name': 'wl-clipboard',
  \   'copy': {
  \     '+': 'wl-copy --foreground --type text/plain',
  \     '*': 'wl-copy --foreground --type text/plain --primary',
  \   },
  \   'paste': {
  \     '+': 'wl-paste --no-newline',
  \     '*': 'wl-paste --no-newline --primary',
  \   },
  \   'cache_enabled': 1,
  \ }

" 允许使用 "+y 复制到系统剪贴板
set clipboard+=unnamedplus

" 设置背景透明（适用于支持真彩色的终端）
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE

lua require('Comment').setup()

" YouCompleteMe setup
let g:ycm_enable_semantic_highlighting=1
let MY_YCM_HIGHLIGHT_GROUP = {
      \   'typeParameter': 'PreProc',
      \   'parameter': 'Normal',
      \   'variable': 'Normal',
      \   'property': 'Normal',
      \   'enumMember': 'Normal',
      \   'event': 'Special',
      \   'member': 'Normal',
      \   'method': 'Normal',
      \   'class': 'Special',
      \   'namespace': 'Special',
      \ }

for tokenType in keys( MY_YCM_HIGHLIGHT_GROUP )
	let hl_group = MY_YCM_HIGHLIGHT_GROUP[tokenType]
	call nvim_buf_add_highlight(0, 0, hl_group, 0, 0, -1)
endfor

let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
let g:which_key_map = {}
let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }
call which_key#register('<Space>', "g:which_key_map")

let g:startify_custom_header = [
\ ' _________  ___  ________  ________  _____ ______   ___                  ',
\ '|\___   ___\\  \|\   __  \|\   __  \|\   _ \  _   \|\  \                 ',
\ '\|___ \  \_\ \  \ \  \|\  \ \  \|\  \ \  \\\__\ \  \ \  \                ',
\ '     \ \  \ \ \  \ \   _  _\ \   __  \ \  \\|__| \  \ \  \               ',
\ '      \ \  \ \ \  \ \  \\  \\ \  \ \  \ \  \    \ \  \ \  \              ',
\ '       \ \__\ \ \__\ \__\\ _\\ \__\ \__\ \__\    \ \__\ \__\             ',
\ '        \|__|  \|__|\|__|\|__|\|__|\|__|\|__|     \|__|\|__|             ',
\ ' ________   ________  ________   ________  ________  ________  ___       ',
\ '|\   ___  \|\   __  \|\   ___  \|\   __  \|\   ___ \|\   __  \|\  \      ',
\ '\ \  \\ \  \ \  \|\  \ \  \\ \  \ \  \|\  \ \  \_|\ \ \  \|\  \ \  \     ',
\ ' \ \  \\ \  \ \   __  \ \  \\ \  \ \  \\\  \ \  \ \\ \ \   __  \ \  \    ',
\ '  \ \  \\ \  \ \  \ \  \ \  \\ \  \ \  \\\  \ \  \_\\ \ \  \ \  \ \__\   ',
\ '   \ \__\\ \__\ \__\ \__\ \__\\ \__\ \_______\ \_______\ \__\ \__\|__|   ',
\ '    \|__| \|__|\|__|\|__|\|__| \|__|\|_______|\|_______|\|__|\|__|   ___ ',
\ '                                                                    |\__\',
\ '                                                                    \|__|',
\ '                                                                         ',
        \ ]

let g:startify_bookmarks = [
	\ '~/.config/nvim/init.vim',
	\ '~/.config/hypr/hyprland.conf',
	\ '/etc/keyd/keyd.conf',
	\ ]
