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
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end,
      "Continue"
    },
    ["<leader>dq"] = {
      function()
        require("dap").step_out()
      end,
      "Step Out"
    },
    ["<leader>dw"] = {
      function()
        require("dap").step_into()
      end,
      "Step Into"
    },
    ["<leader>de"] = {
      function()
        require("dap").step_over()
      end,
      "Step Over"
    },
  }
}


return M
