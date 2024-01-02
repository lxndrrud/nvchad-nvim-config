---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!
M.debugger_custom = {
  n = {
    ["<leader>dd"] = {
      function()
        require("dapui").toggle()
      end,
      "Toggle debugger UI"
    },
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle debugger breakpoint"
    },
  }
}


return M
