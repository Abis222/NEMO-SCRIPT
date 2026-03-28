-- NEMO HUB | FINAL DESIGN | VISIBLE DARK THEME
local CoreGui = game:GetService("CoreGui")

for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_PRO" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_PRO"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. الإطار الرئيسي (الآن داكن جداً وواضح)
local MainFrame = Instance.new("ImageLabel", ScreenGui)
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 520, 0, 310) 
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -155)
-- [ التعديل الجذري للشفافية ]
MainFrame.BackgroundTransparency = 1 -- جعل الخلفية البرمجية شفافة
MainFrame.Image = "rbxassetid://3570695787" -- الحواف الدائرية الأنيقة
MainFrame.ImageColor3 = Color3.fromRGB(15, 15, 15) -- تلوين الصورة بالأسود الداكن لضمان الرؤية
MainFrame.ImageTransparency = 0.05 --
MainFrame.ScaleType = Enum.ScaleType.Slice
MainFrame.SliceCenter = Rect.new(100, 100, 100, 100)
MainFrame.SliceScale = 0.12
MainFrame.ZIndex = 1
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true

-- العنوان النصي (يبقى أخضر كما طلبت)
local Title = Instance.new("TextLabel", MainFrame)
Title.Text = "NEMO HUB by Abbas"
Title.Size = UDim2.new(0, 300, 0, 40)
Title.Position = UDim2.new(0, 30, 0, 15) 
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع
Title.TextSize = 22
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 10

-- الأيقونة (كما هي)
local Icon = Instance.new("ImageLabel", MainFrame)
Icon.Name = "UserIcon"
Icon.Size = UDim2.new(0, 50, 0, 50)
Icon.Position = UDim2.new(0.5, -25, 0, 10) 
Icon.BackgroundTransparency = 1
Icon.Image = "rbxassetid://15268390117" -- مثال: أيقونة نينجا
Icon.ZIndex = 11

-- 2. الزر الدائري للفتح والإغلاق
local Toggle = Instance.new("ImageButton", ScreenGui)
Toggle.Name = "NemoToggle"
Toggle.Size = UDim2.new(0, 60, 0, 60)
Toggle.Position = UDim2.new(0.05, 0, 0.15, 0)
Toggle.BackgroundTransparency = 1
Toggle.Image = "rbxassetid://6031068433" 
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

Toggle.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
