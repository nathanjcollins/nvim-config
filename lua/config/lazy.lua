local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    -- bootstrap lazy.nvim
    -- stylua: ignore
    vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
                   lazypath})
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
    spec = { -- add LazyVim and import its plugins
    {
        "LazyVim/LazyVim",
        import = "lazyvim.plugins"
    }, -- import any extras modules here
    {
        import = "lazyvim.plugins.extras.lang.typescript"
    }, {
        import = "lazyvim.plugins.extras.lang.json"
    }, {
        import = "lazyvim.plugins.extras.ui.mini-animate"
    }, -- import/override with your plugins
    {
        import = "lazyvim.plugins.extras.linting.eslint"
    }, {
        import = "lazyvim.plugins.extras.formatting.prettier"
    }, {
        import = "plugins"
    }},
    defaults = {
        -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
        -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
        lazy = false,
        -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
        -- have outdated releases, which may break your Neovim install.
        version = false -- always use the latest git commit
        -- version = "*", -- try installing the latest stable version for plugins that support semver
    },
    install = {
        colorscheme = {"tokyonight", "habamax"}
    },
    checker = {
        enabled = true
    }, -- automatically check for plugin updates
    performance = {
        rtp = {
            -- disable some rtp plugins
            disabled_plugins = {"gzip", -- "matchit",
            -- "matchparen",
            -- "netrwPlugin",
            "tarPlugin", "tohtml", "tutor", "zipPlugin"}
        }
    }
})

local dap = require('dap')

dap.adapters.coreclr = {
    type = 'executable',
    command = 'C:\\Program Files (x86)\\netcoredbg\\netcoredbg',
    args = {'--interpreter=vscode'}
}

dap.configurations.cs = {{
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end
}}

local dapui = require("dapui")

dapui.setup({
    icons = {
        expanded = "▾",
        collapsed = "▸",
        current_frame = "▸"
    },
    mappings = {
        -- Use a table to apply multiple mappings
        expand = {"<CR>", "<2-LeftMouse>"},
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
        toggle = "t"
    },
    -- Use this to override mappings for specific elements
    element_mappings = {
        -- Example:
        -- stacks = {
        --   open = "<CR>",
        --   expand = "o",
        -- }
    },
    -- Expand lines larger than the window
    -- Requires >= 0.7
    expand_lines = vim.fn.has("nvim-0.7") == 1,
    -- Layouts define sections of the screen to place windows.
    -- The position can be "left", "right", "top" or "bottom".
    -- The size specifies the height/width depending on position. It can be an Int
    -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
    -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
    -- Elements are the elements shown in the layout (in order).
    -- Layouts are opened in order so that earlier layouts take priority in window sizing.
    layouts = {{
        elements = { -- Elements can be strings or table with id and size keys.
        {
            id = "scopes",
            size = 0.25
        }, "breakpoints", "stacks", "watches"},
        size = 40, -- 40 columns
        position = "left"
    }, {
        elements = {"repl", "console"},
        size = 0.25, -- 25% of total lines
        position = "bottom"
    }},
    controls = {
        -- Requires Neovim nightly (or 0.8 when released)
        enabled = true,
        -- Display controls in this element
        element = "repl",
        icons = {
            pause = "",
            play = "",
            step_into = "",
            step_over = "",
            step_out = "",
            step_back = "",
            run_last = "↻",
            terminate = "□"
        }
    },
    floating = {
        max_height = nil, -- These can be integers or a float between 0 and 1.
        max_width = nil, -- Floats will be treated as percentage of your screen.
        border = "single", -- Border style. Can be "single", "double" or "rounded"
        mappings = {
            close = {"q", "<Esc>"}
        }
    },
    windows = {
        indent = 1
    },
    render = {
        max_type_length = nil, -- Can be integer or nil.
        max_value_lines = 100 -- Can be integer or nil.
    }
})

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

require'nvim-treesitter.install'.compilers = {"clang"}
