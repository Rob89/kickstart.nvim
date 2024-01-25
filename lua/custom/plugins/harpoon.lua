return { "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
      require("harpoon"):setup({})
    end,
    keys = {
      { "<leader>f", function() require("harpoon"):list():append() end, desc = "harpoon file", },
      { "<leader>h", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
      { "<leader>H", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
      { "<leader>J", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
      { "<leader>K", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
      { "<leader>L", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
    },
}
