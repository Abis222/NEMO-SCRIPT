--[[ 
    NEMO HUB - EMERGENCY REPAIR V37
    [ GUARANTEED OPEN ] - [ NO LOADING STICK ]
    OWNER: ABBAS (ABIS222)
]]--

-- 1. تشغيل السكربت الأصلي فوراً (بدون أي تأخير أو شروط)
task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua"))()
end)

-- 2. محرك تغيير الحقوق المتأخر (Delayed Morph)
-- سينتظر ظهور القائمة أولاً ثم يغير الاسم لـ NEMO HUB
task.spawn(function()
    task.wait(10) -- انتظار القائمة تفتح وتستقر
    while true do
        pcall(function()
            for _, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
                if v:IsA("TextLabel") or v:IsA("TextButton") then
                    if v.Text:find("REDZ") or v.Text:find("Redz") then
                        v.Text = "NEMO HUB"
                    end
                end
                -- تغيير اللون للأخضر
                if v:IsA("TextButton") and v.BackgroundColor3 ~= Color3.fromRGB(0, 255, 150) then
                    v.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
                end
            end
        end)
        task.wait(2)
    end
end)
