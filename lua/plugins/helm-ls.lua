return {
    "qvalentin/helm-ls.nvim",
    ft = "helm",
    opts = {
        conceal_templates = {
            -- enable the replacement of templates with virtual text of their current values
            enabled = false,
        },
    },
    config = function()
        -- Disable all diagnostics for Helm files
        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "helm" },
            callback = function()
                -- Disable all diagnostics for the current buffer
                vim.diagnostic.disable(0)
            end,
        })
    end,
}