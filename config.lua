-- Manu's configuration

lvim.colorscheme = "silkcircuit"
lvim.transparent_window = true

-- Required for rainbow parenthesis plugin etc
lvim.builtin.treesitter.rainbow.enable = true

lvim.plugins = {
  { "folke/tokyonight.nvim" },
  { "EdenEast/nightfox.nvim" },
  {
    "hyperb1iss/silkcircuit-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("silkcircuit")
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript", "vue", "php" }, {
        RGB = true,      -- #RGB hex codes
        RRGGBB = true,   -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true,   -- CSS rgb() and rgba() functions
        hsl_fn = true,   -- CSS hsl() and hsla() functions
        css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { "mrjones2014/nvim-ts-rainbow" },
}

-- SplashScreen Art

lvim.builtin.alpha.dashboard.section.header.val = {
"⠀⠀⠀⠀⠀⣶⡀⠀⠀⠀⣰⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀",
"⠀⣀⠀⠀⠀⠉⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⢋⠆⣿⠀⠀⠀⠀⠀⠀⠀⢀⣠⠶⢻⡇⠀",
"⠀⠙⠳⠀⠀⣠⡴⠞⠓⠲⢦⡀⠀⠠⠞⠃⠀⠀⠀⠀⠀⣠⠟⠁⠌⠀⢸⡇⠀⠀⠀⢀⣠⡶⠛⠁⢀⠘⣧⠀",
"⠀⠀⠀⠀⣼⠋⠀⠀⠀⢀⠀⢻⠀⠀⠀⠀⠀⠀⠀⢠⡾⠋⠀⡌⠀⠤⢤⣿⣤⣤⠶⠛⠁⠀⠀⠀⡌⠀⣿⠀",
"⢠⣤⠄⠀⣿⠀⠀⡄⠀⢨⠀⣾⠀⠀⠀⠀⠀⠀⣰⠞⡁⠄⠂⠁⠀⠀⠈⠉⠉⢍⠀⠀⠀⠀⠀⢀⠃⠀⣿⠀",
"⠀⠀⠀⠀⠘⠳⣤⣌⣤⣬⣾⡁⠀⠀⠀⠀⣠⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠄⠀⠀⠀⡌⠀⠀⣻⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⢷⣿⣿⣷⡀⠀⠀⣼⣯⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠐⠒⠁⠀⠀⣹⠂",
"⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⠗⠀⠀⣼⣣⣦⡌⠙⠀⠀⠀⠀⠀⠀⠀⠶⠶⠶⠶⠤⣄⣀⠀⠀⠀⠀⠀⢹⡇",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠏⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣶⡄⠈⠛⠀⠀⠀⠀⢹⡇",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⠂⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠿⠿⠃⠀⠀⠀⠀⠀⠀⢸⡇",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⢁⣀⠐⠀⢿⣀⣠⣦⡀⠀⠀⠀⢸⡆⠈⠁⠀⠒⠂⠠⡀⠀⠀⠀⠀⢸⡇",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠸⡏⠁⠈⠙⠓⢲⠞⠉⠀⠂⠤⠀⠀⠀⠤⠃⠀⠀⠀⠀⢸⡇",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⢿⡄⠀⠀⠀⠀⠳⣄⡀⢀⣠⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇",
"⠀⠀⠀⠀⠀⠀⠀⠀⣴⠛⠉⢳⡄⠙⠳⢦⣄⣀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⢻⡄⠀⠈⢷⡀⠀⠀⠈⠉⠛⢻⡶⠶⢤⣤⣤⣄⣀⣀⣀⣀⣀⣀⣀⣀⣀⣤⡴⠟⠁⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡄⠀⠈⢳⣤⣤⣤⠶⠖⣿⠃⠀⠀⠀⠀⠀⠉⠉⢹⣏⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⡄⠀⠈⠙⠉⠉⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢦⣄⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣤⣀⣠⣤⡴⠖⢻⡏⠀⠀⠀⠀⠀⠀⠀⢶⣄⠀⠀⠈⠻⣦⡀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠇⠀⠀⠀⠀⠀⠀⠀⠀⣸⠻⢦⡀⠀⠈⠻⣆⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⣽⠀⣰⠟⠀⠀⢀⡟⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠁⠀⠀⠐⠛⠁⠀⠀⠀⠀",
}
