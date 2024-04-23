local builtin = require('telescope.builtin')
local configs = require('me.telescope.telescope')
local skm = vim.keymap.set

skm('n', '<leader>ff', builtin.find_files, {})
skm('n', '<leader>fg', builtin.live_grep, {})
skm('n', '<leader>bd', configs.grep_test, {})
skm('n', '<leader>sw', builtin.grep_string, {})
skm('n', '<leader>fb', builtin.buffers, {})
skm('n', '<leader>fh', builtin.help_tags, {})
skm('n', '<leader>?', builtin.oldfiles, {})
skm('n', '<leader>cs', builtin.colorscheme, {})
skm('n', '<leader>K', builtin.keymaps, {})
skm('n', '<leader>gr', builtin.lsp_references, {})
skm('n', '<leader>ds', builtin.lsp_document_symbols, {})
skm('n', 'gd', builtin.lsp_definitions, {})
skm('n', '<leader>rn', vim.lsp.buf.rename, {})
skm('n', '<leader>D', builtin.diagnostics, {})
skm('n', '<leader>gf', builtin.git_files, {})
skm('n', '<leader>B', builtin.git_branches, {})
skm('n', '<leader>cc', builtin.git_commits, {})
skm('n', '<leader>cb', builtin.git_bcommits, {})
skm('n', '<leader>S', builtin.git_stash, {})
skm('n', '<leader>qq', builtin.quickfix, {})
skm('n', '<leader>rs', builtin.search_history, {})
skm('n', '<leader>P', builtin.pickers, {})
skm('n', '<leader>c', builtin.commands, {})
skm('n', '<leader>/', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })
