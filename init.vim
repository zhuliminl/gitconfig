
call plug#begin('~/.vim/plugged')
Plug 'nikvdp/ejs-syntax'                    "ejs 模版语法高亮"
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
Plug 'skwp/greplace.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/limelight.vim'             "文艺焦点"
" Plug 'junegunn/goyo.vim'                  "文艺焦点背景"
Plug 'nathanaelkane/vim-indent-guides'      "竖条缩进"
Plug 'ashisha/image.vim'      "竖条缩进"

Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mattn/emmet-vim'

Plug 'pangloss/vim-javascript'
Plug 'marijnh/tern_for_vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdcommenter'
Plug 'bronson/vim-trailing-whitespace' "行尾空格处理"

Plug 'tomasr/molokai'
Plug 'terryma/vim-expand-region'       "区域选择"
Plug 'othree/html5.vim'
Plug 'terryma/vim-multiple-cursors'    "超级强大的插件"

Plug 'ybian/smartim'                   "输入法自动切换"

Plug 'iamcco/markdown-preview.vim'
Plug 'suan/vim-instant-markdown'
Plug 'kien/rainbow_parentheses.vim'    "高亮括号"

" Plug 'sjl/gundo.vim'
Plug 'Lokaltog/vim-easymotion'         "终极跳转"
Plug 'Chiel92/vim-autoformat'          "代码美化"
Plug 'szw/vim-maximizer'               "窗口最大化切换"

Plug 'junegunn/vim-easy-align'         "代码美化对齐"
Plug 'godlygeek/tabular'               "代码美化对齐"
Plug 'thinca/vim-quickrun'             "快速运行"

call plug#end()




"状态栏增强"
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep       = '▶'
let g:airline_left_alt_sep   = '❯'
let g:airline_right_sep      = '◀'
let g:airline_right_alt_sep  = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

" 是否打开tabline
" let g:airline#extensions#tabline#enabled = 1

let g:airline_theme="raven"

syntax enable
set nocompatible     " be iMproved, requied "
set clipboard=unnamed
set backspace=indent,eol,start
set number
let mapleader = ","                     " 用逗号替换 "


set tabstop=8
set expandtab                           " 用空格代替 tab "
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set nu
set backspace=2
set ai                                  "自动缩进"
set nosm                                "取消匹配高亮"
" set relativenumber


colorscheme molokai
let g:molokai_original = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236
nmap <Leader>ig :IndentGuidesEnable<cr> "开启缩进指示"

" set ts=4 sw=4 et      tab 转空格设置
set ts=2 sw=2 et
set scrolloff=7                         "光标距离底部始终7行"
set linespace=5
set t_Co=256

set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

set guifont=Roboto\ Mono\ Light\ for\ Powerline:h13
let g:Powerline_symbols = 'fancy<cr>'
set encoding=utf-8

set fillchars+=stl:\ ,stlnc:\ 
" set term=xterm-256color
set termencoding=utf-8
set cursorline                          "高亮行"
" set cursorcolumn
" 高亮列，这个效果很难说了。看着还是不够清爽 "

hi Normal ctermbg=235                  " 定制自己想要的背景色 "
highlight CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=NONE guifg=NONE         "定制光标列的颜色"

set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

hi LineNr ctermfg=237 ctermbg=bg
set foldcolumn=0
hi foldcolumn guibg=bg
hi vertsplit guifg=bg guibg=bg ctermbg=bg ctermfg=bg   " 去分割条的丑陋背景色 "
hi Search cterm=NONE ctermfg=yellow ctermbg=237


" ---------------Search--------------------
" set nohlsearch
" 搜索高亮
set hlsearch
set incsearch

" Greplace.vim   暂时还体会不到它的强大
set grepprg=ag                  "使用 Ag "
let g:grep_cmd_opts = '--line-numbers --noheading'


"---------------Split Management----------
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

nmap <leader>h <C-W><C-H>
nmap <leader>k <C-W><C-L>
imap <C-H> <esc><C-W><C-H>

" 废掉单词移动，个人原因不常用。所以替换成半页滚动
" nmap w <C-U>
" nmap e <C-D>

" 发现上面的设置用半页还是有点跨度大了。get 不到内容。不如换做固定的行数
nmap w 8k
nmap e 8j

" 尝试用 a 替换 ` 这个不太好触控的键，用来快速在文件之间跳转
nmap a `

"-----------切换tab--------------------
map <leader>1 gt1
map <leader>2 gt2
map <leader>3 gt3
map <leader>4 gt4
map <leader>5 gt5
map <leader>6 gt6
map <leader>7 gt7
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>


"-------Mappings 键盘映射----------
"make it easy to edit the Vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>


"-----------自定义命令------------
"创建标签和关闭当前标签"
nmap tn :tabnew .<cr>
nmap ctb :tabclose<cr>
nmap cab :bufdo bd!<cr>                     " 关闭所有的缓冲区 "


"------------高亮搜索-----------------
"nmap <Leader><space> :nohlsearch<cr>"


"make NERDTree easier to toggle
nmap <Leader>n :NERDTreeToggle<cr>          " 文件树开关 "
nmap <Leader>r :CtrlPBufTag<cr>


"标签树
nmap <Leader>t :TagbarToggle<cr>

"make ctags easier to go
" nmap <Leader>f :tag<space>


"-------Plugins--------"

"/
"/ limelight
"/

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
" let g:limelight_priority = -1<Paste>
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)



"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0
" let NERDTreeIgnore=['node_modules','__pycache__','env','tags', 'npm-debug.log']
let NERDTreeIgnore=['node_modules','__pycache__','tags', 'npm-debug.log']

"/
"/ Emmet
"/
let g:user_emmet_settings = {
\ 'indentation' : '    ',
\ 'perl' : {
\     'aliases' : {
\         'req' : 'require '
\     },
\     'snippets' : {
\         'use' : "use strict\nuse warnings\n\n",
\         'warn' : "warn \"|\";",
\    }
\ }
\}

let g:user_emmet_expandabbr_key = '<c-e>'
let g:use_emmet_complete_tag = 1


"---------------------------------------------- Notes and Tips
" 快速定位具体项目文件
" Falsk , React
nmap <Leader>fl :e /Users/saul/Documents/code/Flask<cr>
nmap <Leader>re :e /Users/saul/Documents/code/React-file<cr>

" 相对行数
nmap <Leader>rn :set relativenumber<cr>

"神奇的自定义运动，解决各种机械输入问题
"输入大括号自动分隔行，然后缩进
imap [[ {<cr><esc>O

"自动查找当前单词,在普通模式下，空格键的确是没啥用的样子，将 n 替换 N "
"这样会更自如"
nmap <space> *
nmap n N

"切换tab快捷键
nmap J gT
nmap <leader>q :tabc<cr>

"快速调用搜索"
nmap go <esc>:Ag<space>
" nmap <leader>a <esc>:Ag<space>

"复制当前单词"
nmap <leader>j yiw

"快速保存"
nmap b :w<cr>

"撑开括号等
imap kk <Space><Space><esc>i

" 快速输入断点 console.log() 的快捷方式
imap conso console.log()<esc>i

"补全尾部分号
nmap ;; A;<esc>
imap ;; <esc>;;

"jsx 单行注释
nmap <leader>r ddO{/*<cr>*/}<esc>kp
"
"快速运行
" let g:quickrun_config = {
" \   "_" : {
" \       "outputter" : "message",
" \   },
" \}

" let g:quickrun_no_default_key_mappings = 1
" nmap <Leader>r <Plug>(quickrun)

"快速函数注释
imap <leader>co /**

" 快速添加 ejs 模版符号
imap <leader>ejs <%=%><esc>hi


"分开对称，并缩进
imap @k <cr><esc>O<Tab>

"废掉 $ 0 的行内首位移动，改用大写的 H 和 L 更具直
noremap H ^
noremap L $


"---------插件映射---------

let g:user_emmet_leader_key='<C-E>'             "emmet 快捷键修改"


let g:html5_event_handler_attributes_complete = 1
let g:html5_rdfa_attributes_complete = 1

" 自动关闭补全提示窗口
let g:ycm_autoclose_preview_window_after_completion = 1

nmap <Leader>md :MarkdownPreview<cr>            " 开启 markdown 预览 "
let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"   "markdown  插件寻找浏览器路径"


nmap <Leader><space> :FixWhitespace<cr>


let g:NERDSpaceDelims=1                         " 注释前加一个空格"


vmap v (expand_region_expand)
vmap V (expand_region_shrink)                   " 区域选择 "


" nnoremap <Leader>h :GundoToggle<cr>


"高级搜索定位----------------------------------------------超神级别搜索插件"
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-s)
" 我靠，下面几个快捷键才是最屌的啊
map <Leader><Leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>. <Plug>(easymotion-repeat)



"--------- JS 语法高亮---------------"
let g:javascript_plugin_jsdoc = 1               " JavaScript "
let javascript_enable_domhtmlcss = 1


"----------括号高亮--------------"
let g:rbpt_colorpairs = [
    \ ['brown', 'RoyalBlue3'],
    \ ['Darkblue', 'SeaGreen3'],
    \ ['darkgray', 'DarkOrchid3'],
    \ ['darkgreen', 'firebrick3'],
    \ ['darkcyan', 'RoyalBlue3'],
    \ ['darkred', 'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown', 'firebrick3'],
    \ ['gray', 'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue', 'firebrick3'],
    \ ['darkgreen', 'RoyalBlue3'],
    \ ['darkcyan', 'SeaGreen3'],
    \ ['darkred', 'DarkOrchid3'],
    \ ['red', 'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"宏"





"-------- 自动补全问题调试 --------------"
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'


"NERDTree 自动退出和自动开启"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"自动开始缩进提示条
let g:indent_guides_enable_on_vim_startup = 1

"自动开启css补全"
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif



"--------变量对齐------------"
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"--------Auto-Commands------------"

"Automatically source the Vimrc file on save"
augroup autosourcing
    autocmd!
    autocmd BufWritePost init.vim source %
augroup END


"基础覆盖"
" tab 栏目颜色
hi TabLineFill term=bold ctermfg=234 ctermbg=234
hi TabLineSel ctermfg=green ctermbg=234
hi TabLine ctermfg=Blue ctermbg=234

" 窗口最大化最小化“
nmap <leader>f :MaximizerToggle<cr>


" 文件框架
" autocmd BufNewFile *.js r /Users/saul/.vim/skeleton/react.js
nmap K gt

