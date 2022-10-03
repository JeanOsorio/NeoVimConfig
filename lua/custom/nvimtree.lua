require("nvim-tree").setup({
git = {
        enable = true,
        show_on_dirs = true,
        ignore = false,
      },
      view = {
        side = "right"
      },
      filters = {
        dotfiles = false,
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true
          }
        }
      }
})

