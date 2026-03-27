--[[ 
    NEMO HUB - THE FINAL BRIDGE V41
    [ 100% OPEN GUARANTEE ] - [ ZERO CONFLICT ]
    OWNER: ABBAS (ABIS222)
]]--

-- 1. تشغيل السكربت الأصلي فوراً (هذا هو المفتاح لفتح القائمة)
task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua"))()
    end)
end)

-- 2. محرك تغيير الحقوق "الذكي" (يحدث بعد استقرار القائمة)
task.spawn(function()
    task.wait(15) -- ننتظر 15 ثانية كاملة لضمان تخطي مرحلة الـ Loading
    while true do
        pcall(function()
            for _, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
                if v:IsA("TextLabel") or v:IsA("TextButton") then
                    if v.Text:lower():find("redz") then
                        v.Text = "NEMO HUB"
                    end
                end
            end
        end)
        task.wait(5)
    end
end)
