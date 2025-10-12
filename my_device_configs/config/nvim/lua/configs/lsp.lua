local blink = require'blink.cmp'

blink.setup({
  appearance = { use_nvim_cmp_as_default = true, nerd_font_variant = 'mono' },
  completion = {
    accept = { auto_brackets = { enabled = true } },
    documentation = { auto_show = true, auto_show_delay_ms = 250, treesitter_highlighting = true },
    auto_show = true,
    auto_accept = false,
    debounce_ms = 100,
    ghost_text = { enabled = false },
  },
  sources = { default = { 'lsp', 'path', 'buffer' } },
  snippets = { preset = 'luasnip' },
  signature = { enabled = true },

  keymap = {
    ['<C-l>'] = { 'select_and_accept', 'fallback' },
    ['<C-j>'] = { 'select_next', 'fallback' },
    ['<C-k>'] = { 'select_prev', 'fallback' },
    ['<C-e>'] = { 'hide' },
  },

})

-- LSP capabilities with blink.cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend('force', capabilities, blink.get_lsp_capabilities())

require("mason").setup()
require("mason-lspconfig").setup({ automatic_installation = true })

local lspconfig = require("lspconfig")
local util = require("lspconfig.util")
local installed_servers = require("mason-lspconfig").get_installed_servers()

for _, server in ipairs(installed_servers) do
  lspconfig[server].setup({
    capabilities = capabilities,
    root_dir = function(fname)
      return util.root_pattern(".git")(fname) or vim.fn.getcwd()
    end,
  })
end

