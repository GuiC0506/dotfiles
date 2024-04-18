require('lualine').setup {
    options = {
        theme = "github_dark_high_contrast"
    },

    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { { 'filename', file_status = true, path = 1 } },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress', 'selectioncount' },
        lualine_z = { 'location' }
    },
}
