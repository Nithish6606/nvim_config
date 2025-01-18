return {
  {
    "akinsho/toggleterm.nvim",
    lazy = false,  -- Load the plugin immediately
    priority = 1000,  -- Set the load priority
    config = function()
      require("toggleterm").setup{
        -- Set the default terminal size
        size = 20,
        
        -- Keybinding to open the terminal
        open_mapping = [[<c-\>]],
        
        -- Default terminal direction (horizontal, vertical, or float)
        direction = "float",  -- Change this to "vertical" for a vertical terminal
        
        -- Floating terminal options
        float_opts = {
          border = "single",  -- Use a single border for the floating terminal
          width = 100,        -- Width of the floating terminal
          height = 30,        -- Height of the floating terminal
          winblend = 3,       -- Transparency level (0 to 100)
        },
        
        -- Close the terminal when exiting
        close_on_exit = true,
        
        -- Default shell
        shell = "/bin/bash",
      }
    end
  }
}

