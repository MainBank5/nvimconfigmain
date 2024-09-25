vim.opt.number = true
-- Enable automatic indentation
vim.opt.autoindent = true

-- Set tab and indentation options
vim.opt.tabstop = 4        -- Number of spaces that a tab counts for
vim.opt.shiftwidth = 4     -- Number of spaces to use for each step of (auto)indent
vim.opt.smarttab = true    -- Enable smart tabbing
vim.opt.softtabstop = 4    -- Number of spaces a tab counts for while editing

-- Enable mouse support
vim.opt.mouse = 'a'        -- Enable mouse in all modes
-- Initialize Vim Plug
-- Initialize Vim Plug
vim.call('plug#begin', '~/.local/share/nvim/plugged')

-- Specify the remote GitHub plugin
vim.call('plug#', 'vim-airline/vim-airline')  --Status bar
vim.call('plug#', 'preservim/nerdtree')       -- Add NERDTree
vim.call('plug#', 'tpope/vim-surround')                -- Surrounding (ysw)
vim.call('plug#', 'tpope/vim-commentary')              -- For commenting (gcc & gc)
vim.call('plug#', 'ap/vim-css-color')                  -- CSS Color Preview
vim.call('plug#', 'rafi/awesome-vim-colorschemes')    -- Retro Scheme
vim.call('plug#', 'ryanoasis/vim-devicons')           -- Developer Icons
vim.call('plug#', 'tc50cal/vim-terminal')              -- Vim Terminal
vim.call('plug#', 'https://github.com/preservim/tagbar') -- Tagbar for code navigation
vim.call('plug#', 'https://github.com/neoclide/coc.nvim', { ['do'] = 'yarn install --frozen-lockfile' }) -- Auto Completion
-- End the plugin section
vim.call('plug#end')

-- Set NERDTree directory arrows
vim.g.NERDTreeDirArrowExpandable = "+"
vim.g.NERDTreeDirArrowCollapsible = "~"

-- Keybindings for NERDTree
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFocus<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTree<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F8>', ':TagbarToggle<CR>', { noremap = true, silent = true })

--terminal shortcut
vim.api.nvim_set_keymap('n', '<C-t>', ':Terminal --horizontal<CR>', { noremap = true, silent = true })

-- Navigate completion suggestions
vim.api.nvim_set_keymap('i', '<C-n>', ' coc#refresh()', { expr = true, silent = true })


-- Accept completion with Enter
vim.api.nvim_set_keymap('i', '<CR>', 'coc#pum#visible() ? coc#pum#confirm() : "<CR>"', { expr = true, silent = true })

-- Accept completion with Tab
vim.api.nvim_set_keymap('i', '<Tab>', 'coc#pum#visible() ? coc#pum#confirm() : "<Tab>"', { expr = true, silent = true })

-- Select next completion
vim.api.nvim_set_keymap('i', '<C-n>', 'coc#pum#visible() ? "\\<C-n>" : "<C-n>"', { expr = true, silent = true })

-- Select previous completion
vim.api.nvim_set_keymap('i', '<C-p>', 'coc#pum#visible() ? "\\<C-p>" : "<C-p>"', { expr = true, silent = true })

-- Trigger completion menu
vim.api.nvim_set_keymap('i', '<C-Space>', 'coc#refresh()', { expr = true, silent = true })