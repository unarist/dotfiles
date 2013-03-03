set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,eucjp,default,latin1

filetype plugin on
filetype indent on

colorscheme torte

" Indent

set tabstop=4 shiftwidth=4 softtabstop=0

" Special chars

set list
set listchars=tab:^\ ,trail:-,extends:»,precedes:«,nbsp:%
highlight SpecialKey term=underline ctermfg=darkgray guifg=darkgray

" Status line

set laststatus=2
if has("statusline")
		 set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

" Align

let g:Align_xstrlen = 3

" ポップアップメニューのカラー
highlight Pmenu      ctermbg=DarkGray  ctermfg=White guibg=#666666
highlight PmenuSel   ctermbg=LightBlue ctermfg=Black guibg=#8cd0d3 guifg=#666666
highlight PmenuSbar  ctermbg=White                   guibg=#333333

