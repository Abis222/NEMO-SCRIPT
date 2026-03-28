-- NEMO HUB | MANUAL CODE VERSION (NO IMAGES)
local CoreGui = game:GetService("CoreGui")

-- تنظيف أي أثر قديم
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_MANUAL" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_MANUAL"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- 1. القائمة الرئيسية (رسم يدوي للحواف)
local Main = Instance.new("Frame", ScreenGui)
Main.Name = "MainFrame"
Main.Size = UDim2.new(0, 420, 0, 260)
Main.Position = UDim2.new(0.5, -210, 0.5, -130)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- أسود ملكي
Main.BorderSizePixel = 0
Main.ZIndex = 1
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- [ الأمر اليدوي لجعل الحواف دائرية ]
local RoundEffect = Instance.new("UICorner", Main)
RoundEffect.CornerRadius = UDim2.new(0, 20) -- نفس القوس الذي رسمته بيدك

-- 2. نص الحقوق (NEMO HUB)
local Credits = Instance.new("TextLabel", Main)
Credits.Text = "NEMO HUB"
Credits.Size = UDim2.new(0, 150, 0, 40)
Credits.Position = UDim2.new(0, 20, 0, 10) 
Credits.BackgroundTransparency = 1
Credits.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع
Credits.TextSize = 22
Credits.Font = Enum.Font.GothamBold
Credits.ZIndex = 5

-- 3. الزر الدائري (رسم يدوي دائري)
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Name = "NEMO_BUTTON"
Toggle.Size = UDim2.new(0, 55, 0, 55) -- مقاس متناسق
Toggle.Position = UDim2.new(0.1, 0, 0.1, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- أصفر حالياً لنتأكد من ظهوره
Toggle.Text = "NEMO"
Toggle.ZIndex = 10
Toggle.Draggable = true
Toggle.BorderSizePixel = 0

-- [ تحويل الزر لدائرة كاملة يدوياً ]
local ButtonRound = Instance.new("UICorner", Toggle)
ButtonRound.CornerRadius = UDim2.new(1, 0) -- دائرة 100%

-- برمجة الفتح والإغلاق
Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)
