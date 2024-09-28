if vim.g.vscode then
  require("config.options")
  require("config.keymaps")
else
  -- ordinary Neovim
  require("config.lazy")
end
