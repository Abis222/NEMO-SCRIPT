local CoreGui = game:GetService("CoreGui")

-- تنظيف أي نسخ قديمة لضمان عمل الزر
if CoreGui:FindFirstChild("NEMO_ULTIMATE_UI") then
    CoreGui.NEMO_ULTIMATE_UI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NEMO_ULTIMATE_UI"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. القائمة الشفافة الأنيقة (MainFrame)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 520, 0, 310)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -155)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BackgroundTransparency = 0.25 --
MainFrame.BorderSizePixel = 0
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true

-- حواف دائرية ناعمة للقائمة
local MainCorner = Instance.new("UICorner", MainFrame)
MainCorner.CornerRadius = UDim2.new(0, 20) -- انحناء أنيق كما في الصور

-- إطار مضيء خفيف جداً للقائمة
local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Color = Color3.fromRGB(0, 255, 0)
MainStroke.Thickness = 1.2
MainStroke.Transparency = 0.7

-- الاسم (NEMO HUB فقط)
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Position = UDim2.new(0, 25, 0, 15)
Title.TextColor3 = Color3.fromRGB(0, 255, 0)
Title.BackgroundTransparency = 1
Title.TextSize = 24
Title.Font = Enum.Font.GothamBold
Title.ZIndex = 10

---------------------------------------------------------
-- 2. الزر الدائري الشفاف (NEMO)
---------------------------------------------------------
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "NemoButton"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Size = UDim2.new(0, 65, 0, 65)
ToggleBtn.Position = UDim2.new(0, 25, 0, 25) 
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleBtn.BackgroundTransparency = 0.4 -- شفافية الزر
ToggleBtn.Text = "NEMO"
ToggleBtn.TextColor3 = Color3.fromRGB(0, 255, 0)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 14
ToggleBtn.ZIndex = 10000
ToggleBtn.Active = true
ToggleBtn.Draggable = true

-- جعل الزر دائرياً
local ButtonCorner = Instance.new("UICorner", ToggleBtn)
ButtonCorner.CornerRadius = UDim2.new(1, 0)

-- إطار للزر
local ButtonStroke = Instance.new("UIStroke", ToggleBtn)
ButtonStroke.Color = Color3.fromRGB(0, 255, 0)
ButtonStroke.Thickness = 1.5
ButtonStroke.Transparency = 0.5

-- وظيفة الإخفاء والإظهار
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
