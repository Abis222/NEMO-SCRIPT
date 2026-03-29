local CoreGui = game:GetService("CoreGui")

-- تنظيف النسخ القديمة لضمان عمل الزر واستجابة السكربت
if CoreGui:FindFirstChild("NEMO_PREMIUM_UI") then
    CoreGui.NEMO_PREMIUM_UI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NEMO_PREMIUM_UI"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. القائمة الشفافة الأنيقة (MainFrame)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 520, 0, 310)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -155)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BackgroundTransparency = 0.25 -- درجة الشفافية الزجاجية المثالية
MainFrame.BorderSizePixel = 0
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true -- قابل للسحب لكي لا يخرج عن الشاشة

-- تصفيح الحواف (انحناء دائري ناعم جداً)
local MainCorner = Instance.new("UICorner", MainFrame)
MainCorner.CornerRadius = UDim2.new(0, 25) 

-- إطار مضيء (Stroke) ليعطي جمالية الحواف كما في الصورة
local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Color = Color3.fromRGB(0, 255, 0)
MainStroke.Thickness = 1.5
MainStroke.Transparency = 0.6

-- العنوان (NEMO HUB فقط)
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Position = UDim2.new(0, 30, 0, 15)
Title.TextColor3 = Color3.fromRGB(0, 255, 0)
Title.BackgroundTransparency = 1
Title.TextSize = 26
Title.Font = Enum.Font.GothamBold
Title.ZIndex = 10

-- زر القسم (Main) - مصفح وأنيق
local MainSection = Instance.new("TextButton")
MainSection.Parent = MainFrame
MainSection.Name = "MainSection"
MainSection.Size = UDim2.new(0, 130, 0, 45)
MainSection.Position = UDim2.new(0, 25, 0, 75)
MainSection.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainSection.BackgroundTransparency = 0.3
MainSection.Text = "Main"
MainSection.TextColor3 = Color3.fromRGB(0, 255, 0)
MainSection.Font = Enum.Font.GothamBold
MainSection.TextSize = 18
local BtnCorner = Instance.new("UICorner", MainSection)
BtnCorner.CornerRadius = UDim2.new(0, 10)

---------------------------------------------------------
-- 2. الزر الدائري الشفاف (زر الإخفاء والإظهار)
---------------------------------------------------------
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "NemoToggle"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Size = UDim2.new(0, 65, 0, 65)
ToggleBtn.Position = UDim2.new(0, 20, 0, 100) -- مكان مناسب لا يعيق اللعب
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleBtn.BackgroundTransparency = 0.4 
ToggleBtn.Text = "NEMO"
ToggleBtn.TextColor3 = Color3.fromRGB(0, 255, 0)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 13
ToggleBtn.ZIndex = 10000
ToggleBtn.Active = true
ToggleBtn.Draggable = true

-- جعل الزر دائرياً تماماً
local ButtonCorner = Instance.new("UICorner", ToggleBtn)
ButtonCorner.CornerRadius = UDim2.new(1, 0)

-- وظيفة الإخفاء والإظهار
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
