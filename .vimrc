" Pathogen
call pathogen#infect()
""call pathogen#helptags()
set clipboard=unnamed 
set nocompatible
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on

" This is to allow for correct indentation based on the filetype
filetype indent on
autocmd BufRead,BufNewFile *.erb set filetype=eruby.html

"Use this when a save should sync up with rlogin"
"":autocmd BufWritePost * !send.sh %:p

let g:pymode_lint_write = 0
 
syntax on
set number
set mouse=a
set mousehide

set nohlsearch
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
set showmatch
set incsearch
set ignorecase
set autoindent
set history=1000
set cursorline
set nofoldenable
" EASY MOTION - Must press <Leader>w to activate it
let g:EasyMotion_leader_key = '<Leader>'

"SNIPMATE"
"":filetype plugin on

" Nerdtree
"The next line open NERTree automatically on start-up"
""autocmd vimenter * NERDTree
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
"DO NOT IGNORE ANYTHING RIGHT NOW - We want to show hidden files"
"let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen = 0
map <F2> :NERDTreeToggle<CR> 

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_dotfiles =1 
let g:ctrlp_show_hidden = 1
" solarized options 
syntax enable
set t_Co=256
set background=dark
colorscheme solarized
let g:solarized_termcolors= 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

"Neocomplcache"
" Disable AutoComplPop. Comment out this line if AutoComplPop is not installed.
let g:acp_enableAtStartup = 0
" Launches neocomplcache automatically on vim startup.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 4
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define file-type dependent dictionaries.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword, for minor languages
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete softtabstop=2 tabstop=2 shiftwidth=2 expandtab
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType c setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab
autocmd FileType java setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab

" Enable heavy omni completion, which require computational power and may stall the vim. 
"if !exists('g:neocomplcache_omni_patterns')
  "let g:neocomplcache_omni_patterns = {}
"endif
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
""autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
"let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

noremap <Leader>rs :call RunSpec('spec', '-fp')<CR>
noremap <Leader>rd :call RunSpec(expand('%:h'), '-fd')<CR>
noremap <Leader>rf :call RunSpec(expand('%'), '-fd')<CR>
noremap <Leader>rl :call RunSpec(expand('%'), '-fd -l ' . line('.'))<CR>

"CURSOR CONFIGURATION"
highlight Cursor guifg=steelblue guibg=steelblue
highlight iCursor guifg=steelblue guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

"function! RestoreSession()
  "if argc() == 0 "vim called without arguments
    "execute 'source ~/.vim/Session.vim'
  "end
"endfunction
"autocmd VimEnter * call RestoreSession()

""save and close all files and save global session
"nnoremap <leader>q :mksession! ~/.vim/Session.vim<CR>:wqa<CR>
""close all files without saving and save global session
"nnoremap <leader>www :mksession! ~/.vim/Session.vim<CR>:wqa!<CR>

"function! RunSpec(spec_path, spec_opts)
  "let speccish = match(@%, '_spec.rb$') != -1
  "if speccish
    "exec '!bundle exec rspec ' . a:spec_opts . ' ' . a:spec_path
  "else
    "echo '<< WARNING >> RunSpec() can only be called from inside spec files!'
  "endif
"endfunction

" solarized options 
syntax enable
set t_co=256
set background=dark
colorscheme solarized
