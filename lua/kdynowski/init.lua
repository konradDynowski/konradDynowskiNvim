require("kdynowski.set")
require("kdynowski.remap")

function RunPythonFile()
    if vim.bo.filetype == "python" then
        local current_file = vim.fn.expand("%")
        vim.cmd("!python " .. current_file)
    else 
        print("not python file")
    end
end

vim.api.nvim_set_keymap("n", "<leader>rp", ":lua RunPythonFile()<CR>", { noremap = true, silent = true })
