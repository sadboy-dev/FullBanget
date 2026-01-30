-- main.lua

-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Minimal getModule/getRemote supaya MyLibrary bisa dipanggil
local function getModule(name)
    for _, child in ipairs(ReplicatedStorage:GetDescendants()) do
        if child:IsA("ModuleScript") and child.Name == name then
            return child
        end
    end
end

local function getRemote(name)
    for _, child in ipairs(ReplicatedStorage:GetDescendants()) do
        if child:IsA("RemoteEvent") or child:IsA("RemoteFunction") then
            if child.Name == name then
                return child
            end
        end
    end
end

getgenv().getModule = getModule
getgenv().getRemote = getRemote


-- Load library
local MyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/sadboy-dev/FullBanget/refs/heads/main/Module/MyLibrary.lua"))()

-- Get Info
local author = MyLibrary.Author or "Unknown"
local version = MyLibrary.Version or "N/A"

-- Tentukan panjang kotak berdasarkan text terpanjang
local maxLength = math.max(#("Author: " .. author), #("Version: " .. version)) + 4

-- Buat garis atas/bawah
local line = "═":rep(maxLength)

-- Cetak kotak aesthetic
print("╔" .. line .. "╗")
print("║ " .. "Author: " .. author .. string.rep(" ", maxLength - #("Author: " .. author) - 2) .. " ║")
print("║ " .. "Version: " .. version .. string.rep(" ", maxLength - #("Version: " .. version) - 2) .. " ║")
print("╚" .. line .. "╝")
