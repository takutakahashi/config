syntax on
set noautoindent
set tabstop=2
set shiftwidth=2
set expandtab
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml_file = s:dein_dir . '/plugins.toml'
let mapleader = "\<Space>"

nmap <silent> <Leader>d :LspDefinition<CR>
nmap <silent> <Leader>p :LspHover<CR>
nmap <silent> <Leader>r :LspReferences<CR>
nmap <silent> <Leader>i :LspImplementation<CR>
nmap <silent> <Leader>s :split \| :LspDefinition <CR>
nmap <silent> <Leader>v :vsplit \| :LspDefinition <CR>
nnoremap <C-k> <PageUp>
nnoremap <C-j> <PageDown>
nnoremap fh <C-w>h
nnoremap fl <C-w>l
nnoremap fk <C-w>k
nnoremap fj <C-w>j
nnoremap ; :
nnoremap <S-j> jjjjj
nnoremap <S-k> kkkkk
nnoremap <S-h> hhhhh
nnoremap <S-l> lllll

if executable('solargraph')
    " gem install solargraph
    au User lsp_setup call lsp#register_server({
        \ 'name': 'solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
endif

if &compatible
  set nocompatible
endif

if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim.git' s:dein_repo_dir
endif

execute 'set runtimepath^=' . s:dein_repo_dir

call dein#begin(s:dein_dir)

if dein#load_state(s:dein_dir)
  call dein#load_toml(s:toml_file)
endif" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
if dein#check_install()
  call dein#install()
endif
call dein#end()
call dein#save_state()

filetype plugin indent on

" for macvim
set guioptions=c

