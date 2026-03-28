-- NEMO HUB | BASE VERSION (BACK TO STABLE)
local CoreGui = game:GetService("CoreGui")

-- تنظيف أي مخلفات قديمة
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_STABLE" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_STABLE"

-- 1. القائمة الرئيسية (سوداء عادية بدون إضافات)
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 400, 0, 250)
Main.Position = UDim2.new(0.5, -200, 0.5, -125)
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- 2. الزر الأصفر الأصلي
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 60, 0, 60)
Toggle.Position = UDim2.new(0.1, 0, 0.1, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- أصفر
Toggle.Text = "NEMO"
Toggle.Draggable = true

-- 3. برمجة الفتح والإغلاق البسيطة
Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)
