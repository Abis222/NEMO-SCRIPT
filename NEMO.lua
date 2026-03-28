local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- إنشاء النافذة (القائمة الرئيسية)
local Window = OrionLib:MakeWindow({
    Name = "NEMO HUB | by Abbas", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "NemoConfig",
    IntroText = "Welcome Abbas to NEMO HUB" -- نص ترحيبي عند الفتح
})

-- إنشاء القسم الرئيسي (Main)
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- إضافة نص داخل القسم
MainTab:AddSection({
    Name = "NEMO HUB is Active!"
})

-- زر للتجربة (سنضيف الأوامر لاحقاً)
MainTab:AddButton({
    Name = "Click to Test",
    Callback = function()
        print("NEMO HUB Working!")
        OrionLib:MakeNotification({
            Name = "Success",
            Content = "NEMO HUB Loaded Successfully!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end    
})

-- تشغيل المكتبة
OrionLib:Init()
