-- main.lua

-- Ambil service Roblox
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Definisikan fungsi getModule minimal supaya library bisa dipanggil
local function getModule(name)
    for _, child in ipairs(ReplicatedStorage:GetDescendants()) do
        if child:IsA("ModuleScript") and child.Name == name then
            return child
        end
    end
    return nil
end

-- Definisikan fungsi getRemote minimal (jika library memerlukan ini)
local function getRemote(name)
    for _, child in ipairs(ReplicatedStorage:GetDescendants()) do
        if child:IsA("RemoteEvent") or child:IsA("RemoteFunction") then
            if child.Name == name then
                return child
            end
        end
    end
    return nil
end

-- Simpan fungsi ke global supaya MyLibrary bisa menggunakannya
getgenv().getModule = getModule
getgenv().getRemote = getRemote

-- Load library dari GitHub
local MyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/sadboy-dev/FullBanget/refs/heads/main/Module/MyLibrary.lua"))()

-- Ambil variabel yang diinginkan
local version = MyLibrary.Version
local author = MyLibrary.Author

-- Print ke console
print("Library Version:", version)
print("Library Author:", author)
