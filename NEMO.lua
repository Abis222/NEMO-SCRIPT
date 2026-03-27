--[[ 
    NEMO HUB - FINAL REPAIR V36
    [ INSTANT LOAD ] - [ NO WAIT ]
    OWNER: ABBAS (ABIS222)
]]--

-- [ 1. محرك تغيير الحقوق الصامت ]
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            for _, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
                if v:IsA("TextLabel") or v:IsA("TextButton") then
                    if v.Text:find("REDZ") or v.Text:find("Redz") then
                        v.Text = "NEMO HUB"
                    end
                end
            end
        end)
    end
end)

-- [ 2. إشعار بسيط لمرة واحدة فقط ]
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "NEMO HUB",
    Text = "Loading... Please wait",
    Duration = 3
})

-- [ 3. تشغيل السكربت الأصلي فوراً بدون أي تأخير ]
loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua"))()
