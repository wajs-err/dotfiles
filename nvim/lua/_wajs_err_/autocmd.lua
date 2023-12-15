vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "main.tex",
    callback = function()
        vim.fn.jobstart({"pdflatex", "main.tex"})
    end
})
