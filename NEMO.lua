-- NEMO HUB | IDEAL SIZE VERSION (BASED ON IMAGE 2)
local CoreGui = game:GetService("CoreGui")

-- تنظيف النسخ القديمة
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_PRO" or v.Name == "NEMO_FINAL" or v.Name == "NEMO_STABLE" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_PRO"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. الإطار الرئيسي (تم تعديل الحجم ليتطابق مع الصورة الثانية تماماً)
local Main = Instance.new("ImageLabel", ScreenGui)
Main.Name = "MainFrame"
-- [ التعديل: حجم متناسق واحترافي كما في الصورة الثانية ]
Main.Size = UDim2.new(0, 560, 0, 330) 
Main.Position = UDim2.new(0.5, -280, 0.5, -165) -- إعادة التوسيط الدقيق
Main.BackgroundTransparency = 1 
Main.Image = "rbxassetid://3570695787" -- الحواف الدائرية الأنيقة والمضمونة
Main.ImageColor3 = Color3.fromRGB(15, 15, 15) -- أسود ملكي داكن
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.ZIndex = 1
Main.Visible = true
Main.Active = true
Main.Draggable = true -- قابل للتحريك

-- 2. نص العنوان (NEMO HUB)
local Title = Instance.new("TextLabel", Main)
Title.Name = "TitleLabel"
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 200, 0, 40)
Title.Position = UDim2.new(0, 25, 0, 15) -- إزاحة متناسقة للعنوان
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع
-- [ التعديل: حجم خط متناسق مع الحجم الجديد ]
Title.TextSize = 20 
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 10

-- 3. الزر الدائري (يبقى كما هو، متناسق وممتاز)
local Toggle = Instance.new("ImageButton", ScreenGui)
Toggle.Name = "NemoToggle"
Toggle.Size = UDim2.new(0, 60, 0, 60)
Toggle.Position = UDim2.new(0.05, 0, 0.15, 0)
Toggle.BackgroundTransparency = 1
Toggle.Image = "rbxassetid://6031068433" -- دائرة كاملة
Toggle.ImageColor3 = Color3.fromRGB(20, 20, 20)
Toggle.ZIndex = 50
Toggle.Draggable = true

local ToggleText = Instance.new("TextLabel", Toggle)
ToggleText.Text = "NEMO"
ToggleText.Size = UDim2.new(1, 0, 1, 0)
ToggleText.BackgroundTransparency = 1
ToggleText.TextColor3 = Color3.fromRGB(0, 255, 0)
ToggleText.Font = Enum.Font.GothamBold
ToggleText.TextSize = 12
ToggleText.ZIndex = 51

-- برمجة الفتح والإغلاق
Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)
