local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
		"cpp",
		"dart",
		"python",
    "markdown",
    "markdown_inline",
		"fish",
		"fsh",
		"sql",
		"bash",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    -- c stuff
    "clangd",
		"cmake-language-server",
		"cspell",
		-- c sharp stuff
		"csharp-language-server",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
		"tailwindcss-language-server",
    "prettier",

		-- python stuff
		"pyright",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
