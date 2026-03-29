local CoreGui = game:GetService("CoreGui")

-- تنظيف النسخ لضمان عمل الزر
if CoreGui:FindFirstChild("NEMO_ORIGINAL_RETURN") then
    CoreGui.NEMO_ORIGINAL_RETURN:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NEMO_ORIGINAL_RETURN"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. القائمة الأصلية الشغالة (MainFrame)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 520, 0, 310)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -155)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- السواد الأصلي الواضح
MainFrame.BackgroundTransparency = 0.1 -- وضوح تام
MainFrame.BorderSizePixel = 0
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true

-- تصفيح الحواف (انحناء ناعم)
local MainCorner = Instance.new("UICorner", MainFrame)
MainCorner.CornerRadius = UDim2.new(0, 15)

-- العنوان (NEMO HUB فقط)
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Position = UDim2.new(0, 25, 0, 15)
Title.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع
Title.BackgroundTransparency = 1
Title.TextSize = 25
Title.Font = Enum.Font.GothamBold
Title.ZIndex = 10

--
local MainButton = Instance.new("TextButton")
MainButton.Name = "Main"
MainButton.Parent = MainFrame
MainButton.Size = UDim2.new(0, 120, 0, 40)
MainButton.Position = UDim2.new(0, 20, 0, 70)
MainButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainButton.Text = "Main"
MainButton.TextColor3 = Color3.fromRGB(0, 255, 0)
MainButton.Font = Enum.Font.GothamBold
MainButton.TextSize = 16
local BtnCorner = Instance.new("UICorner", MainButton)
BtnCorner.CornerRadius = UDim2.new(0, 8)

---------------------------------------------------------
-- 2. الزر الدائري (NEMO) - الذي كان يعمل في أول كود
---------------------------------------------------------
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "NemoToggle"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Size = UDim2.new(0, 65, 0, 65)
ToggleBtn.Position = UDim2.new(0, 30, 0, 30) 
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleBtn.BackgroundTransparency = 0.3 -- شفافية بسيطة
ToggleBtn.Text = "NEMO"
ToggleBtn.TextColor3 = Color3.fromRGB(0, 255, 0)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 14
ToggleBtn.ZIndex = 10000
ToggleBtn.Active = true
ToggleBtn.Draggable = true

-- تصفيح الزر دائرياً
local ButtonCorner = Instance.new("UICorner", ToggleBtn)
ButtonCorner.CornerRadius = UDim2.new(1, 0)

-- وظيفة الإخفاء والإظهار المضمونة
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
