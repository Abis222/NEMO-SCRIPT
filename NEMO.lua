-- حذف أي نسخة قديمة لضمان عدم التداخل
if game:GetService("CoreGui"):FindFirstChild("NEMO_V5") then
    game:GetService("CoreGui"):FindFirstChild("NEMO_V5"):Destroy()
end

-- إنشاء الواجهة برمجياً (بدون روابط خارجية)
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local LeftPanel = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TabButton = Instance.new("TextButton")
local ContentFrame = Instance.new("Frame")
local ToggleBtn = Instance.new("TextButton")

ScreenGui.Name = "NEMO_V5"
ScreenGui.Parent = game:GetService("CoreGui")

-- إعداد القائمة الرئيسية (لون أسود فخم مع حواف زرقاء)
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 250)
MainFrame.BorderSizePixel = 2
MainFrame.BorderColor3 = Color3.fromRGB(0, 150, 255)
MainFrame.Active = true
MainFrame.Draggable = true

-- القائمة الجانبية
LeftPanel.Parent = MainFrame
LeftPanel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
LeftPanel.Size = UDim2.new(0, 100, 1, 0)
LeftPanel.BorderSizePixel = 0

-- العنوان
Title.Parent = MainFrame
Title.Text = "NEMO HUB v5"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16
Title.Font = Enum.Font.GothamBold
Title.Position = UDim2.new(0, 110, 0, 10)
Title.Size = UDim2.new(0, 150, 0, 30)
Title.TextXAlignment = Enum.TextXAlignment.Left

-- زر "تلفيل" (Auto Farm) للتجربة
TabButton.Parent = LeftPanel
TabButton.Size = UDim2.new(0.9, 0, 0, 35)
TabButton.Position = UDim2.new(0.05, 0, 0.15, 0)
TabButton.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
TabButton.Text = "Main / Farm"
TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TabButton.Font = Enum.Font.GothamSemibold
TabButton.TextSize = 12

-- الزر العائم "NO" (دائري أحمر) لفتح وإغلاق السكربت
ToggleBtn.Name = "NO"
ToggleBtn.Parent = ScreenGui
ToggleBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ToggleBtn.Position = UDim2.new(0.1, 0, 0.1, 0)
ToggleBtn.Size = UDim2.new(0, 50, 0, 50)
ToggleBtn.Text = "NO"
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 18
ToggleBtn.Draggable = true

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim2.new(1, 0)
UICorner.Parent = ToggleBtn

-- وظيفة زر الـ NO
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

-- تنبيه في الشات لتعرف أن السكربت اشتغل
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "NEMO HUB",
    Text = "Loaded Successfully!",
    Duration = 5
})
