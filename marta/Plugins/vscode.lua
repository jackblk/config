plugin {
    id = "moe.haicon.vscode",
    name = "Open in VS Code",
    apiVersion = "2.2"
}

-- For a hotkey: opens the folder under the cursor, or the current folder
action {
    id = "open",
    name = "Open in VS Code",
    apply = function(context)
        local model = context.activePane.model
        local info = model.currentFileInfo
        if not (info and info.isFolder) then info = model.folderInfo end
        -- FileInfo.path is a Path object at runtime, not a string as documented
        martax.openFiles(tostring(info.path), "com.microsoft.VSCode")
    end
}
