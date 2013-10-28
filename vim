


au GUIEnter * simalt ~x

"https://github.com/AlloVince/vim-of-allovince"
"http://wiki.xnwww.net/software/gvim/%E5%A6%82%E4%BD%95%E5%AE%9E%E7%8E%B0gvim%E7%9A%84%E8%87%AA%E5%8A%A8%E8%A1%A5%E5%85%A8"
"括号自动生成"

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i


function ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
      return "\<Right>"
  else
      return a:char
  endif
endfunction

"Tab键自动补全"
"

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"




""set nu       "打开行号显示
""set ts=4     "设置tabstop，即tab键占用的空格数，:help tabstop
""set sw=4     "设置shiftwidth，即>>一次移动多少空格, :help shiftwidth
""set cindent  "C语言智能缩进
""set textwidth=80   "设置一行字符宽度
""set comments=sl:/*,mb:**,elx:*   "自动补全注释符号
""filetype plugin indent  on    "开启文件类型自动检测
""set completeopt=longest,menu  "设置单词自动补全选项
""set autoindent   "设置自动缩进
""set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936  "设置编码，正确的编码才可以显示中文
""set fdm=indent   "设置折叠模式为依据缩进自动折叠，:help fdm
""set hlsearch    "设置搜索时高亮显示搜索字，:help hlsearch
" Always show the status line
""set laststatus=2
set tags=/home/wangyi/下载/weibo-phpsdk/tags
" Status line format:
" {buffer number}: {file name, relative path to the current working directory}{modified flag}{readonly flag}
" {help flag}{preview flag} [file type, encoding, format] [current line-total lines, current column][position percentage in file]set statusline=%n:\ %f%m%r%h%w\ [%Y,%{&fileencoding},%{&fileformat}]\ [%l-%L,%v][%p%%]
" change commennt color to baby blue
hi Comment ctermfg=6


"=====================================================================
"taglist option，设置taglist插件的选项，进行定制
"=====================================================================
let Tlist_Show_One_File=1      "只显示一个文件的tags
let Tlist_Exit_OnlyWindow=1    "当taglist窗口是最后一个窗口时，退出vim
let Tlist_Use_Left_Window=1   "taglist窗口显示在右侧
let mapleader = ","            "修改引导符为",",默认为"\"，后面都使用修改后的值
noremap <silent> <F6> :TlistToggle<CR>      "相当于定义快捷键
noremap <silent> <Leader>tt :TlistToggle<CR>  "定义第二个快捷键


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"
"if has("cscope")
"   set csprg=/usr/bin/cscope              "指定用来执行 cscope 的命令
"   set csto=1                             "先搜索tags标签文件，再搜索cscope数据库
"   set cst                                "使用|:cstag|(:cs find g)，而不是缺省的:tag
"   set nocsverb                           "不显示添加数据库是否成功
"   " add any database in current directory
"   if filereadable("cscope.out")
"      cs add cscope.out                   "添加cscope数据库
"   endif
"   set csverb                             "显示添加成功与否
"endif
"
"nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set modifiable

set write


 
set guifont=Monaco:h10       " 字体 && 字号
set expandtab                " 设置tab键换空格
set tabstop=4                " 设置tab键的宽度
set shiftwidth=4             " 换行时行间交错使用4个空格
set autoindent               " 自动对齐
set backspace=2              " 设置退格键可用
set cindent shiftwidth=4    " 自动缩进4空格
set smartindent              " 智能自动缩进
set ai!                      " 设置自动缩进
set showmatch               " 显示括号配对情况
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 查找book时，当输入/b时会自动找到
set hlsearch                 " 开启高亮显示结果
set incsearch                " 开启实时搜索功能
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
""set cursorline              " 突出显示当前行
set hidden                   " 允许在有未保存的修改时切换缓冲区
set confirm         "qiyongtishi 
 
syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全
 
set writebackup              " 设置无备份文件
set nobackup
set autochdir                " 设定文件浏览器目录为当前目录
"set nowrap                  " 设置不自动换行
set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠
 
set laststatus=2             " 开启状态栏信息
set cmdheight=2              " 命令行的高度，默认为1，这里设为2
 
" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm,*.py,*.rb,*.erb,*.hs,*.vim 2match Underlined /.\%81v/
 
 
" 设置编码
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 解决consle输出乱码
language messages zh_CN.utf-8
 
 
" For Haskell
:let hs_highlight_delimiters=1            " 高亮定界符
:let hs_highlight_boolean=1               " 把True和False识别为关键字
:let hs_highlight_types=1                 " 把基本类型的名字识别为关键字
:let hs_highlight_more_types=1            " 把更多常用类型识别为关键字
:let hs_highlight_debug=1                 " 高亮调试函数的名字
:let hs_allow_hash_operator=1             " 阻止把#高亮为错误




"set completeopt=longest,menu    " 设置代码提示为弹出层
"function AddPHPFuncList()
"    set dictionary-=/home/wangyi/tools/vim/funclist.txt  dictionary+=/home/wangyi/tools/vim/funclist.txt 
"    set complete-=k complete+=k
"endfunction
"au FileType php call AddPHPFuncList()   " 告诉 VIM 以后缀名来识别文件类型,以进行函数自动补全.

"if !exists(‘g:AutoComplPop_Behavior’)
"let g:AutoComplPop_Behavior = {}
"let g:AutoComplPop_Behavior['php'] = []
"call add(g:AutoComplPop_Behavior['php'], {

"\ ‘command’ : “\\“,
"\ ‘pattern’ : printf(‘\(->\|::\|\$\)\k\{%d,}$’, 0),
"\ ‘repeat’ : 0,
"\})
"endif


"找到 _vimrc 配置文件，在文件的任意地方加入如下设置项
 
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  autocmd FileType javascrīpt set omnifunc=javascrīptcomplete#CompleteJS
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
  autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
  autocmd FileType php set omnifunc=phpcomplete#CompletePHP
  autocmd FileType c set omnifunc=ccomplete#Complete
""autocmd FileType python set omnifunc=pythoncomplete#Complete
""autocmd FileType javascrīpt set omnifunc=javascrīptcomplete#CompleteJS
""autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
""autocmd FileType css set omnifunc=csscomplete#CompleteCSS
""autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
""autocmd FileType php set omnifunc=phpcomplete#CompletePHP
""autocmd FileType c set omnifunc=ccomplete#Completei
"url:http://blog.xiaoqiu.org/?p=715

"补全的使用方法也是比较简单的，只要在输入代码时，按住Ctrl 然后按x 再按o 就可以了，即是x 跟 o 要紧着按,Ctrl 不要松开。
"
if !exists("g:AutoComplPop_Behavior")
let g:AutoComplPop_Behavior = {}
let g:AutoComplPop_Behavior['php'] = []
call add(g:AutoComplPop_Behavior['php'], {
\ 'command' : "\\",
\ 'pattern' : printf('\(->\|::\|\$\)\k\{%d,}$', 0),
\ 'repeat' : 0,
\})
endif

" http://www.blags.org/archives/363.html"

