vim.o.mouse = 'a'
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.autoindent = true
vim.opt.clipboard = "unnamedplus"

local original_notify = vim.notify
vim.notify = function(msg, log_level, opts)
  if log_level == vim.log.levels.WARN then
    return
  end
  original_notify(msg, log_level, opts)
end


require("configs.keymaps")
