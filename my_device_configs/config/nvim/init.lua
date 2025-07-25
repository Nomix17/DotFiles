-- General settings
vim.o.mouse = 'a'
vim.o.termguicolors = true 
vim.o.background = "dark"
vim.g.python3_host_prog = '/usr/bin/python3'
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.autoindent = true
vim.opt.clipboard = "unnamedplus"

-- Packer plugin manager setup
vim.cmd [[packadd packer.nvim]]
require('packer').startup(function()
    use 'wbthomason/packer.nvim'  -- Packer manager
    use 'catppuccin/nvim'          -- Additional theme option
    use 'tpope/vim-surround'
    use 'neoclide/coc.nvim' 
    use 'tpope/vim-commentary'
    use 'ap/vim-css-color'
    use 'preservim/nerdtree'
    use 'rafi/awesome-vim-colorschemes'
    use 'nvim-tree/nvim-web-devicons'
    use 'lewis6991/gitsigns.nvim'
    use 'romgrk/barbar.nvim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'terryma/vim-multiple-cursors'
    use 'ryanoasis/vim-devicons'
    use 'mg979/vim-visual-multi'
    use 'rainglow/vim'
    use 'petertriho/nvim-scrollbar'
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

end)

-- Set colorscheme
vim.cmd("colorscheme azure-contrast")
vim.g.airline_theme = 'ouo'

--Jump
vim.keymap.set('n', '<C-S-j>', '5j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-k>', '5k', { noremap = true, silent = true })



-- Key mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Clipboard shortcuts
map('v', '<C-S-X>', '"+x', opts)
map('v', '<C-S-C>', '"+y', opts)
map('v', 'y', '"+y', { noremap = true, silent = true })
map('n', 'Y', '"+yy', { noremap = true, silent = true })

-- NERDTree mappings
map('n', '<C-f>', ':NERDTreeFocus<CR>', opts)
map('n', '<C-b>', ':NERDTreeToggle<CR>', opts)

-- toggleterm mappings
-- map('n','<C-j>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>',{silent = true});

-- Additional mappings
vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', { silent = true })
vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', { silent = true })
vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', { silent = true })
vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', { silent = true })
vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', { silent = true })
vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', { silent = true })
vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', { silent = true })
vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', { silent = true })
vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', { silent = true })
vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', { silent = true })
vim.keymap.set('n', '<C-w>', '<Cmd>BufferClose<CR>', { silent = true })
vim.keymap.set('n', '<C-S-t>', '<Cmd>BufferRestore<CR>', { silent = true })

map('n', '<C-a>', 'ggVG', opts)
map("n", "<", "<<", opts)
map("n", ">", ">>", opts)
map("i", "jj", "<ESC>", opts)
map("i", "JJ", "<ESC>", opts)
map("i", "Jj", "<ESC>", opts)
map("i", "jJ", "<ESC>", opts)


require'barbar'.setup {
  icons = {
    separator = {left = '▎', right = ''},
    inactive = {separator = {left = '▎', right = ''}},
  },
  
  animation = true,
  
  clickable = true,
}
