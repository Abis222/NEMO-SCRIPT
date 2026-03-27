--[[ 
    NEMO HUB - DRAGGABLE REDZ EDITION
    OWNER: ABBAS (ABIS222)
    FEATURES: ALL UI IS DRAGGABLE + NO BUTTON
]]--

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Sidebar = Instance.new("Frame")
local Content = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ToggleButton = Instance.new("TextButton")

-- إعدادات الحماية والظهور
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "NEMO_HUB_DRAGGABLE"

-- 1. القائمة الرئيسية (تصميم Redz)
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
MainFrame.Position = UDim2.new(0.3, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 520, 0, 320)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true -- مهم جداً لجعلها قابلة للتفاعل

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim2.new(0, 8)
MainCorner.Parent = MainFrame

-- [ وظيفة تحريك القائمة الرئيسية ]
local function MakeDraggable(frame)
    local dragging, dragInput, dragStart, startPos
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

MakeDraggable(MainFrame) -- تفعيل التحريك للقائمة

-- 2. الشريط العلوي (حقوق NEMO HUB)
TopBar.Name = "TopBar"
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TopBar.Size = UDim2.new(1, 0, 0, 35)
TopBar.BorderSizePixel = 0

local TopCorner = Instance.new("UICorner")
TopCorner.Parent = TopBar

Title.Parent = TopBar
Title.Text = "NEMO HUB | by Abbas"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16
Title.Font = Enum.Font.GothamBold
Title.Size = UDim2.new(0, 200, 1, 0)
Title.Position = UDim2.new(0.03, 0, 0, 0)
Title.TextXAlignment = Enum.TextXAlignment.Left

-- 3. القائمة الجانبية (Sidebar) - قسم Main فقط
Sidebar.Name = "Sidebar"
Sidebar.Parent = MainFrame
Sidebar.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Sidebar.Position = UDim2.new(0, 0, 0, 35)
Sidebar.Size = UDim2.new(0, 130, 1, -35)

local MainTabBtn = Instance.new("TextButton")
MainTabBtn.Parent = Sidebar
MainTabBtn.Size = UDim2.new(0.9, 0, 0, 35)
MainTabBtn.Position = UDim2.new(0.05, 0, 0.05, 0)
MainTabBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
MainTabBtn.Text = "Main"
MainTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MainTabBtn.Font = Enum.Font.GothamSemibold
MainTabBtn.TextSize = 14

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim2.new(0, 5)
BtnCorner.Parent = MainTabBtn

-- 4. منطقة المحتوى (الخانة الفارغة)
Content.Name = "Content"
Content.Parent = MainFrame
Content.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Content.Position = UDim2.new(0, 135, 0, 40)
Content.Size = UDim2.new(0, 380, 0, 275)

local ContentCorner = Instance.new("UICorner")
ContentCorner.Parent = Content

-- 5. الزر الدائري (NO) للتحكم
ToggleButton.Name = "NO_Button"
ToggleButton.Parent = ScreenGui
ToggleButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
ToggleButton.Position = UDim2.new(0.1, 0, 0.1, 0)
ToggleButton.Size = UDim2.new(0, 45, 0, 45)
ToggleButton.Text = "NO"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.TextSize = 18

local Round = Instance.new("UICorner")
Round.CornerRadius = UDim2.new(1, 0)
Round.Parent = ToggleButton

MakeDraggable(ToggleButton) -- تفعيل التحريك لزر NO أيضاً

-- وظيفة الإخفاء والإظهار
local isVisible = true
ToggleButton.MouseButton1Click:Connect(function()
    isVisible = not isVisible
    MainFrame.Visible = isVisible
end)
