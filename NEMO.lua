--[[ 
    NEMO HUB - OFFICIAL UI FRAMEWORK
    OWNER: ABBAS (ABIS222)
    STATUS: FULL BRANDING APPLIED
]]--

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local LeftSideBar = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local ContentFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TabHolder = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")

-- إعدادات الشاشة (لحماية الواجهة من المسح)
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "NEMO_HUB_V1"

-- الإطار الرئيسي (الخلفية السوداء الفخمة)
MainFrame.Name = "Nemo_MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15) 
MainFrame.Position = UDim2.new(0.3, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 500, 0, 320)
MainFrame.Active = true
MainFrame.Draggable = true -- تحريك القائمة في هاتفك Oppo A18

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim2.new(0, 10)
MainCorner.Parent = MainFrame

-- الشريط العلوي (Top Bar) باللون الأخضر المميز لنيمو
TopBar.Name = "Nemo_TopBar"
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TopBar.Size = UDim2.new(1, 0, 0, 40)

local TopCorner = Instance.new("UICorner")
TopCorner.Parent = TopBar

Title.Name = "Nemo_Title"
Title.Parent = TopBar
Title.Text = "NEMO HUB | BLOX FRUITS"
Title.TextColor3 = Color3.fromRGB(0, 255, 150) -- لون نيمو الرسمي
Title.TextSize = 20
Title.Font = Enum.Font.GothamBold
Title.Size = UDim2.new(1, 0, 1, 0)
Title.Position = UDim2.new(0.03, 0, 0, 0)
Title.TextXAlignment = Enum.TextXAlignment.Left

-- القائمة الجانبية (Sidebar) للأقسام
LeftSideBar.Name = "Nemo_Sidebar"
LeftSideBar.Parent = MainFrame
LeftSideBar.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
LeftSideBar.Position = UDim2.new(0, 0, 0, 40)
LeftSideBar.Size = UDim2.new(0, 130, 1, -40)

TabHolder.Name = "Nemo_TabHolder"
TabHolder.Parent = LeftSideBar
TabHolder.BackgroundTransparency = 1
TabHolder.Size = UDim2.new(1, 0, 1, 0)
TabHolder.ScrollBarThickness = 2
TabHolder.CanvasSize = UDim2.new(0, 0, 1.5, 0)

UIListLayout.Parent = TabHolder
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- إطار المحتوى (Content) حيث سنضع الأزرار لاحقاً
ContentFrame.Name = "Nemo_Content"
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
ContentFrame.Position = UDim2.new(0, 135, 0, 45)
ContentFrame.Size = UDim2.new(0, 355, 0, 265)

local ContentCorner = Instance.new("UICorner")
ContentCorner.Parent = ContentFrame

-- وظيفة إنشاء الأقسام (Tabs) لتسهيل العمل
local function CreateNemoTab(name, icon)
    local TabBtn = Instance.new("TextButton")
    TabBtn.Name = name.."_Tab"
    TabBtn.Parent = TabHolder
    TabBtn.Size = UDim2.new(0.9, 0, 0, 35)
    TabBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    TabBtn.Text = name
    TabBtn.TextColor3 = Color3.new(1, 1, 1)
    TabBtn.Font = Enum.Font.GothamSemibold
    TabBtn.TextSize = 13
    
    local BtnCorner = Instance.new("UICorner")
    BtnCorner.Parent = TabBtn
    
    -- تأثير عند الضغط
    TabBtn.MouseButton1Click:Connect(function()
        print("Switched to "..name.." Tab in NEMO HUB")
    end)
end

-- إنشاء الأقسام الأساسية لنيمو هاب
CreateNemoTab("Main", "")
CreateNemoTab("Farming", "")
CreateNemoTab("Combat", "")
CreateNemoTab("Teleport", "")
CreateNemoTab("Settings", "")

-- إشعار الترحيب
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "NEMO HUB",
    Text = "Welcome, Abbas! UI Loaded.",
    Duration = 5
})
