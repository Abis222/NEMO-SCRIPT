-- NEMO HUB | PRO DESIGN BASED ON IMAGE
local CoreGui = game:GetService("CoreGui")

-- تنظيف شامل للقديم
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_STABLE" or v.Name == "NEMO_FINAL" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_STABLE"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- 1. القائمة الرئيسية (نفس أبعاد وحواف الصورة)
local Main = Instance.new("Frame", ScreenGui)
Main.Name = "MainFrame"
-- ضبط الحجم ليكون مستطيلاً احترافياً مثل الصورة
Main.Size = UDim2.new(0, 550, 0, 320) 
Main.Position = UDim2.new(0.5, -275, 0.5, -160)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- أسود داكن جداً
Main.BorderSizePixel = 0
Main.ZIndex = 1
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- [ ميزة الحواف: جعل الحواف دائرية بشكل بسيط وأنيق كما في الصورة ]
local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim2.new(0, 10) -- حواف انسيابية خفيفة

-- 2. نص الحقوق العلوي (NEMO HUB by Abbas)
local Credits = Instance.new("TextLabel", Main)
Credits.Name = "CreditsLabel"
Credits.Text = "NEMO HUB by Abbas (ABIS222)"
Credits.Size = UDim2.new(0, 300, 0, 30)
Credits.Position = UDim2.new(0, 15, 0, 8) 
Credits.BackgroundTransparency = 1
Credits.TextColor3 = Color3.fromRGB(200, 200, 200) -- رمادي فاتح مثل الصورة
Credits.TextSize = 14
Credits.Font = Enum.Font.GothamBold
Credits.TextXAlignment = Enum.TextXAlignment.Left
Credits.ZIndex = 5

-- 3. الزر الأصفر (مؤقت حتى نتأكد من القائمة)
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
