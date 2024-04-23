local skm = vim.keymap.set

skm('n', '<leader>ff', require('telescope.builtin').find_files, {})
skm('n', '<leader>fg', require('telescope.builtin').live_grep, {})
skm('n', '<leader>sw', require('telescope.builtin').grep_string, {})
skm('n', '<leader>bd', ':lua require("me.telescope").grep_test()<CR>', {})
skm('n', '<leader>fb', require('telescope.builtin').buffers, {})
skm('n', '<leader>fh', require('telescope.builtin').help_tags, {})
skm('n', '<leader>?', require('telescope.builtin').oldfiles, {})
skm('n', '<leader>cs', require('telescope.builtin').colorscheme, {})
skm('n', '<leader>K', require('telescope.builtin').keymaps, {})
skm('n', '<leader>gr', require('telescope.builtin').lsp_references, {})
skm('n', '<leader>ds', require('telescope.builtin').lsp_document_symbols, {})
skm('n', 'gd', vim.lsp.buf.definition, {})
skm('n', '<leader>rn', vim.lsp.buf.rename, {})
skm('n', '<leader>D', require('telescope.builtin').diagnostics, {})
skm('n', '<leader>gf', require('telescope.builtin').git_files, {})
skm('n', '<leader>B', require('telescope.builtin').git_branches, {})
skm('n', '<leader>R', require('telescope.builtin').registers, {})
skm('n', '<leader>cc', require('telescope.builtin').git_commits, {})
skm('n', '<leader>cb', require('telescope.builtin').git_bcommits, {})
skm('n', '<leader>S', require('telescope.builtin').git_stash, {})
skm('n', '<leader>qq', require('telescope.builtin').quickfix, {})
skm('n', '<leader>rs', require('telescope.builtin').search_history, {})
skm('n', '<leader>P', require('telescope.builtin').pickers, {})
skm('n', '<leader>c', require('telescope.builtin').commands, {})
skm('n', '<leader>/', function()
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })
