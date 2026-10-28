vim.api.nvim_create_autocmd("PackChanged", {
    desc = "Build native dependencies after install/update",
    group = vim.api.nvim_create_augroup("native_plugins_build", { clear = true }),
    callback = function(ev)
        local name, kind = ev.data.spec.name, ev.data.kind

        if kind == "install" or kind == "update" then
            if vim.fn.executable("make") == 1 then
                if name == "telescope-fzf-native.nvim" then
                    vim.system({ "make" }, { cwd = ev.data.path }):wait()
                    vim.notify("Compilazione di telescope-fzf-native completata!", vim.log.levels.INFO)
                elseif name == "LuaSnip" then
                    vim.system({ "make", "install_jsregexp" }, { cwd = ev.data.path }):wait()
                    vim.notify("LuaSnip (jsregexp) compilation completed!", vim.log.levels.INFO)
                end
            else
                vim.notify("Unable to compile 'make' not installed", vim.log.levels.WARN)
            end
        end
    end,
})

-- remove plugins from disk that are no longer in vim.pack.add() specs
vim.api.nvim_create_user_command("PackClean", function()
    local inactive = vim.iter(vim.pack.get())
        :filter(function(x)
            return not x.active
        end)
        :map(function(x)
            return x.spec.name
        end)
        :totable()
    if #inactive == 0 then
        vim.notify("No inactive plugins to remove", vim.log.levels.INFO)
        return
    end
    vim.pack.del(inactive)
    vim.notify("Removed: " .. table.concat(inactive, ", "), vim.log.levels.INFO)
end, { desc = "Remove plugins not in vim.pack.add() specs" })
