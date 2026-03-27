--[[ 
    NEMO HUB - THE ULTIMATE STABLE V28
    [ FIXED LOADING ] - [ ALL MAPS SUPPORT ] - [ MAXIMUM PROTECTION ]
    OWNER: ABIS222 (ABBAS)
]]--

local _0x1 = game
local _0x2 = _0x1:GetService("CoreGui")
local _0x3 = _0x1.PlaceId

-- [[ 1. نظام الحماية الصامت (Silent Protection) ]]
local _0xM = getrawmetatable(_0x1)
setreadonly(_0xM, false)
local _0xNC = _0xM.__namecall
_0xM.__namecall = newcclosure(function(self, ...)
    local m = getnamecallmethod()
    if m == "HttpPost" or m == "HttpGet" then
        local a = {...}
        if string.find(a[1], "webhook") or string.find(a[1], "log") then return nil end
    end
    return _0xNC(self, ...)
end)

-- [[ 2. محرك تحويل الحقوق الذكي (Smart Morph) ]]
local function Morph(obj)
    -- تغيير النصوص فوراً
    if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
        if string.find(string.lower(obj.Text), "redz") then
            obj.Text = string.gsub(obj.Text, "[Rr][Ee][Dd][Zz]", "NEMO")
        end
    end
    -- تغيير الألوان لثيم نيمو
    if obj:IsA("Frame") or obj:IsA("ScrollingFrame") then
        obj.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    elseif obj:IsA("TextButton") then
        obj.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
        obj.TextColor3 = Color3.new(1, 1, 1)
    end
end

-- مراقبة الواجهة وضمان ظهورها بعد التعديل
_0x2.DescendantAdded:Connect(function(o)
    Morph(o)
    if o:IsA("GuiObject") then
        o.Visible = true -- التأكد من أن العناصر مرئية دائماً باسمك الجديد
    end
end)

-- [[ 3. نظام التشغيل الذكي للمابات (Auto-Launch) ]]
local function Launch()
    -- إشعار البدء
    _0x1.StarterGui:SetCore("SendNotification", {
        Title = "NEMO HUB",
        Text = "System Ready - Injecting Interface...",
        Duration = 7
    })

    -- قائمة الروابط الموثوقة (تحميل مباشر وبدون لاق)
    local BloxFruits = "https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua"
    local BrookHaven = "https://raw.githubusercontent.com/IceDestoryer/IceHub/main/IceHubMain.lua"
    local Default = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"

    local success, err = pcall(function()
        if _0x3 == 275391552 or _0x3 == 444227218 or _0x3 == 7449423635 or _0x1.GameId == 994732206 then
            -- تشغيل بلوكس فروت
            loadstring(_0x1:HttpGet(BloxFruits))()
        elseif _0x3 == 155615604 or _0x3 == 4924144174 then
            -- تشغيل بروك هافن
            loadstring(_0x1:HttpGet(BrookHaven))()
        else
            -- أي ماب آخر (مثل Rogue Demon)
            loadstring(_0x1:HttpGet(Default))()
        end
    end)

    if not success then
        task.wait(3)
        Launch() -- إعادة محاولة في حال فشل الإنترنت
    end
end

task.spawn(Launch)
