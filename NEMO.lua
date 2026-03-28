-- حذف أي نسخة قديمة لضمان التشغيل
if game:GetService("CoreGui"):FindFirstChild("NEMO_V4") then
    game:GetService("CoreGui"):FindFirstChild("NEMO_V4"):Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local LeftSidebar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local MainBtn = Instance.new("TextButton")
local ToggleBtn = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Name = "NEMO_V4"
ScreenGui.Parent = game:GetService("CoreGui")

-- إعدادات القائمة الرئيسية
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 450, 0, 280)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true -- يمكنك تحريكها بيدك

local Corner1 = Instance.new("UICorner")
Corner1.CornerRadius = UDim2.new(0, 10)
Corner1.Parent = MainFrame

-- القائمة الجانبية (نفس تصميم Redz)
LeftSidebar.Parent = MainFrame
LeftSidebar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
LeftSidebar.Size = UDim2.new(0, 120, 1, 0)
LeftSidebar.BorderSizePixel = 0

local Corner2 = Instance.new("UICorner")
Corner2.CornerRadius = UDim2.new(0, 10)
Corner2.Parent = LeftSidebar

-- اسم السكربت فوق
Title.Parent = MainFrame
Title.Text = "NEMO HUB | by Abbas"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold
Title.Position = UDim2.new(0, 135, 0, 10)
Title.Size = UDim2.new(0, 200, 0, 30)
Title.TextXAlignment = Enum.TextXAlignment.Left

-- زر "Main" في القائمة الجانبية
MainBtn.Parent = LeftSidebar
MainBtn.Size = UDim2.new(0.9, 0, 0, 35)
MainBtn.Position = UDim2.new(0.05, 0, 0.15, 0)
MainBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
MainBtn.Text = "Main"
MainBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MainBtn.Font = Enum.Font.GothamSemibold
MainBtn.TextSize = 14

local Corner3 = Instance.new("UICorner")
Corner3.Parent = MainBtn

-- الزر العائم "NO" (دائري أحمر)
ToggleBtn.Name = "NO_Toggle"
ToggleBtn.Parent = ScreenGui
ToggleBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
ToggleBtn.Position = UDim2.new(0.1, 0, 0.1, 0)
ToggleBtn.Size = UDim2.new(0, 55, 0, 55)
ToggleBtn.Text = "NO"
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 20
ToggleBtn.Draggable = true

local Round = Instance.new("UICorner")
Round.CornerRadius = UDim2.new(1, 0)
Round.Parent = ToggleBtn

-- وظيفة الإخفاء والإظهار عند الضغط على زر NO
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

print("NEMO HUB Loaded Locally!")
