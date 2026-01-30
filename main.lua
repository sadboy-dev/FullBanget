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

-- Load library dengan aman
local success, MyLibrary = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/sadboy-dev/FullBanget/refs/heads/main/Module/MyLibrary.lua"))()
end)

if not success or not MyLibrary then
    warn("Gagal load MyLibrary!")
    return
end

local author = MyLibrary.Author or "Unknown"
local version = MyLibrary.Version or "N/A"

-- Tentukan panjang kotak berdasarkan text terpanjang
local text1 = "Author: " .. author
local text2 = "Version: " .. version

local maxLength = math.max(#text1, #text2)

local line = "+" .. string.rep("-", maxLength + 2) .. "+"

print(line)
print("| " .. text1 .. string.rep(" ", maxLength - #text1) .. " |")
print("| " .. text2 .. string.rep(" ", maxLength - #text2) .. " |")
print(line)

-- local maxLength = math.max(#("Author: " .. author), #("Version: " .. version)) + 4

-- Buat garis atas/bawah (gunakan string.rep)
-- local line = string.rep("═", maxLength)

-- Cetak kotak aesthetic
-- print("╔" .. line .. "╗")
-- print("║ " .. "Author: " .. author .. string.rep(" ", maxLength - #("Author: " .. author) - 2) .. " ║")
-- print("║ " .. "Version: " .. version .. string.rep(" ", maxLength - #("Version: " .. version) - 2) .. " ║")
-- print("╚" .. line .. "╝")
