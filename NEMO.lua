--[[ 
    NEMO HUB - FINAL STABLE V35
    [ NO INFINITE LOADING ] - [ FAST OPEN ]
    OWNER: ABBAS (ABIS222)
]]--

-- [ 1. منع التكرار ]
if _G.NemoLoaded then return end
_G.NemoLoaded = true

-- [ 2. محرك التغيير الصامت ]
-- هذا المحرك يظل ينتظر في الخلفية حتى تظهر القائمة الأصلية ثم "يصيدها"
task.spawn(function()
    while task.wait(0.5) do
        for _, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
            if v:IsA("TextLabel") or v:IsA("TextButton") then
                if v.Text:lower():find("redz") then
                    v.Text = v.Text:gsub("[Rr][Ee][Dd][Zz]", "NEMO")
                end
            end
            -- تغيير ألوان الأزرار للثيم الخاص بك
            if v:IsA("TextButton") and v.BackgroundColor3 ~= Color3.fromRGB(0, 255, 150) then
                v.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
            end
        end
    end
end)

-- [ 3. إشعار البدء الخفيف ]
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "NEMO HUB",
    Text = "Starting... Please wait 10 seconds",
    Duration = 5
})

-- [ 4. تشغيل السكربت الأصلي بأبسط طريقة ممكنة ]
-- استخدمت الرابط المباشر بدون تعقيدات لضمان تخطي الـ Loading
loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua"))()
