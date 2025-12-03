return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#232529", -- Default background
                base01 = "#787c87", -- Lighter background (status bars)
                base02 = "#232529", -- Selection background
                base03 = "#787c87", -- Comments, invisibles
                base04 = "#d6dcda", -- Dark foreground
                base05 = "#d6dcd9", -- Default foreground
                base06 = "#d6dcd9", -- Light foreground
                base07 = "#d6dcda", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#a48484", -- Variables, errors, red
                base09 = "#ccb8b8", -- Integers, constants, orange
                base0A = "#b1b195", -- Classes, types, yellow
                base0B = "#9bab8c", -- Strings, green
                base0C = "#7eadac", -- Support, regex, cyan
                base0D = "#879ab0", -- Functions, keywords, blue
                base0E = "#bea7ad", -- Keywords, storage, magenta
                base0F = "#d9d9c9", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
