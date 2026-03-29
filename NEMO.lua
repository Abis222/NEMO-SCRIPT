local CoreGui = game:GetService("CoreGui")

-- تنظيف النسخ القديمة لضمان عمل الزر
if CoreGui:FindFirstChild("NEMO_STABLE_BACK") then
    CoreGui.NEMO_STABLE_BACK:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NEMO_STABLE_BACK"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. القائمة (MainFrame) - سوداء واضحة وحواف دائرية
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 520, 0, 310)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -155)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BackgroundTransparency = 0.1 -- درجة وضوح عالية لكي تراها جيداً
MainFrame.BorderSizePixel = 0
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true

-- تصفيح حواف القائمة (UICorner)
local MainCorner = Instance.new("UICorner", MainFrame)
MainCorner.CornerRadius = UDim2.new(0, 15)

-- الاسم (NEMO HUB فقط)
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Position = UDim2.new(0, 25, 0, 15)
Title.TextColor3 = Color3.fromRGB(0, 255, 0)
Title.BackgroundTransparency = 1
Title.TextSize = 25
Title.Font = Enum.Font.GothamBold
Title.ZIndex = 10

-- زر القسم (Main)
local MainSection = Instance.new("TextButton")
MainSection.Parent = MainFrame
MainSection.Name = "MainSection"
MainSection.Size = UDim2.new(0, 120, 0, 40)
MainSection.Position = UDim2.new(0, 20, 0, 70)
MainSection.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainSection.Text = "Main"
MainSection.TextColor3 = Color3.fromRGB(0, 255, 0)
MainSection.Font = Enum.Font.GothamBold
MainSection.TextSize = 16
local BtnCorner = Instance.new("UICorner", MainSection)
BtnCorner.CornerRadius = UDim2.new(0, 8)

---------------------------------------------------------
-- 2. الزر الدائري (NEMO) - عاد للظهور والاستجابة
---------------------------------------------------------
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "NemoButton"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Size = UDim2.new(0, 65, 0, 65)
ToggleBtn.Position = UDim2.new(0, 30, 0, 30) 
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleBtn.BackgroundTransparency = 0.3 
ToggleBtn.Text = "NEMO"
ToggleBtn.TextColor3 = Color3.fromRGB(0, 255, 0)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 14
ToggleBtn.ZIndex = 10000
ToggleBtn.Active = true
ToggleBtn.Draggable = true

-- تصفيح الزر (دائري)
local ButtonCorner = Instance.new("UICorner", ToggleBtn)
ButtonCorner.CornerRadius = UDim2.new(1, 0)

-- وظيفة الإخفاء والإظهار
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
