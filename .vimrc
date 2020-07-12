set autoindent
set autoread
set backspace=indent,eol,start
set cursorline
set hidden
set ignorecase
set incsearch
set nocompatible
set number 
set ruler
set showcmd
set showmatch
set showmode
set smartcase

""Tabs
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

""Hidden characters
set list
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:│ ,extends:❯,precedes:❮,nbsp:±,trail:_'
else
  let &listchars = 'tab:| ,extends:>,precedes:<,nbsp:.,trail:_'
endif

syntax enable
filetype plugin on

set path+=**
set wildmenu

command! MakeTags !ctags -R .

let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

" Add your own mapping. For example:
noremap <silent> <C-E> :call ToggleNetrw()<CR>

""insert html snippet
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

""linestatus
set laststatus=2
set statusline=
set statusline+=%{StatuslineMode()}
set statusline+=\ <
set statusline+=\ 
set statusline+=%l
set statusline+=/
set statusline+=%L
set statusline+=\ 
set statusline+=>
set statusline+=%{b:gitbranch}

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    exe 'hi! StatusLine ctermfg=081'
    return "NORMAL"
  elseif l:mode==?"v"
    exe 'hi! StatusLine ctermfg=042'
    return "VISUAL"
  elseif l:mode==#"i"
    exe 'hi! StatusLine ctermfg=173'
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction

function! StatuslineGitBranch()
  let b:gitbranch=""
  if &modifiable
    try
      let l:dir=expand('%:p:h')
      let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
      if !v:shell_error
        let b:gitbranch="(".substitute(l:gitrevparse, '
', '', 'g').") "
      endif
    catch
    endtry
  endif
endfunction

augroup GetGitBranch
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END

