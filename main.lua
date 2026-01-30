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

local kotak = string.rep("-", 22)


-- Load library
local MyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/sadboy-dev/FullBanget/refs/heads/main/Module/MyLibrary.lua"))()

-- Output aesthetic untuk Delta
print(kotak)
print("✨ Welcome To Jungle ✨")
print("👤 Author : " .. (MyLibrary.Author or "Unknown"))
print("📌 Version: " .. (MyLibrary.Version or "N/A"))
print(kotak)
