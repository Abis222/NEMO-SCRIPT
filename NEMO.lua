--[[ 
    NEMO HUB - REDZ EDITION V34
    [ BLOX FRUITS SPECIAL ] - [ FULL MORPH ]
    OWNER: ABBAS (ABIS222)
]]--

if _G.NemoLoaded then return end
_G.NemoLoaded = true

local CoreGui = game:GetService("CoreGui")

-- [[ 1. محرك تحويل الحقوق والألوان (NEMO MORPH) ]]
local function ApplyNemo(v)
    -- تحويل النصوص
    if v:IsA("TextLabel") or v:IsA("TextButton") then
        if v.Text:lower():find("redz") or v.Text:lower():find("hub") then
            v.Text = v.Text:gsub("[Rr][Ee][Dd][Zz]", "NEMO")
        end
    end
    -- تحويل الألوان للأسود والأخضر
    if v:IsA("Frame") or v:IsA("ScrollingFrame") then
        v.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- خلفية سوداء
    elseif v:IsA("TextButton") then
        v.BackgroundColor3 = Color3.fromRGB(0, 255, 150) -- أزرار خضراء
        v.TextColor3 = Color3.new(1, 1, 1)
    end
end

CoreGui.DescendantAdded:Connect(ApplyNemo)

-- [[ 2. إشعار التشغيل ]]
game.StarterGui:SetCore("SendNotification", {
    Title = "NEMO HUB",
    Text = "Loading Blox Fruits Script...",
    Duration = 10
})

-- [[ 3. تشغيل Redz Hub الأصلي مباشرة ]]
local function LoadRedz()
    local url = "https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua"
    local success, content = pcall(function() return game:HttpGet(url) end)
    
    if success and content then
        loadstring(content)()
    else
        -- إعادة محاولة في حال فشل الإنترنت
        task.wait(3)
        loadstring(game:HttpGet(url))()
    end
end

task.spawn(LoadRedz)
