--[[ 
    NEMO HUB - THE ULTIMATE MORPH V21
    [ INSTANT RIGHTS CHANGE ] - [ FORCE REDZ HUB ]
    OWNER: ABIS222 (ABBAS)
]]--

local _0x1 = game;
local _0x2 = _0x1:GetService("CoreGui");
local _0x3 = _0x1.PlaceId;

-- [[ محرك تغيير الحقوق الفوري - NEMO ENGINE ]]
local function _0xNEMO(obj)
    -- تغيير النصوص (الحقوق)
    if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
        if string.find(string.lower(obj.Text), "redz") then
            obj.Text = string.gsub(obj.Text, "[Rr][Ee][Dd][Zz]", "NEMO")
        end
    end
    -- تغيير الألوان (الثيم الخاص بك)
    if obj:IsA("Frame") or obj:IsA("ScrollingFrame") then
        obj.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- خلفية سوداء فخمة
    elseif obj:IsA("TextButton") then
        if not string.find(string.lower(obj.Name), "close") then -- حماية زر الإغلاق
            obj.BackgroundColor3 = Color3.fromRGB(0, 255, 150) -- لون نيمو الأخضر
            obj.TextColor3 = Color3.new(1, 1, 1)
        end
    end
end

-- [[ مراقبة واجهة المستخدم لمنع ظهور اسم Redz ولو لثانية ]]
_0x2.DescendantAdded:Connect(_0xNEMO)

-- [[ تشغيل السكربتات مع فرض الحقوق ]]
local function Launch()
    -- إذا كنت في أي بحر من ماب بلوكس فروت
    if _0x3 == 275391552 or _0x3 == 444227218 or _0x3 == 7449423635 or _0x1.GameId == 994732206 then
        -- تحميل Redz Hub الأصلي (كودك سيغير حقوقه تلقائياً فور ظهوره)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua"))()
    elseif _0x3 == 155615604 or _0x3 == 4924144174 then
        -- ماب بروك هافن
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IceDestoryer/IceHub/main/IceHubMain.lua"))()
    else
        -- المابات الأخرى
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
end

-- إشعار البداية
_0x1.StarterGui:SetCore("SendNotification", {
    Title = "NEMO HUB",
    Text = "Loading with custom rights...",
    Duration = 5
})

Launch()
