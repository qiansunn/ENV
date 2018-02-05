set encoding=utf-8
set number
set ruler
set autoread
set laststatus=2
set nocp "使用vim而非vi"
set mouse=a "开启鼠标支持"
set autochdir "当前目录随着被编辑文件的改变而改变"
set hlsearch "开启搜索结果的高亮显示"
set incsearch "边输入边搜索(实时搜索)"
set cindent "c/c++自动缩进"
set smartindent
set autoindent "参考上一行的缩进方式进行自动缩进"
set softtabstop=4 "4 character as a tab"
set shiftwidth=4
set backspace=2
set smarttab
set background=dark
set rtp+=~/.vim/bundle/Vundle.vim
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

syntax enable
colorscheme solarized

filetype plugin indent on    " required

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'


" set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()


function! HighlightSearch()
   if &hls
	return 'H'
    else
	return ''
    endif
endfunction

vmap <C-x> :!pbcopy<CR>  
vmap <C-c> :w !pbcopy<CR><CR> 
nmap wm :WMToggle<cr>
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
cs add cscope.out


