local user = vim.env.USER
local chat = require("CopilotChat")

return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "main",
  cmd = "CopilotChat",
  opts = function()
    return {
      answer_header = "  copilot ",
      auto_insert_mode = true,
      model = "claude-3.7-sonnet",
      question_header = "  " .. user .. " ",
      sticky = {
        "#filenames",
        "#buffer",
      },
      window = {
        width = 0.4,
      },
    }
  end,
  keys = {
    { "<c-s>", "<CR>", ft = "copilot-chat", desc = "Submit Prompt", remap = true },
    { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
    {
      "<leader>aa",
      function()
        return chat.toggle()
      end,
      desc = "Toggle (CopilotChat)",
      mode = { "n", "v" },
    },
    {
      "<leader>ax",
      function()
        return chat.reset()
      end,
      desc = "Clear (CopilotChat)",
      mode = { "n", "v" },
    },
    {
      "<leader>aq",
      function()
        vim.ui.input({
          prompt = "Quick Chat: ",
        }, function(input)
          if input ~= "" then
            chat.ask(input)
          end
        end)
      end,
      desc = "Quick Chat (CopilotChat)",
      mode = { "n", "v" },
    },
    {
      "<leader>ap",
      function()
        require("CopilotChat").select_prompt()
      end,
      desc = "Prompt Actions (CopilotChat)",
      mode = { "n", "v" },
    },
    {
      "<leader>acf",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Add file to context (CopilotChat)",
          attach_mappings = function(prompt_bufnr, map)
            require("telescope.actions").select_default:replace(function()
              local selection = require("telescope.actions.state").get_selected_entry()
              require("telescope.actions").close(prompt_bufnr)

              if selection then
                chat.open()
                chat.chat:add_sticky("#file:`" .. selection.value .. "`")
              end
            end)
            return true
          end,
        })
      end,

      desc = "Context: add filename",
      mode = { "n", "v" },
    },
    {
      "<leader>acb",
      function()
        chat.open()
        chat.chat:add_sticky("#buffers")
      end,

      desc = "Context: add buffers",
      mode = { "n", "v" },
    },
  },

  config = function(_, opts)
    local chat = require("CopilotChat")

    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "copilot-chat",
      callback = function()
        vim.opt_local.relativenumber = false
        vim.opt_local.number = false
      end,
    })

    chat.setup(opts)
  end,
}
