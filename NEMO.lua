-- NEMO HUB | CLEAN & LIGHT EDITION
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

-- 1. تنظيف شامل (إزالة أي أثر قديم)
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_UI" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_UI"
ScreenGui.IgnoreGuiInset = true -- مهم جداً لجهاز Oppo

-- 2. القائمة الرئيسية (سوداء فخمة مع إطار Rainbow)
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 400, 0, 250)
Main.Position = UDim2.new(0.5, -200, 0.5, -125)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Main.BorderSizePixel = 0
Main.Visible = true -- تظهر فوراً للتأكد من العمل
Main.Active = true
Main.Draggable = true

-- حواف دائرية (متناسقة مع الزر)
local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim2.new(0, 15)

-- إطار الـ Rainbow (بأبسط طريقة برمجية)
local Stroke = Instance.new("UIStroke", Main)
Stroke.Thickness = 3
Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
RunService.RenderStepped:Connect(function()
    Stroke.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
end)

-- 3. الزر الأسود الصغير (نص أخضر)
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 50, 0, 50)
Toggle.Position = UDim2.new(0.05, 0, 0.2, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Text = "NEMO"
Toggle.TextColor3 = Color3.fromRGB(0, 255, 0)
Toggle.Font = Enum.Font.GothamBold
Toggle.TextSize = 12
Toggle.Draggable = true

local ToggleCorner = Instance.new("UICorner", Toggle)
ToggleCorner.CornerRadius = UDim2.new(1, 0) -- دائري تماماً

-- 4. برمجة الفتح والإغلاق (أبسط أمر ممكن)
Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)
