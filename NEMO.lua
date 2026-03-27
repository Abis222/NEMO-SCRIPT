--[[ 
    NEMO HUB - INSTANT OPEN V38
    [ NO LOADING ] - [ DIRECT INJECT ]
    OWNER: ABBAS (ABIS222)
]]--

-- [ 1. تشغيل السكربت الأصلي فوراً بدون أي تأخير ]
task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua"))()
    end)
end)

-- [ 2. محرك تغيير الحقوق (يعمل بعد الفتح بـ 5 ثواني) ]
task.spawn(function()
    task.wait(5) -- ننتظر القائمة تفتح أولاً لكي لا يعلق اللودينج
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
        task.wait(3) -- فحص كل 3 ثواني لضمان بقاء اسمك
    end
end)
