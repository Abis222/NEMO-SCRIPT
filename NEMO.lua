--[[ 
    NEMO HUB - OFFICIAL PRO INTERFACE V1
    INSPIRED BY REDZ HUB LAYOUT
    OWNER: ABBAS (ABIS222)
    STATUS: EMPTY FEATURES / NEMO BRANDING ONLY
]]--

-- 1. استدعاء مكتبة الواجهة الاحترافية (Ui Library)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()

-- 2. إنشاء القائمة الرئيسية باسم NEMO HUB
local NemoHub = Library.new("NEMO HUB", 5013107573)

-- 3. إعداد سمات الألوان (تشبه Redz)
local Theme = {
    Background = Color3.fromRGB(20, 20, 20),
    Accent = Color3.fromRGB(0, 255, 150), -- لون نيمو الأخضر
    TopBar = Color3.fromRGB(25, 25, 25),
    Texts = Color3.fromRGB(255, 255, 255)
}

-- 4. إنشاء الأقسام (Tabs) - فارغة تماماً
-- (هنا ننشئ الأقسام التي تظهر على اليسار في الصورة)
local FarmTab = NemoHub:addPage("Farming", 5013101385)
local CombatTab = NemoHub:addPage("Combat", 5013101385)
local TeleportTab = NemoHub:addPage("Teleport", 5013101385)
local PlayersTab = NemoHub:addPage("Players", 5013101385)
local SettingsTab = NemoHub:addPage("Settings", 5013101385)

-- 5. إنشاء الأزرار (Buttons) والقوائم (Dropdowns) داخل الأقسام
-- (هذه الأزرار موجودة شكلياً فقط، لا تفعل شيئاً)

-- [ قسم Farming ]
local FarmSection = FarmTab:addSection("Main Farm")
FarmSection:addButton("Select Melee, Sword, Gun, Fruit", function()
    -- فارغ
end)
FarmSection:addDropdown("Ch\xe1\xbb\x8dn C\xc3\xb4ng C\xe1\xbb\xa5", {"Melee", "Sword", "Fruit"}, function(selected)
    -- فارغ
end)
FarmSection:addToggle("Auto Farm Level", false, function(value)
    -- فارغ
end)
FarmSection:addToggle("Auto Kill Near | Mob Aura", false, function(value)
    -- فارغ
end)

-- [ قسم Boss ]
local BossSection = FarmTab:addSection("Boss")
BossSection:addDropdown("Select Boss", {"The Gorilla King", "The Saw", "Vice Admiral"}, function(selected)
    -- فارغ
end)

-- [ قسم Teleport ]
local TeleportSection = TeleportTab:addSection("Island Teleport")
TeleportSection:addButton("Teleport to First Sea", function()
    -- فارغ
end)

-- [ قسم Settings ]
local SettingsSection = SettingsTab:addSection("Credits")
SettingsSection:addButton("Developed by Abbas (ABIS222)", function()
    -- فارغ
end)

-- 6. تشغيل القائمة
NemoHub:SelectPage(FarmTab, true)

-- إشعار الترحيب
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "NEMO HUB",
    Text = "Pro UI V1 Loaded Successfully!",
    Duration = 5
})
