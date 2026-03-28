-- استدعاء مكتبة Venyx (مضمونة للعمل بدون مربعات سوداء)
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Steventhedev/Venyx-UI-Library/main/source.lua"))()
local Window = library.new("NEMO HUB | by Abbas", 5013109572)

-- إنشاء الأقسام (Tabs)
local MainTab = Window:addPage("Main", 5012544693)
local FarmSection = MainTab:addSection("Auto Farm")

-- إضافة زر للتجربة داخل القائمة
FarmSection:addButton("Click to Test", function()
    print("NEMO HUB is working perfectly!")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "NEMO HUB",
        Text = "Successfully Loaded!",
        Duration = 5
    })
end)

-- زر إغلاق وفتح القائمة (RightControl أو يمكنك تغييره)
Window:addPage("Settings", 5012544693):addSection("Config"):addKeybind("Toggle UI", Enum.KeyCode.RightControl, function()
    Window:toggle()
end)

-- ملاحظة: هذه المكتبة ستظهر لك واجهة ملونة واحترافية فوراً
