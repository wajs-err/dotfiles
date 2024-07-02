vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.tex",
    callback = function()
        vim.fn.jobstart({"pdflatex", vim.fn.expand('%')})
    end
})
