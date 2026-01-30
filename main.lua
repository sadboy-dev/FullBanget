-- =========================================================
-- FULL BANGET | Anti Double Execute (Delta Executor)
-- =========================================================

-- >>> ANTI DOUBLE RUN (WAJIB PALING ATAS)
local _G = getgenv()
if _G.FULLBANGET_LOADED then
    return
end
_G.FULLBANGET_LOADED = true
-- <<< END GUARD


-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- =========================================================
-- Utils
-- =========================================================

local function getModule(name)
    for _, child in ipairs(ReplicatedStorage:GetDescendants()) do
        if child:IsA("ModuleScript") and child.Name == name then
            return child
        end
    end
end

local function getRemote(name)
    for _, child in ipairs(ReplicatedStorage:GetDescendants()) do
        if (child:IsA("RemoteEvent") or child:IsA("RemoteFunction")) and child.Name == name then
            return child
        end
    end
end

getgenv().getModule = getModule
getgenv().getRemote = getRemote

-- =========================================================
-- Load Library
-- =========================================================

local MyLibrary = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/sadboy-dev/FullBanget/refs/heads/main/Module/MyLibrary.lua"
))()

-- =========================================================
-- Info Print
-- =========================================================

local author = MyLibrary.Author or "Unknown"
local version = MyLibrary.Version or "N/A"

local maxLength = math.max(
    #("Author: " .. author),
    #("Version: " .. version)
) + 4

local line = "═":rep(maxLength)

print("╔" .. line .. "╗")
print(". Author: " .. author .. string.rep(" ", maxLength - #("Author: " .. author) - 1) .. "")
print("  Version: " .. version .. string.rep(" ", maxLength - #("Version: " .. version) - 1) .. "")
print("╚" .. line .. "╝")

-- =========================================================
-- END
-- =========================================================
