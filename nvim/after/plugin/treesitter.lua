local ts = require('nvim-treesitter')

ts.install({
    "javascript",
    "typescript",
    "c",
    "css",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "markdown",
    "markdown_inline"
})

ts.setup {
    vim.api.nvim_create_autocmd('FileType', {
        group = vim.api.nvim_create_augroup("EnableTreesitterHighlighting", { clear = true }),
        desc = "Try to enable tree-sitter syntax highlighting",
        pattern = '*',
        callback = function() pcall(function() vim.treesitter.start() end) end,
    })
}
