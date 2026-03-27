--[[ 
    NEMO HUB - STEALTH MORPH V27
    [ HIDE BEFORE CHANGE ] - [ ANTI-LEAK ]
    OWNER: ABIS222 (ABBAS)
]]--

local _0x1 = game
local _0x2 = _0x1:GetService("CoreGui")
local _0x3 = _0x1.PlaceId

-- [[ وظيفة التعديل السري ]]
local function StealthMorph(obj)
    -- جعل أي عنصر جديد شفافاً تماماً فور ولادته
    if obj:IsA("GuiObject") then
        obj.Visible = false 
    end

    -- تبديل النصوص والحقوق فوراً
    if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
        if string.find(string.lower(obj.Text), "redz") then
            obj.Text = string.gsub(obj.Text, "[Rr][Ee][Dd][Zz]", "NEMO")
        end
    end

    -- تبديل الألوان للثيم الخاص بك
    if obj:IsA("Frame") or obj:IsA("ScrollingFrame") then
        obj.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    elseif obj:IsA("TextButton") then
        obj.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
    end

    -- بعد التعديل، إظهار العنصر باسمه الجديد
    if obj:IsA("GuiObject") then
        task.wait(0.01) -- جزء من الثانية للتأكد من التغيير
        obj.Visible = true
    end
end

-- مراقبة الواجهة بنظام الحجب الفوري
_0x2.DescendantAdded:Connect(StealthMorph)

-- [[ تشغيل السكربت الأصلي ]]
local function Start()
    -- إشعار يظهر باسمك أنت فقط في البداية
    _0x1.StarterGui:SetCore("SendNotification", {
        Title = "NEMO HUB",
        Text = "Preparing Private Interface...",
        Duration = 5
    })

    if _0x3 == 275391552 or _0x3 == 444227218 or _0x3 == 7449423635 or _0x1.GameId == 994732206 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
end

task.spawn(Start)
