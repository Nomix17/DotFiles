local vscode = require('vscode')

local map = vim.keymap.set
local opts = { noremap = true, silent = true, nowait = true }

local function vs(cmd, vscode_opts)
  return function() vscode.action(cmd, vscode_opts) end
end

map('n', '<C-j>', 'gj', opts)
map('v', '<C-j>', 'gj', opts)
map('n', '<C-k>', 'gk', opts)
map('v', '<C-k>', 'gk', opts)

map('n', 'q', '~', opts)
map('v', 'q', '~', opts)
map('n', '<C-a>', 'ggVG', opts)

map('n', '<', '<<', opts)
map('n', '>', '>>', opts)
map('v', '>', '>gv', opts)
map('v', '<', '<gv', opts)

map('n', '.', 'dl', opts)
map('n', ',', 'dh', opts)

map('i', 'jj', '<ESC>', opts)
map('i', 'JJ', '<ESC>', opts)
map('i', 'Jj', '<ESC>', opts)
map('i', 'jJ', '<ESC>', opts)

map('n', 'dd', '"_dd', opts)
map('n', 'd', '"_d', opts)
map('v', 'd', '"_d', opts)

map('n', 'xx', 'dd', opts)
map('v', 'x', 'd', opts)
map('n', 'xe', 'de', opts)
map('n', 'x$', 'd$', opts)

map({ 'n', 'v' }, 'm', '%', { desc = 'Jump to matching pair' })

map('n', '[m', '[{', opts)
map('n', ']m', ']}', opts)
map('v', '[m', '[{', opts)
map('v', ']m', ']}', opts)

map('n', '<C-f>', vs('editor.toggleFold'), { desc = 'Toggle fold' })
map('v', '<C-f>', vs('editor.foldRecursively'), { desc = 'Fold' })

map('n', '<C-b>', vs('workbench.action.toggleSidebarVisibility'), { desc = 'Toggle sidebar' })
map('n', '<leader>e', vs('workbench.view.explorer'), { desc = 'Focus explorer' })

map('n', '<A-,>', vs('workbench.action.previousEditor'), opts)
map('n', '<A-.>', vs('workbench.action.nextEditor'), opts)

map('n', '<A-S-,>', vs('workbench.action.moveEditorLeftInGroup'), opts)
map('n', '<A-S-.>', vs('workbench.action.moveEditorRightInGroup'), opts)

for i = 1, 9 do
  map('n', '<A-' .. i .. '>', vs('workbench.action.openEditorAtIndex' .. i), opts)
end
map('n', '<A-0>', vs('workbench.action.lastEditorInGroup'), opts)

map('n', '<A-d>', vs('workbench.action.closeActiveEditor'), opts)
map('n', '<A-S-D>', vs('workbench.action.reopenClosedEditor'), opts)

map('n', '<A-p>', vs('workbench.action.showAllEditors'), opts)
map('n', '<A-r>', vs('markdown.showPreviewToSide'), { desc = 'Toggle Markdown Preview' })
map('n', '<A-Space>', vs('workbench.actions.view.problems'), { desc = 'Toggle Problems panel' })
