-- NEMO HUB | Z-INDEX FIX
local CoreGui = game:GetService("CoreGui")

-- تنظيف أي نسخ قديمة
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_STABLE" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_STABLE"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- 1. القائمة السوداء الأساسية
local Main = Instance.new("Frame", ScreenGui)
Main.Name = "MainFrame"
Main.Size = UDim2.new(0, 420, 0, 260)
Main.Position = UDim2.new(0.5, -210, 0.5, -130)
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Main.BorderSizePixel = 2
Main.ZIndex = 1 -- الطبقة السفلى
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- 2. إضافة الحقوق (NEMO HUB) مع ضمان الظهور فوق السواد
local Credits = Instance.new("TextLabel", Main)
Credits.Name = "NemoCredits"
Credits.Text = "NEMO HUB"
Credits.Size = UDim2.new(0, 150, 0, 40)
Credits.Position = UDim2.new(0, 10, 0, 5) 
Credits.BackgroundTransparency = 1
Credits.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع
Credits.TextSize = 22 -- كبرنا الخط قليلاً لكي تراه
Credits.Font = Enum.Font.GothamBold
Credits.ZIndex = 5 -- [ السر هنا ] جعلناه في الطبقة رقم 5 ليكون فوق الإطار الأسود

-- 3. الزر الأصفر الذي يعمل عندك
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 60, 0, 60)
Toggle.Position = UDim2.new(0.1, 0, 0.1, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Toggle.Text = "NEMO"
Toggle.ZIndex = 10
Toggle.Draggable = true

Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)
