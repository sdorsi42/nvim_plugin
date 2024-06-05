" Initialize plugin manager
call plug#begin('~/.vim/plugged')

" Syntax highlighting and code parsing
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Lua utility functions
Plug 'nvim-lua/plenary.nvim'

" Language Server Protocol configurations
Plug 'neovim/nvim-lspconfig'

" File explorer
Plug 'preservim/nerdtree'

" Auto-closing of brackets and quotes
Plug 'jiangmiao/auto-pairs'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Linting and formatting
Plug 'jose-elias-alvarez/null-ls.nvim'

" Fuzzy finder
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

" REPL support for Python
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }

" AI code completion
Plug 'github/copilot.vim'

" Surround text objects easily
Plug 'tpope/vim-surround'

" Collection of color schemes
Plug 'rafi/awesome-vim-colorschemes'

" Terminal integration
Plug 'tc50cal/vim-terminal'

" Code structure visualization
Plug 'preservim/tagbar'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Commenting utility
Plug 'tpope/vim-commentary'

" Git integration
Plug 'tpope/vim-fugitive'

" Markdown preview
Plug 'ellisonleao/glow.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

" Code formatter
Plug 'mhartington/formatter.nvim'

" Undo history visualizer
Plug 'mbbill/undotree'

" Lazy loading of plugins
Plug 'folke/lazy.nvim'

" Command-line completion
Plug 'gelguy/wilder.nvim'

" Obsidian note-taking integration
Plug 'epwalsh/obsidian.nvim', { 'lazy': 1, 'for': 'markdown' }

" Git status in NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'

" Python REPL integration
Plug 'tjdevries/apyrori.nvim'

" Debugging support
Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap-python'

" Git UI
Plug 'kdheepak/lazygit.nvim'

" File icons
Plug 'nvim-tree/nvim-web-devicons'

" AI code completion
Plug 'Exafunction/codeium.vim'
Plug 'zbirenbaum/copilot.lua', {'do': ':Copilot auth', 'on': 'InsertEnter'}
Plug 'zbirenbaum/copilot-cmp'

" Window management plugins
Plug 't9md/vim-choosewin' " Easily switch between windows
Plug 'christoomey/vim-tmux-navigator' " Seamless navigation between tmux panes and vim splits
Plug 'szw/vim-maximizer' " Maximize and restore windows

" Autocompletion plugin
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

call plug#end()

" Set colorscheme
colorscheme molokai

" Set encoding
set encoding=UTF-8

" Enable syntax highlighting
syntax enable

" Show line numbers
set number

" Enable filetype plugins and indentation
filetype plugin indent on

" Set conceal level for markdown
set conceallevel=2

" Set airline theme
let g:airline_theme='molokai'

" Set Python 3 host program
let g:python3_host_prog = '/usr/bin/python3'

" Treesitter configuration
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
}
EOF

" Glow configuration
lua << EOF
require('glow').setup()
EOF

" LSP configuration for Python
lua << EOF
require'lspconfig'.pyright.setup{}
EOF

" Telescope configuration
lua << EOF
require('telescope').load_extension('fzf')
EOF

" Auto command for IPython cell
autocmd FileType python if exists(":IPythonCellStart") | call IPythonCell_Start() | endif

" Set auto indentation
set autoindent

" Set tab width
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

" Enable mouse support
set mouse=a

" Use spaces instead of tabs
set expandtab

" Set scroll offset
set scrolloff=8

" NERDTree settings
let g:NERDTreeGitStatusUseNerdFonts = 1
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Tagbar settings
nmap <F8> :TagbarToggle<CR>

" NERDTree arrow settings
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Set ctags binary for Tagbar
let g:tagbar_ctags_bin = '/usr/bin/ctags'

" Obsidian configuration
lua << EOF
require('obsidian').setup({
  workspaces = {
    {
        name = 'personal',
        path = '~/vaults/personal',
    },
    {
        name = 'work',
        path = '~/vaults/work',
    },
  },
  ui = {
    enable = false,
  },
})
EOF

" Telescope key mappings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Apyrori key mapping
nmap <M-i> <plug>ApyroriInsert

" DAP Python configuration
lua << EOF
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
EOF

" Nvim-web-devicons configuration
lua << EOF
require'nvim-web-devicons'.setup {
  default = true;
}
EOF

" Codeium key mappings
let g:codeium_disable_bindings = 1
inoremap <M-c> <C-R>=codeium#Accept()<CR>
inoremap <M--> <C-R>=codeium#CycleCompletions(1)<CR>
inoremap <M-,> <C-R>=codeium#CycleCompletions(-1)<CR>
inoremap <M-x> <C-R>=codeium#Clear()<CR>

" Codeium key mappings for normal mode
nnoremap <M-n> :call codeium#CycleCompletions(1)<CR>
nnoremap <M-p> :call codeium#CycleCompletions(-1)<CR>

" vim-choosewin key mapping
nnoremap <leader>w :ChooseWin<CR>

" vim-tmux-navigator key mappings
nnoremap <C-h> :TmuxNavigateLeft<CR>
nnoremap <C-j> :TmuxNavigateDown<CR>
nnoremap <C-k> :TmuxNavigateUp<CR>
nnoremap <C-l> :TmuxNavigateRight<CR>

" vim-maximizer key mapping
nnoremap <leader>m :MaximizerToggle<CR>

" nvim-cmp setup for autocompletion
lua << EOF
local cmp = require'cmp'
local luasnip = require'luasnip'

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline('?', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
require('lspconfig')['pyright'].setup {
  capabilities = capabilities
}
EOF

" LazyGit popup configuration
nnoremap <silent> <leader>lg :LazyGit<CR>

