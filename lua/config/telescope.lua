local telescope = require("telescope")
local builtin = require("telescope.builtin")
local themes = require("telescope.themes")

telescope.setup({
    defaults = {
        layout_strategy = 'vertical',
        layout_config = { height = 0.95 },
    },
})

--telescope.load_extension("file_browser")
--telescope.load_extension('fzf')
--telescope.setup { extensions =
--{
        --fzf = { fuzzy = true, override_generic_sorter = true, override_file_sorter = true, case_mode = "smart_case", } }
--}

vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fw', builtin.grep_string)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)
vim.keymap.set('n', '<leader>ft', builtin.treesitter)
vim.keymap.set('n', '<leader>fr', builtin.lsp_references)
vim.keymap.set('n', '<leader>fi', function() builtin.diagnostics{bufnr = 0} end)
vim.keymap.set('n', '<leader>fc', builtin.commands)
--vim.keymap.set('n', '<leader>fe', telescope.extensions.file_browser.file_browser)
--vim.keymap.set('n', '<leader>fs', function() builtin.symbols{sources={'emoji', 'math'}} end)
vim.keymap.set('n', '<leader>fb', function() builtin.buffers(themes.get_dropdown{previewer=false}) end)

