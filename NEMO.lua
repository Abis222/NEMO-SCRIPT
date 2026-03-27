--[[ 
    NEMO HUB - ULTIMATE REPAIR V32
    [ FIXED LOADING ] - [ FULL RIGHTS ] - [ NO ERRORS ]
    DEVELOPED FOR: ABBAS (ABIS222)
]]--

-- منع تكرار التشغيل
if _G.NemoLoaded then return end
_G.NemoLoaded = true

local game = game
local CoreGui = game:GetService("CoreGui")

-- [[ 1. محرك تغيير الحقوق (NEMO ENGINE) ]]
-- يعمل في الخلفية وبسرعة فائقة لتغيير كل شيء يخص Redz
local function ApplyNemo(v)
    if v:IsA("TextLabel") or v:IsA("TextButton") then
        if v.Text:lower():find("redz") then
            v.Text = v.Text:gsub("[Rr][Ee][Dd][Zz]", "NEMO")
        end
    end
    if v:IsA("Frame") or v:IsA("ScrollingFrame") then
        v.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    elseif v:IsA("TextButton") then
        v.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
    end
end

CoreGui.DescendantAdded:Connect(ApplyNemo)

-- [[ 2. إشعار البدء (للتأكد أن السكربت لم يمت) ]]
game.StarterGui:SetCore("SendNotification", {
    Title = "NEMO HUB",
    Text = "System Activated - Loading Interface...",
    Duration = 10
})

-- [[ 3. محرك جلب السكربت المصلح ]]
local function LoadSource()
    local Success, Source = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua")
    end)
    
    if Success and Source then
        local Load = loadstring(Source)
        if Load then
            Load()
        else
            -- محاولة أخيرة في حال فشل الـ loadstring
            task.wait(2)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua"))()
        end
    else
        -- إذا فشل الإنترنت في الناصرية، يعيد المحاولة بعد 5 ثواني
        task.wait(5)
        LoadSource()
    end
end

-- تشغيل المحرك
task.spawn(LoadSource)
