--[[ 
    NEMO HUB - FINAL STABLE V39
    [ GUARANTEED INJECTION ] - [ NO LOADING STICK ]
    OWNER: ABIS222 (ABBAS)
]]--

-- 1. تشغيل السكربت الأصلي فوراً (هذا السطر سيفتح القائمة حتماً)
task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua"))()
    end)
end)

-- 2. محرك تغيير الحقوق "المتأخر" (Delayed Branding)
-- سينتظر القائمة تفتح أولاً لكي لا يسبب أي تعليق
task.spawn(function()
    task.wait(15) -- ننتظر 15 ثانية لضمان ظهور القائمة بالكامل
    while true do
        pcall(function()
            local CoreGui = game:GetService("CoreGui")
            for _, v in pairs(CoreGui:GetDescendants()) do
                if v:IsA("TextLabel") or v:IsA("TextButton") then
                    if v.Text:lower():find("redz") then
                        v.Text = "NEMO HUB"
                    end
                end
            end
        end)
        task.wait(5) -- فحص كل 5 ثواني
    end
end)
