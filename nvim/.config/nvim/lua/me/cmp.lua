local cmp = require('cmp')
local lspkind = require('lspkind')
local cmp_action = require('lsp-zero').cmp_action()

--[[ lspkind.init() ]]

cmp.setup({
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm {
            select = true,
            behavior = cmp.ConfirmBehavior.Insert
        },
        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        -- Scroll up and down in the completion documentation
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),

        ['<C-n>'] = cmp_action.luasnip_supertab(),
        ['<C-m>'] = cmp_action.luasnip_shift_supertab()
    },
    sources = {
        { name = "nvim_lua" },
        { name = "nvim_lsp" },
        { name = "vsnip" },
        { name = "path" },
        { name = "buffer" },
    },

    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end
    },

    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[API]",
                path = "[path]",
                luasnip = "[snip]",
            }
        }
    },
    experimental = {
        ghost_text = false
    },
})
