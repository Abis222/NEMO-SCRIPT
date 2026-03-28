-- 1. كسر التخزين القديم
if game:GetService("CoreGui"):FindFirstChild("Orion") then
    game:GetService("CoreGui"):FindFirstChild("Orion"):Destroy()
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- 2. إنشاء النافذة (تصميم نيمو هوب الاحترافي)
local Window = OrionLib:MakeWindow({
    Name = "NEMO HUB | PRO VERSION", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "NEMO_CONFIG",
    IntroText = "Welcome to NEMO HUB"
})

-- 3. إضافة الأقسام (Tabs) - كما في طلبك
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local FarmTab = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- 4. إضافة أزرار تجريبية
MainTab:AddButton({
    Name = "Click to Test!",
    Callback = function()
        print("NEMO HUB IS WORKING!")
        OrionLib:MakeNotification({
            Name = "Success!",
            Content = "NEMO HUB Started Successfully",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end    
})

OrionLib:Init()
