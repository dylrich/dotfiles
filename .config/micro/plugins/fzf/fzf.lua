VERSION = "1.0.5"

function fzf()
    local output, err = RunInteractiveShell("fzf", false, true)
    if err ~= nil then
        messenger:Error(err)
    else
        fzfOutput(output)
    end
end

function fzfOutput(output)
    local strings = import("strings")
    output = strings.TrimSpace(output)
    if output ~= "" then
        CurView():Open(output)
    end
end

MakeCommand("fzf", "fzf.fzf", 0)
AddRuntimeFile("fzf", "help", "help/fzf.md")
