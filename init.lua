-- Bootstrapping
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
   print('Installing packer...')
   local packer_url = 'https://github.com/wbthomason/packer.nvim'
   vim.fn.system({ 'git', 'clone', '--depth', '1', packer_url, install_path })
   print('Done.')

   vim.cmd('packadd packer.nvim')
   install_plugins = true
end
-- End of Bootstarpping

-- Vim opts :
vim.opt.termguicolors = true
vim.opt.rnu = true --realtive line numbering
vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.softtabstop = 3
vim.opt.expandtab = true
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.cmd("set encoding=UTF-8")

-- Installing and loading plugins :
require('plugins')
require('plugininit')
-- Note : pluginsinit is a file that calls every plugins setup, every plugins setup also loads it!

-- Theme loading :
require('theme')

-- Mappings, keybinds :
require('mappings')
