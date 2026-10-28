plugin {
    id = "moe.haicon.ghostty",
    name = "Open in Ghostty",
    apiVersion = "2.2"
}

-- Same route as Open with > Ghostty, which opens a new tab (macos-dock-drop-behavior)
local function openInGhostty(path)
    -- FileInfo.path is a Path object at runtime, not a string as documented
    martax.openFiles(tostring(path), "com.mitchellh.ghostty")
end

-- Adds Ghostty to the Cmd+Enter "Open with" list for a single folder
openWithContributor(function(infos, context)
    if #infos ~= 1 or not infos[1].isFolder then return {} end
    return { {
        name = "Ghostty",
        priority = "high",
        apply = function() openInGhostty(infos[1].path) end
    } }
end)

-- For a hotkey: opens the folder under the cursor, or the current folder
action {
    id = "open",
    name = "Open in Ghostty",
    apply = function(context)
        local model = context.activePane.model
        local info = model.currentFileInfo
        if not (info and info.isFolder) then info = model.folderInfo end
        openInGhostty(info.path)
    end
}
