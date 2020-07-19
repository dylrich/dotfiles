" load everything in our plugins folder
packloadall

" remap colon to semicolon for easier command mode
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" remap leader to space, we're spacemaces now!
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" bind ev to open this file; es will reload the configuration
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>es :source $MYVIMRC<cr>

" bind functions that help find text. space f finds file names,
" space g greps the current directory, space b searches buffer
" names, space l searches open buffers' lines
nnoremap <space>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>s :BLines<CR>
nnoremap <leader>g :Rg<CR>

" crude auto-closing keybinds for strings and brackets and whatnot.
" only does anything in insert mode
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" lsp keybindings for common code navigation tasks
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> cr    <cmd>lua vim.lsp.buf.clear_references()<CR>

" turn on plugins, indent, and syntax highlighting
filetype plugin on
filetype indent on
syntax on

" great colorscheme
colorscheme embark

" always allow mouse motions (for resizing splits)
set mouse=a
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set autoindent
set number relativenumber
set ruler
set showcmd
set hlsearch
set smartcase
set ignorecase
set smartindent
set smarttab
set backspace=indent,eol,start
set visualbell
set showmatch
set clipboard+=unnamedplus
set statusline=
set modelines=0
set nomodeline
set noshowmode
set incsearch
set background=dark
set laststatus=2
set termguicolors

" set netrw settings for when we need a file tree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" in case we ever want to use sessions
let g:PathToSessions = "~/.config/nvim/sessions"

" make the status line change colors
au InsertEnter * hi StatusLine term=reverse guifg=10 guibg=12 gui=bold,reverse
au InsertLeave * hi StatusLine term=reverse guifg=0 guibg=2 gui=bold,reverse

" ==================
" fzf configuration
" ==================
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'vendor/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:-1,hl+:1 --color=info:-1,prompt:-1,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=0,4'

" uses the floating window api to float fzf in the center of the screen
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')
 
  let height = float2nr(40)
  let width = float2nr(160)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 1
 
  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }
 
  call nvim_open_win(buf, v:true, opts)
endfunction

" ===================
" lsp configuration
" ===================
lua << EOF

require'nvim_lsp'.gopls.setup{}

EOF

" what should appear in the gutter when there are mistakes?
sign define LspDiagnosticsErrorSign text=>> texthl=TSError linehl= numhl=
sign define LspDiagnosticsWarningSign text=W texthl=LspDiagnosticsWarning linehl= numhl=
sign define LspDiagnosticsInformationSign text=I texthl=LspDiagnosticsInformation linehl= numhl=
sign define LspDiagnosticsHintSign text=H texthl=LspDiagnosticsHint linehl= numhl=

" auto format on save
autocmd BufWritePre *.go,*.py lua vim.lsp.buf.formatting_sync(nil, 1000)

" use the lsp omnifunc for autocomplete
autocmd Filetype python,go setlocal omnifunc=v:lua.vim.lsp.omnifunc

