vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig"
})

local lua = {
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if path ~= vim.fn.stdpath 'config' and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc')) then return end
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        version = 'LuaJIT',
        path = { 'lua/?.lua', 'lua/?/init.lua' },
      },
      workspace = {
        checkThirdParty = false,
        -- NOTE: this is a lot slower and will cause issues when working on your own configuration.
        --  See https://github.com/neovim/nvim-lspconfig/issues/3189
        library = vim.tbl_extend('force', vim.api.nvim_get_runtime_file('', true), {
          '${3rd}/luv/library',
          '${3rd}/busted/library',
        }),
      },
    })
  end,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      telemetry = { enabled = false },
    },
  },
}

local javascript_and_typescript = {
}

local servers = {
  lua_ls = lua,
  ts_ls = javascript_and_typescript
}

for server, config in pairs(servers) do
  vim.lsp.config(server, config)
  vim.lsp.enable(server)
end

local function lsp_on_attach(ev)
  local client = vim.lsp.get_client_by_id(ev.data.client_id)
  if not client then
    return
  end

  local bufnr = ev.buf
  local haz_fzf, fzf = pcall(require, "fzf-lua")

  local map = function(keymap, action, desc)
    vim.keymap.set("n", keymap, action, {
      noremap = true,
      silent = true,
      buffer = bufnr,
      desc = desc
    })
  end

  if haz_fzf then
    map("<leader>gd", function()
      fzf.lsp_definitions( { jump1 = false })
    end, "Find all definitions")
  else
    map("<leader>gd", vim.lsp.buf.definition, "Go to definition")
  end

end

local lspKeyMapAugroup = vim.api.nvim_create_augroup("LspKeymapsGroup", { clear = true })

vim.api.nvim_create_autocmd("LspAttach", { group = lspKeyMapAugroup, callback = lsp_on_attach })
