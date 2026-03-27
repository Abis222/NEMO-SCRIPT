--[[ 
    NEMO HUB - INTEGRATED EDITION V31
    [ ALL FEATURES ] - [ FULL BRANDING ] - [ FIXED LOADING ]
    OWNER: ABBAS (ABIS222)
]]--

local _0xG = game
local _0xCG = _0xG:GetService("CoreGui")

-- [[ 1. نظام تغيير الحقوق الفوري (The Morphing Engine) ]]
local function ApplyNemoBranding(obj)
    -- تبديل النصوص (من Redz إلى NEMO)
    if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
        if string.find(string.lower(obj.Text), "redz") then
            obj.Text = string.gsub(obj.Text, "[Rr][Ee][Dd][Zz]", "NEMO")
        end
    end
    -- تبديل الألوان (ثيم NEMO: أسود وأخضر)
    if obj:IsA("Frame") or obj:IsA("ScrollingFrame") then
        obj.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    elseif obj:IsA("TextButton") then
        obj.BackgroundColor3 = Color3.fromRGB(0,
            
