return {
  {
    "ravitemer/mcphub.nvim",
    build = "bun i -g mcp-hub@latest",
    opts = {
      global_env = {
        -- Array-style: uses os.getenv("VAR")
        -- "DBUS_SESSION_BUS_ADDRESS",
        -- Hash-style: explicit value
        PROJECT_ROOT = vim.fn.getcwd(),
        -- CUSTOM_VAR = "custom_value",
      },
      extensions = {
        copilotchat = {
          enabled = true,
          convert_tools_to_functions = true, -- Convert MCP tools to CopilotChat functions
          convert_resources_to_functions = true, -- Convert MCP resources to CopilotChat functions
          add_mcp_prefix = false, -- Add "mcp_" prefix to function names
        },
      },
    },
  },
}
