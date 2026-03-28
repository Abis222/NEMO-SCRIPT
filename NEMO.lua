-- NEMO HUB | SIMPLE CREDITS ONLY
local CoreGui = game:GetService("CoreGui")

-- تنظيف أي نسخ قديمة
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_STABLE" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_STABLE"

-- 1. القائمة الرئيسية (سوداء عادية كما في الصورة)
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 420, 0, 260)
Main.Position = UDim2.new(0.5, -210, 0.5, -130)
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Main.BorderSizePixel = 2 -- إطار عادي بسيط
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- 2. إضافة الحقوق فقط (NEMO HUB) في الزاوية
local Credits = Instance.new("TextLabel", Main)
Credits.Text = "NEMO HUB"
Credits.Size = UDim2.new(0, 100, 0, 30)
Credits.Position = UDim2.new(0, 10, 0, 5) -- الزاوية العلوية اليسرى
Credits.BackgroundTransparency = 1
Credits.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر لكي تراه بوضوح
Credits.TextSize = 18
Credits.Font = Enum.Font.SourceSansBold

-- 3. الزر الأصفر الأصلي (الذي اشتغل معك)
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 60, 0, 60)
Toggle.Position = UDim2.new(0.1, 0, 0.1, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- أصفر
Toggle.Text = "NEMO"
Toggle.Draggable = true

-- 4. برمجة الفتح والإغلاق
Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)
