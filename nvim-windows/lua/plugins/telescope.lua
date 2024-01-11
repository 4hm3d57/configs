return {

    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        local status_ok, telescope = pcall(require, 'telescope')

        if not status_ok then
            return
        end

        telescope.setup()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>r', builtin.oldfiles, {})
        vim.keymap.set('n', '<leader>ss', builtin.lsp_references, {})
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        --vim.keymap.set('n', '<leader>gr', builtin.live_grep, {})
        --vim.keymap.set('n', '<leader>fj', builtin.help_tags, {})
    end
}
