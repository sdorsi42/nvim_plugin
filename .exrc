let s:cpo_save=&cpo
set cpo&vim
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
imap <M-C-Right> <Plug>(copilot-accept-line)
imap <M-Right> <Plug>(copilot-accept-word)
imap <M-Bslash> <Plug>(copilot-suggest)
imap <M-[> <Plug>(copilot-previous)
imap <M-]> <Plug>(copilot-next)
imap <Plug>(copilot-suggest) <Cmd>call copilot#Suggest()
imap <Plug>(copilot-previous) <Cmd>call copilot#Previous()
imap <Plug>(copilot-next) <Cmd>call copilot#Next()
imap <Plug>(copilot-dismiss) <Cmd>call copilot#Dismiss()
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <silent> <SNR>37_AutoPairsReturn =AutoPairsReturn()
inoremap <C-C> 
inoremap <C-W> u
inoremap <C-U> u
nnoremap  :NERDTreeFocus
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
xnoremap <silent>  :call multiple_cursors#new("v", 0)
nnoremap <silent>  :call multiple_cursors#new("n", 1)
nnoremap  :NERDTreeToggle
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap <silent> <expr> @ mode() == 'V' ? ':normal! @'.getcharstr().'' : '@'
xnoremap <silent> <expr> Q mode() == 'V' ? ':normal! @=reg_recorded()' : 'Q'
xmap S <Plug>VSurround
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap \orn :ObsidianRename
nnoremap \ogf :ObsidianFollowLink
nnoremap \ott :ObsidianTomorrow
nnoremap \oy :ObsidianYesterday
nnoremap \ot :ObsidianToday
nnoremap \oo :ObsidianOpen
nnoremap \o :echo "Obsidian"
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nmap gcu <Plug>Commentary<Plug>Commentary
xnoremap <silent> g<M-n> :call multiple_cursors#select_all("v", 0)
nnoremap <silent> g<M-n> :call multiple_cursors#select_all("n", 0)
xnoremap <silent> g<C-N> :call multiple_cursors#new("v", 0)
xnoremap <silent> g :call multiple_cursors#new("v", 0)
nnoremap <silent> g<C-N> :call multiple_cursors#new("n", 0)
nnoremap <silent> g :call multiple_cursors#new("n", 0)
xmap gS <Plug>VgSurround
omap gc <Plug>Commentary
nmap gcc <Plug>CommentaryLine
xmap gc <Plug>Commentary
nmap gc <Plug>Commentary
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
xnoremap <silent> <M-n> :call multiple_cursors#select_all("v", 0)
nnoremap <silent> <M-n> :call multiple_cursors#select_all("n", 1)
xnoremap <silent> <C-N> :call multiple_cursors#new("v", 0)
nnoremap <silent> <F11> :call vimterm_term#exec_file()
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
nmap <F8> :TagbarToggle
nnoremap <C-T> :NERDTreeToggle
nnoremap <silent> <C-N> :call multiple_cursors#new("n", 1)
nnoremap <C-F> :NERDTreeFocus
nnoremap <C-L> <Cmd>nohlsearch|diffupdate|normal! 
inoremap  
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
inoremap  u
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set completeopt=menuone,longest,preview
set expandtab
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ -uuu\ $*\ /dev/null
set mouse=a
set runtimepath=~/.config/nvim,~/.vim/plugged/jedi-vim,~/.vim/plugged/nvim-treesitter,~/.vim/plugged/plenary.nvim,~/.vim/plugged/nvim-lspconfig,~/.vim/plugged/nerdtree,~/.vim/plugged/auto-pairs,~/.vim/plugged/vim-airline,~/.vim/plugged/vim-airline-themes,~/.vim/plugged/null-ls.nvim,~/.vim/plugged/telescope.nvim,~/.vim/plugged/telescope-fzf-native.nvim,~/.vim/plugged/vim-ipython-cell,~/.vim/plugged/copilot.vim,~/.vim/plugged/vim-surround,~/.vim/plugged/awesome-vim-colorschemes,~/.vim/plugged/vim-devicons,~/.vim/plugged/vim-terminal,~/.vim/plugged/tagbar,~/.vim/plugged/vim-multiple-cursors,~/.vim/plugged/vim-commentary,~/.vim/plugged/vim-fugitive,~/.vim/plugged/tokyonight.nvim,~/.vim/plugged/glow.nvim,~/.vim/plugged/markdown-preview.nvim,~/.vim/plugged/formatter.nvim,~/.vim/plugged/obsidian.nvim,~/.vim/plugged/undotree,~/.vim/plugged/lazy.nvim,~/.vim/plugged/wilder.nvim,/etc/xdg/nvim,~/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/share/nvim/runtime,/usr/share/nvim/runtime/pack/dist/opt/matchit,/usr/lib/x86_64-linux-gnu/nvim,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,~/.vim/plugged/jedi-vim/after,~/.vim/plugged/awesome-vim-colorschemes/after,~/.config/nvim/after
set scrolloff=8
set shiftwidth=4
set softtabstop=4
set tabstop=4
set termguicolors
set window=54
" vim: set ft=vim :
