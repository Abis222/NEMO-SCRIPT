-- NEMO HUB | PRO DESIGN + Z-INDEX FIX
local CoreGui = game:GetService("CoreGui")

-- 1. تنظيف شامل لأي نسخة قديمة لمنع التداخل
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_STABLE" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_STABLE"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global -- تفعيل الترتيب العالمي للطبقات

-- 2. القائمة الرئيسية (نفس حجم وحواف الصورة)
local Main = Instance.new("Frame", ScreenGui)
Main.Name = "MainFrame"
Main.Size = UDim2.new(0, 550, 0, 320) 
Main.Position = UDim2.new(0.5, -275, 0.5, -160)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- أسود ملكي
Main.BorderSizePixel = 0
Main.ZIndex = 1 -- الطبقة الخلفية (الأرضية)
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- [ حواف القائمة الانسيابية ]
local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim2.new(0, 10)

-- 3. نص الحقوق (NEMO HUB by Abbas)
local Credits = Instance.new("TextLabel", Main)
Credits.Name = "CreditsLabel"
Credits.Text = "NEMO HUB by Abbas (ABIS222)"
Credits.Size = UDim2.new(0, 300, 0, 30)
Credits.Position = UDim2.new(0, 15, 0, 8) 
Credits.BackgroundTransparency = 1
Credits.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع لضمان الرؤية
Credits.TextSize = 16
Credits.Font = Enum.Font.GothamBold
Credits.TextXAlignment = Enum.TextXAlignment.Left
Credits.ZIndex = 10 -- [مهم] فوق القائمة السوداء

-- 4. زر الإخفاء والظهور (دائري أسود بنص أخضر)
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Name = "NemoToggle"
Toggle.Size = UDim2.new(0, 55, 0, 55)
Toggle.Position = UDim2.new(0.05, 0, 0.15, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(20, 20, 20) -- أسود فاتح قليلاً
Toggle.Text = "NEMO"
Toggle.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر
Toggle.Font = Enum.Font.GothamBold
Toggle.TextSize = 12
Toggle.ZIndex = 50 -- [مهم] أعلى طبقة في كل السكربت لضمان عدم اختفائه
Toggle.Draggable = true

-- [ حواف الزر بنفس انسيابية القائمة ]
local ToggleCorner = Instance.new("UICorner", Toggle)
ToggleCorner.CornerRadius = UDim2.new(0, 10) -- نفس رقم حواف القائمة (10)

-- 5. برمجة اللمس والضغط (مضمونة الاستجابة)
local function OnToggle()
    Main.Visible = not Main.Visible
end

Toggle.MouseButton1Click:Connect(OnToggle)
Toggle.TouchTap:Connect(OnToggle) -- دعم خاص لشاشة Oppo
