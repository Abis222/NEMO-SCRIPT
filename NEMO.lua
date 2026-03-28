-- NEMO HUB | DESIGN & CREDITS VERSION
local CoreGui = game:GetService("CoreGui")

-- تنظيف النسخ القديمة
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_STABLE" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_STABLE"

-- 1. القائمة الرئيسية (سوداء مع حواف دائرية)
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 420, 0, 260)
Main.Position = UDim2.new(0.5, -210, 0.5, -130)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- أسود أعمق
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- [ إضافة حواف دائرية للقائمة ]
local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim2.new(0, 12)

-- [ إضافة الحقوق في الزاوية المطلوبة ]
local Credits = Instance.new("TextLabel", Main)
Credits.Name = "NemoCredits"
Credits.Text = "NEMO HUB"
Credits.Size = UDim2.new(0, 100, 0, 30)
Credits.Position = UDim2.new(0, 15, 0, 10) -- في الزاوية التي حددتها بالدائرة
Credits.BackgroundTransparency = 1
Credits.TextColor3 = Color3.fromRGB(0, 255, 0) -- لون أخضر فاقع
Credits.TextSize = 16
Credits.Font = Enum.Font.GothamBold
Credits.TextXAlignment = Enum.TextXAlignment.Left

-- 2. الزر المصغر (أسود مع نص أخضر وحواف دائرية)
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 50, 0, 50) -- مقاس أصغر وأنيق
Toggle.Position = UDim2.new(0.1, 0, 0.1, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- لون أسود
Toggle.Text = "NEMO"
Toggle.TextColor3 = Color3.fromRGB(0, 255, 0) -- نص أخضر
Toggle.Font = Enum.Font.GothamBold
Toggle.TextSize = 12
Toggle.Draggable = true

-- [ حواف دائرية للزر ]
local ToggleCorner = Instance.new("UICorner", Toggle)
ToggleCorner.CornerRadius = UDim2.new(1, 0)

-- 3. برمجة الفتح والإغلاق
Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)
