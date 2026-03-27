--[[ 
    NEMO HUB - OMNI-ENGINE V33
    [ AUTO-REPAIR ] - [ TRIPLE INJECTION ] - [ NO ERRORS ]
    OWNER: ABBAS (ABIS222)
]]--

-- [ 1. منع التكرار لضمان استقرار الهاتف ]
if _G.NemoLoaded then return end
_G.NemoLoaded = true

local game = game
local CoreGui = game:GetService("CoreGui")

-- [ 2. محرك تغيير الحقوق الفوري (Instant Morph) ]
local function ApplyBranding(obj)
    if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
        if string.find(string.lower(obj.Text), "redz") then
            obj.Text = string.gsub(obj.Text, "[Rr][Ee][Dd][Zz]", "NEMO")
        end
    end
    -- تطبيق ثيم NEMO (أسود وأخضر)
    if obj:IsA("Frame") or obj:IsA("ScrollingFrame") then
        obj.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    elseif obj:IsA("TextButton") then
        obj.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
    end
end
CoreGui.DescendantAdded:Connect(ApplyBranding)

-- [ 3. محرك الحقن الثلاثي (Triple Injector) ]
local function StartScript()
    game.StarterGui:SetCore("SendNotification", {
        Title = "NEMO HUB",
        Text = "Trying Injection Mode...",
        Duration = 5
    })

    local RedzUrl = "https://raw.githubusercontent.com/realredz/Reds-Hub/main/Main.lua"
    
    -- الطريقة الأولى: جلب مباشر
    local success, content = pcall(function() return game:HttpGet(RedzUrl) end)
    
    if success and content then
        local run, err = loadstring(content)
        if run then
            run()
            return -- نجح التشغيل، توقف هنا
        end
    end

    -- الطريقة الثانية (إذا فشلت الأولى): تحميل مباشر وسريع
    task.wait(2)
    pcall(function()
        loadstring(game:HttpGet(RedzUrl))()
    end)
    
    -- الطريقة الثالثة (في حال فشل المابات الأخرى): دعم شامل
    task.wait(5)
    if not CoreGui:FindFirstChild("REDZ_HUB") and not CoreGui:FindFirstChild("NEMO") then
        -- إذا لم تظهر القائمة، يشغل نسخة احتياطية خفيفة
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
end

task.spawn(StartScript)
