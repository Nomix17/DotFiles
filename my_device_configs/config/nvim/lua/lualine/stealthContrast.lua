local colors = {

  bg = '#1a1b26',
  bg_alt = '#24283b',
  bg_highlight = '#2f3549',
  
  fg = '#c0caf5',
  fg_alt = '#a9b1d6',
  fg_dim = '#565f89',
  
  -- Mode-specific accent colors
  normal = '#7aa2f7',      -- Calm blue
  insert = '#9ece6a',      -- Fresh green
  visual = '#bb9af7',      -- Soft purple
  replace = '#f7768e',     -- Coral red
  command = '#e0af68',     -- Warm yellow
  terminal = '#7dcfff',    -- Cyan
  
  -- Status indicators
  warning = '#e0af68',
  error = '#f7768e',
  info = '#7dcfff',
  hint = '#1abc9c',
  
  -- Git colors
  git_add = '#9ece6a',
  git_change = '#e0af68',
  git_delete = '#f7768e',
  
  -- Special
  none = 'NONE',
}

local ouo = {
  normal = {
    a = { fg = colors.bg, bg = colors.normal, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg_highlight },
    c = { fg = colors.fg_alt, bg = colors.bg },
    x = { fg = colors.fg_alt, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg_highlight },
    z = { fg = colors.bg, bg = colors.normal },
  },
  
  insert = {
    a = { fg = colors.bg, bg = colors.insert, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg_highlight },
    c = { fg = colors.fg_alt, bg = colors.bg },
    x = { fg = colors.fg_alt, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg_highlight },
    z = { fg = colors.bg, bg = colors.insert },
  },
  
  visual = {
    a = { fg = colors.bg, bg = colors.visual, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg_highlight },
    c = { fg = colors.fg_alt, bg = colors.bg },
    x = { fg = colors.fg_alt, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg_highlight },
    z = { fg = colors.bg, bg = colors.visual },
  },
  
  replace = {
    a = { fg = colors.bg, bg = colors.replace, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg_highlight },
    c = { fg = colors.fg_alt, bg = colors.bg },
    x = { fg = colors.fg_alt, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg_highlight },
    z = { fg = colors.bg, bg = colors.replace },
  },
  
  command = {
    a = { fg = colors.bg, bg = colors.command, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg_highlight },
    c = { fg = colors.fg_alt, bg = colors.bg },
    x = { fg = colors.fg_alt, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg_highlight },
    z = { fg = colors.bg, bg = colors.command },
  },
  
  terminal = {
    a = { fg = colors.bg, bg = colors.terminal, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg_highlight },
    c = { fg = colors.fg_alt, bg = colors.bg },
  },
  
  inactive = {
    a = { fg = colors.fg_dim, bg = colors.bg_alt },
    b = { fg = colors.fg_dim, bg = colors.bg },
    c = { fg = colors.fg_dim, bg = colors.bg },
  },
}

-- Diagnostics and diff colors
ouo.normal.error = { fg = colors.error, bg = colors.bg }
ouo.normal.warning = { fg = colors.warning, bg = colors.bg }
ouo.normal.info = { fg = colors.info, bg = colors.bg }
ouo.normal.hint = { fg = colors.hint, bg = colors.bg }

ouo.insert.error = ouo.normal.error
ouo.insert.warning = ouo.normal.warning
ouo.insert.info = ouo.normal.info
ouo.insert.hint = ouo.normal.hint

ouo.visual.error = ouo.normal.error
ouo.visual.warning = ouo.normal.warning
ouo.visual.info = ouo.normal.info
ouo.visual.hint = ouo.normal.hint

ouo.replace.error = ouo.normal.error
ouo.replace.warning = ouo.normal.warning
ouo.replace.info = ouo.normal.info
ouo.replace.hint = ouo.normal.hint

return ouo
