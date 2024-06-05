" ~/.config/nvim/minimal/init.vim



    call plug#begin('~/.vim/plugged')

    Plug 'kdheepak/lazygit.nvim'

    call plug#end()



    nnoremap <silent> <leader>lg :LazyGit<CR>

    let mapleader = " "
