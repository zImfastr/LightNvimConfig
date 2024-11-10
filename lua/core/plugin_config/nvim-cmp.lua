local cmp = require("cmp")
local luasnip = require("luasnip")

--loads vscode style snippets from installed plugins

require("luasnip.loaders.from_vscode")

--cmp setup
cmp.setup({
  completion = {
    completeopt = "menu,menuone,prview,noselect",
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  }),
  -- sources for cmp
  sources = cmp.config.sources({
    { name = "luasnip" }, --snippets
    { name = "buffer" }, --test within current buffer
    { name = "path" }, -- file system paths
  }),
})
