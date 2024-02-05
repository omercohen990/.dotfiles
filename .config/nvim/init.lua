vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('setup-lazy')
require('setup-lsp')
require('setup-cmp')
require('settings')
require('keymaps')
require('lastplace')
-- require 'winbar'

-- vim: ts=2 sts=2 sw=2 et
