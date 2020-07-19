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

nnoremap <leader>t :call ToggleNetrw()<cr>

" escape will remove all highlighting
nnoremap <esc> :noh<return><esc>

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
:TSEnableAll highlight

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

" toggle netrw!
function! ToggleNetrw()
        let i = bufnr("$")
        let wasOpen = 0
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
                let wasOpen = 1
            endif
            let i-=1
        endwhile
    if !wasOpen
        silent Lexplore
    endif
endfunction

" in case we ever want to use sessions
let g:PathToSessions = "~/.config/nvim/sessions"

" open help in vertical split
au FileType help wincmd L

" search isn't set by the theme correctly
hi Search guibg=#ffe6b3 guifg=#1e1c31

" turn on blinking and make the cursor green!
highlight Cursor guifg=white guibg=#A1EFD3
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175

" =========================
" status line configuration
" =========================

" each mode will change the status line color
hi StatusNormal term=reverse guifg=#d4bfff guibg=0 gui=bold,reverse
hi StatusInsert term=reverse guifg=#F48FB1 guibg=0 gui=bold,reverse
hi StatusVisual term=reverse guifg=#91ddff guibg=0 gui=bold,reverse

" map mode code to a name
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

" return git branch name
function! BuildStatuslineGit()
  let l:branchname = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

" build the status line!
function! BuildStatusline()
  let line = '' 
  let mode = mode()

  if mode == 'n'
    let line .= '%#StatusNormal#'
  elseif mode == 'i'
    let line .= '%#StatusInsert#'
  elseif mode == 'v'
    let line .= '%#StatusVisual#'
  endif

  let line .='%t %m %r %h %w'
  let line .= '%='
  let line .= 'L%L (%2p%%) %{toupper(g:currentmode[mode()])} %Y% %{toupper(BuildStatuslineGit())}'

    return line
endfunc

set statusline+=%!BuildStatusline()

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

