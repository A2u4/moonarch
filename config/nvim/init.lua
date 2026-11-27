vim.opt.clipboard = "unnamedplus"

-- moonarch: line numbers on the left
vim.opt.number = true

-- moonarch: file list (:Lex) on the left, 20% of the width, no help text
vim.g.netrw_winsize = 20
vim.g.netrw_banner = 0

-- moonarch: plugins with Neovim's built-in installer (it asks you to confirm the first time)
vim.pack.add({
    "https://github.com/catppuccin/nvim",                                          -- color theme
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },  -- smart code colors
})

-- moonarch: catppuccin (mocha), with a pure black background
local ok, catppuccin = pcall(require, "catppuccin")
if ok then
    catppuccin.setup({
        flavour = "mocha",
        color_overrides = {
            mocha = { base = "#000000", mantle = "#000000", crust = "#000000" },
        },
    })
    vim.cmd.colorscheme("catppuccin")
end

-- moonarch: tree-sitter (smart code colors) for common languages
local ok_ts, treesitter = pcall(require, "nvim-treesitter")
if ok_ts then
    treesitter.install({
        "c", "cpp", "rust", "go", "java",                       -- compiled languages
        "python", "lua", "bash",                                -- scripting
        "javascript", "typescript", "tsx", "html", "css",       -- web
        "json", "yaml", "toml", "sql",                          -- data and configs
        "markdown", "markdown_inline", "dockerfile", "regex",   -- docs and others
    })
end
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",                                              -- every file...
    callback = function() pcall(vim.treesitter.start) end,      -- ...uses it if its language is installed
})
