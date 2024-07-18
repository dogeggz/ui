---@type ChadrcConfig
local options = {
  ui = {
    cmp = {
      icons = true,
      lspkind_text = true,
      style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    },

    telescope = { style = "bordered" }, -- borderless / bordered

    statusline = {
      enabled = true,
      theme = "default", -- default/vscode/vscode_colored/minimal
      separator_style = "slash", -- deafult/round/block/arrow
      order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
      modules = nil,
      lualine = true,
    },

    -- lazyload it when there are 1+ buffers
    tabufline = {
      enabled = true,
      lazyload = true,
      -- order = { "treeOffset", "buffers", "tabs", "btns" },
      order = { "buffers", "tabs", "btns" },
      modules = nil,
    },
  },

  cheatsheet = { theme = "grid", excluded_groups = { "terminal (t)", "autopairs", "Nvim" } }, -- simple/gridJ

  lsp = { signature = true },
}

return vim.tbl_deep_extend("force", options, require "chadrc", require "configs.chadrc")
