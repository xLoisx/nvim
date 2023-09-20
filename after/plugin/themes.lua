-- Lua initialization file
vim.g.nightflyCursorColor = true

-- Lua initialization file
vim.g.nightflyVirtualTextColor = true

-- Lua initialization file
vim.g.nightflyWinSeparator = 2

-- Lua initialization file
local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "nightfly",
  callback = function()
    vim.api.nvim_set_hl(0, "Function", { fg = "#82aaff", bold = true })
  end,
  group = custom_highlight,
})

-- Lua initialization file
vim.g.nightflyWinSeparator = 2

-- Lua initialization file
vim.cmd [[colorscheme nightfly]]
