local M = {}
require("kdynowski.python_mapper")

function RunPythonFile()
    if vim.bo.filetype == "python" then
        local current_file = vim.fn.expand("%")
        vim.cmd("!python3 " .. current_file)

    else
        print("not a python file, go home")
    end
end


reutrn M
