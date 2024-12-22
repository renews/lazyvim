return {
  {
    "olimorris/codecompanion.nvim",
    strategies = {
      chat = {
        adapter = "llama3",
      },
      iline = {
        adapter = "copilot",
      },
    },
    adapters = {
      llama3 = function()
        return require("codecompanion.adapters").extend("ollama", {
          name = "llama3",
          schema = {
            model = {
              default = "llama3:8b",
            },
            num_ctx = {
              default = 16384,
            },
            num_predict = {
              default = -1,
            },
          },
        })
      end,
    },
    prompt_library = {
      ["Boilerplate HTML"] = {
        strategy = "inline",
        description = "Generate some boilerplate HTML",
        opts = {
          pre_hook = function()
            local bufnr = vim.api.nvim_create_buf(true, false)
            vim.api.nvim_set_option_value("filetype", "html", { buf = bufnr })
            vim.api.nvim_set_current_buf(bufnr)
            return bufnr
          end,
        },
        prompts = {
          {
            role = "system",
            content = "You are an expert HTML programmer",
          },
          {
            role = "user",
            content = "Please generate some HTML boilerplate for me. Return the code only and no markdown codeblocks",
          },
        },
      },
      ["Code Expert"] = {
        strategy = "chat",
        description = "Get some special advice from an LLM",
        opts = {
          short_name = "expert",
          auto_submit = true,
          stop_context_insertion = true,
          user_prompt = true,
        },
        prompts = {
          {
            role = "system",
            content = function(context)
              return "I want you to act as a senior "
                .. context.filetype
                .. " developer. I will ask you specific questions and I want you to return concise explanations and codeblock examples."
            end,
          },
          {
            role = "user",
            content = function(context)
              local text = require("codecompanion.helpers.actions").get_code(context.start_line, context.end_line)

              return "I have the following code:\n\n```" .. context.filetype .. "\n" .. text .. "\n```\n\n"
            end,
            opts = {
              contains_code = true,
            },
          },
        },
      },
    },
    opts = {},
  },
}
