--[[ 
    NEMO HUB - TOTAL REPAIR V29
    [ NO LOOP ERROR ] - [ ALL MAPS SUPPORT ]
    OWNER: ABBAS (ABIS222)
]]--

local _0xG = game
local _0xCG = _0xG:GetService("CoreGui")
local _0xID = _0xG.PlaceId

-- [ وظيفة تحويل الحقوق - تعمل بمجرد ظهور أي قائمة ]
local function Morph(obj)
    if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
        if string.find(string.lower(obj.Text), "redz") then
            obj.Text = string.gsub(obj.Text, "[Rr][Ee][Dd][Zz]", "NEMO")
        end
    end
    -- الألوان الخاصة بك
    if obj:IsA("Frame") or obj:IsA("ScrollingFrame") then
        obj.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    elseif obj:IsA("TextButton") then
        obj.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
    end
end

_0xCG.DescendantAdded:Connect(Morph)

-- [ محرك التشغيل الآمن - بدون تكرار ]
local function ExecuteScript(url)
    local success, scriptContent = pcall(function()
        return _0xG:HttpGet(url)
    end)
    if success and scriptContent then
        loadstring(scriptContent)()
    end
end

-- [ تحديد السكربت حسب الماب ]
_0xG.StarterGui:SetCore("SendNotification", {
    Title = "NEMO HUB",
    Text = "Loading Map Script...",
    Duration = 5
})

if _0xID == 275391552 or _0xID == 444227218 or _0xID == 7449423635 or _0xG.GameId == 994732206 then
    -- بلوكس فروت
    ExecuteScript("https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua")
elseif _0xID == 155615604 or _0xID == 4924144174 then
    -- بروك هافن
    ExecuteScript("https://raw.githubusercontent.com/IceDestoryer/IceHub/main/IceHubMain.lua")
else
    -- مابات أخرى (Infinite Yield)
    ExecuteScript("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")
end
