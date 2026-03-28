local CoreGui = game:GetService("CoreGui")

-- حذف أي نسخة قديمة لضمان نظافة التشغيل
if CoreGui:FindFirstChild("NEMO_ULTIMATE_DESIGN") then
    CoreGui.NEMO_ULTIMATE_DESIGN:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NEMO_ULTIMATE_DESIGN"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. القائمة الرئيسية (نفس الكود الهندسي بدون أي تغيير)
local MainFrame = Instance.new("ImageLabel")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.Image = "rbxassetid://15268390117" 
MainFrame.ImageColor3 = Color3.fromRGB(15, 15, 15) -- أسود داكن
MainFrame.ScaleType = Enum.ScaleType.Slice
MainFrame.SliceCenter = Rect.new(100, 100, 100, 100)
MainFrame.SliceScale = 0.5 
MainFrame.BackgroundTransparency = 1 

MainFrame.Size = UDim2.new(0, 520, 0, 310)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -155)
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true 

--
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
--
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 250, 0, 40)
Title.Position = UDim2.new(0, 30, 0, 15) 
Title.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع
Title.BackgroundTransparency = 1
Title.TextSize = 20
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left 
Title.ZIndex = 10 

---------------------------------------------------------
-- 2. الزر (NEMO) - نفس الكود بدون أي تغيير
---------------------------------------------------------
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "NemoButton"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Size = UDim2.new(0, 60, 0, 60)
ToggleBtn.Position = UDim2.new(0, 20, 0, 20) 
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleBtn.BackgroundTransparency = 0.6 
ToggleBtn.Text = "NEMO"
ToggleBtn.TextColor3 = Color3.fromRGB(0, 255, 0)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 12
ToggleBtn.ZIndex = 10000 
ToggleBtn.Active = true
ToggleBtn.Draggable = true

local ButtonCorner = Instance.new("UICorner", ToggleBtn)
ButtonCorner.CornerRadius = UDIm2.new(1, 0) 

local ButtonStroke = Instance.new("UIStroke", ToggleBtn)
ButtonStroke.Color = Color3.fromRGB(0, 255, 0)
ButtonStroke.Thickness = 1
ButtonStroke.Transparency = 0.5

-- وظيفة الإخفاء والإظهار (نفس الكود)
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
