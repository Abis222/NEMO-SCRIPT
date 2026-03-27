--[[ 
    NEMO HUB - THE PROFESSIONAL BASE V42
    [ REDZ STYLE ] - [ DRAGGABLE ENABLED ]
    OWNER: ABBAS (ABIS222)
]]--

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local LeftSidebar = Instance.new("Frame")
local ContentFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")

-- 1. إعدادات الحماية والظهور
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "NEMO_HUB_PRO"

-- 2. الإطار الرئيسي (نفس أبعاد وشكل Redz)
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18) -- لون Redz المعتاد
MainFrame.Position = UDim2.new(0.3, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0, 550, 0, 350)
MainFrame.BorderSizePixel = 0

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim2.new(0, 8)
MainCorner.Parent = MainFrame

-- 3. ميزة الحركة (التحريك بالسحب)
local dragging, dragInput, dragStart, startPos
local function update(input)
    local delta = input.Position - dragStart
    MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then dragging = false end
        end)
    end
end)

MainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then update(input) end
end)

-- 4. الشريط العلوي (Top Bar)
TopBar.Name = "TopBar"
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TopBar.Size = UDim2.new(1, 0, 0, 40)
TopBar.BorderSizePixel = 0

local TopCorner = Instance.new("UICorner")
TopCorner.Parent = TopBar

Title.Parent = TopBar
Title.Text = "NEMO HUB | VERSION 1.0"
Title.TextColor3 = Color3.fromRGB(0, 255, 150)
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold
Title.Size = UDim2.new(1, 0, 1, 0)
Title.Position = UDim2.new(0.03, 0, 0, 0)
Title.TextXAlignment = Enum.TextXAlignment.Left

-- 5. القائمة الجانبية (Sidebar)
LeftSidebar.Name = "Sidebar"
LeftSidebar.Parent = MainFrame
LeftSidebar.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
LeftSidebar.Position = UDim2.new(0, 0, 0, 40)
LeftSidebar.Size = UDim2.new(0, 140, 1, -40)

-- 6. منطقة المحتوى (فارغة لتضيف ميزاتك)
ContentFrame.Name = "Content"
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
ContentFrame.Position = UDim2.new(0, 145, 0, 45)
ContentFrame.Size = UDim2.new(0, 400, 0, 300)

local ContentCorner = Instance.new("UICorner")
ContentCorner.Parent = ContentFrame

print("NEMO HUB - Draggable UI Loaded!")
