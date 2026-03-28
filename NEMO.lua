-- NEMO HUB | STEP 2 (FIXED): PURE ROUNDED & CIRCLE Toggle
local CoreGui = game:GetService("CoreGui")

for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_STABLE" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_STABLE"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- 1. القائمة (إطار دائري ناعم تماماً)
local Main = Instance.new("ImageLabel", ScreenGui) -- استخدمنا ImageLabel بدلاً من Frame لضمان الحواف
Main.Name = "MainFrame"
Main.Size = UDim2.new(0, 420, 0, 260)
Main.Position = UDim2.new(0.5, -210, 0.5, -130)
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Main.BorderSizePixel = 0
Main.ZIndex = 1
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- [ ميزة الحواف الدائرية الكاملة للقائمة ]
-- هذا الكود يضمن أن القائمة ستصبح دائرية وناعمة تماماً
local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim2.new(0, 20) -- زاوية دائرية واضحة

-- 2. الحقوق (NEMO HUB) - تبقى كما هي
local Credits = Instance.new("TextLabel", Main)
Credits.Name = "NemoCredits"
Credits.Text = "NEMO HUB"
Credits.Size = UDim2.new(0, 150, 0, 40)
Credits.Position = UDim2.new(0, 15, 0, 5) 
Credits.BackgroundTransparency = 1
Credits.TextColor3 = Color3.fromRGB(0, 255, 0)
Credits.TextSize = 22
Credits.Font = Enum.Font.GothamBold
Credits.ZIndex = 5

-- 3. الزر الدائري تماماً (الزر نفسه يصبح دائرة)
local Toggle = Instance.new("TextButton", ScreenGui) -- استخدمنا TextButton لجعل الزر نفسه دائري
Toggle.Size = UDim2.new(0, 60, 0, 60)
Toggle.Position = UDim2.new(0.1, 0, 0.1, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Toggle.Text = "NEMO"
Toggle.ZIndex = 10
Toggle.Draggable = true
Toggle.BorderSizePixel = 0

-- [ ميزة الدائرة الكاملة للزر ]
-- هذا الكود يحول الزر الأصفر إلى دائرة كاملة
local ToggleCorner = Instance.new("UICorner", Toggle)
ToggleCorner.CornerRadius = UDim2.new(1, 0) -- زاوية دائرية بنسبة 100% (دائرة)

Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)
