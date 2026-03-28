-- NEMO HUB | PERFECTLY UNIFORM ROUNDED CORNERS (FIXED)
local CoreGui = game:GetService("CoreGui")

-- 1. تنظيف النسخ القديمة لضمان عدم التداخل
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_PRO" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_PRO"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 2. الإطار الرئيسي (الذي سنضع عليه الحواف المتساوية)
local Main = Instance.new("Frame", ScreenGui)
Main.Name = "MainFrame"
-- [ التعديل: حجم متناسق واحترافي كما اتفقنا ]
Main.Size = UDim2.new(0, 560, 0, 330) 
Main.Position = UDim2.new(0.5, -280, 0.5, -165)
-- [ السر هنا: خلفية برمجية صافية لضمان عمل الحواف ]
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- أسود ملكي
Main.BorderSizePixel = 0
Main.ZIndex = 1
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- [ ميزة الحواف البرمجية المتساوية - تصحيح الزوايا ]
-- هذا الأمر يجبر كل الزوايا الأربعة على أن تكون دائرية بنفس المقدار
local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim2.new(0, 20) -- انحناء واضح ومتساوي لكل الزوايا

-- 3. نص العنوان (NEMO HUB)
local Title = Instance.new("TextLabel", Main)
Title.Name = "TitleLabel"
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 200, 0, 40)
Title.Position = UDim2.new(0, 25, 0, 15) -- إزاحة داخلية لضمان عدم تداخل النص مع الحافة
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع
Title.TextSize = 20 
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum
