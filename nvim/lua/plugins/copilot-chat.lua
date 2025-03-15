local user = vim.env.USER
return {
  "CopilotC-Nvim/CopilotChat.nvim",
  opts = {
    question_header = "# " .. user .. " ",
    window = {
      border = "double",
    },
  },
}
