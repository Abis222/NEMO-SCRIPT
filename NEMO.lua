local CoreGui = game:GetService("CoreGui")

-- حذف أي نسخة قديمة لضمان نظافة التشغيل
if CoreGui:FindFirstChild("NEMO_ULTIMATE_DESIGN") then
    CoreGui.NEMO_ULTIMATE_DESIGN:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NEMO_ULTIMATE_DESIGN"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. القائمة الرئيسية (ImageLabel) - للحصول على الحواف العميقة جداً كما في الصورة
local MainFrame = Instance.new("ImageLabel")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
-- [ ميزة الحواف الدائرية العميقة والناعمة ]
-- هذه الصورة هي السر في الحصول على نفس المظهر الموجود في لقطة الشاشة
MainFrame.Image = "rbxassetid://15268390117" 
MainFrame.ImageColor3 = Color3.fromRGB(15, 15, 15) -- لون أسود
MainFrame.ScaleType = Enum.ScaleType.Slice
MainFrame.SliceCenter = Rect.new(100, 100, 100, 100) -- توزيع الحواف بالتساوي
MainFrame.SliceScale = 0.5 -- جعل الانحناء عميقاً جداً وناعماً
MainFrame.BackgroundTransparency = 1 -- جعل الخلفية شفافة لظهور الصورة

-- [ ضبط الحجم ليكون كبيراً ولا يخرج عن الشاشة ]
MainFrame.Size = UDim2.new(0, 520, 0, 310)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -155) -- تمركز دقيق
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true -- يمكنك سحبها إذا أردت

-- العنوان (NEMO HUB) - لونه أخضر كما في الصورة
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Text = "NEMO HUB by Abbas"
Title.Size = UDim2.new(0, 250, 0, 40)
Title.Position = UDim2.new(0, 30, 0, 15) -- إزاحة داخلية بسيطة
Title.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع
Title.BackgroundTransparency = 1
Title.TextSize = 20
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left -- محاذاة لليسار
Title.ZIndex = 10 -- أعلى القائمة

---------------------------------------------------------
-- 2. الزر (NEMO) - شفاف ودائري كما في الصورة
---------------------------------------------------------
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "NemoButton"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Size = UDim2.new(0, 60, 0, 60)
ToggleBtn.Position = UDim2.new(0, 20, 0, 20) -- أعلى الزاوية اليسرى
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleBtn.BackgroundTransparency = 0.6 -- شفافية عالية كما في الصورة
ToggleBtn.Text = "NEMO"
ToggleBtn.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 12
ToggleBtn.ZIndex = 10000 -- لضمان بقائه فوق كل شيء
ToggleBtn.Active = true
ToggleBtn.Draggable = true

-- جعل الزر دائرياً تماماً
local ButtonCorner = Instance.new("UICorner", ToggleBtn)
ButtonCorner.CornerRadius = UDIm2.new(1, 0) -- جعل الانحناء 100%

-- إضافة إطار مضيء للزر الدائري
local ButtonStroke = Instance.new("UIStroke", ToggleBtn)
ButtonStroke.Color = Color3.fromRGB(0, 255, 0)
ButtonStroke.Thickness = 1
ButtonStroke.Transparency = 0.5

-- وظيفة الإخفاء والإظهار
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
