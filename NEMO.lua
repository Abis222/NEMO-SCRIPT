-- NEMO HUB | ULTIMATE LARGE VERSION (CLEAN TITLE)
local CoreGui = game:GetService("CoreGui")

for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_PRO" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_PRO"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. الإطار الرئيسي (تم تكبيره جداً بناءً على الصورة)
local Main = Instance.new("ImageLabel", ScreenGui)
Main.Name = "MainFrame"
-- [ التعديل: حجم ضخم ليملا الشاشة كما في الرسم ]
Main.Size = UDim2.new(0, 800, 0, 450) 
Main.Position = UDim2.new(0.5, -400, 0.5, -225) -- إعادة التوسيط
Main.BackgroundTransparency = 1 
Main.Image = "rbxassetid://3570695787" -- الحواف الدائرية المضمونة
Main.ImageColor3 = Color3.fromRGB(15, 15, 15) -- أسود ملكي
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.ZIndex = 1
Main.Visible = true
Main.Active = true
Main.Draggable = true -- يمكن تحريكه

-- 2. نص الحقوق (NEMO HUB فقط)
local Title = Instance.new("TextLabel", Main)
Title.Name = "TitleLabel"
-- [ التعديل: النص أصبح NEMO HUB فقط ]
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 250, 0, 50)
Title.Position = UDim2.new(0, 30, 0, 20) -- إزاحة بسيطة للداخل
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع
-- [ التعديل: تكبير حجم الخط ليتناسب مع القائمة الكبيرة ]
Title.TextSize = 28 
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 10

-- 3. الزر الدائري (يبقى كما هو، فهو ممتاز)
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
