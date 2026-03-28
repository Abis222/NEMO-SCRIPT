-- حذف النسخة القديمة لضمان نظافة التشغيل
if game:GetService("CoreGui"):FindFirstChild("NEMO_HUB_PRO") then
    game:GetService("CoreGui"):FindFirstChild("NEMO_HUB_PRO"):Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner_Main = Instance.new("UICorner")
local UIBorder_Main = Instance.new("UIStroke")
local Header = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseBtn = Instance.new("TextButton")
local LeftSidebar = Instance.new("ScrollingFrame")
local ContentFrame = Instance.new("Frame")
local ToggleBtn = Instance.new("TextButton")

ScreenGui.Name = "NEMO_HUB_PRO"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- 1. الإطار الرئيسي (نفس أبعاد وشكل الصورة الثانية)
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 22) -- لون غامق فخم
MainFrame.Position = UDim2.new(0.3, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 520, 0, 320)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true -- قابلة للسحب

UICorner_Main.CornerRadius = UDim2.new(0, 10) -- حواف ناعمة
UICorner_Main.Parent = MainFrame

UIBorder_Main.Color = Color3.fromRGB(40, 40, 45) -- إطار رفيع جداً
UIBorder_Main.Thickness = 1
UIBorder_Main.Parent = MainFrame

-- 2. الهيدر (الجزء العلوي وفيه زر الإغلاق)
Header.Name = "Header"
Header.Parent = MainFrame
Header.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
Header.Size = UDim2.new(1, 0, 0, 35)
Header.BorderSizePixel = 0

local UICorner_Header = Instance.new("UICorner")
UICorner_Header.CornerRadius = UDIm2.new(0, 10)
UICorner_Header.Parent = Header

local HeaderHide = Instance.new("Frame") -- لإخفاء حواف الكورنر السفلية
HeaderHide.Parent = Header
HeaderHide.BackgroundColor3 = Header.BackgroundColor3
HeaderHide.Position = UDim2.new(0, 0, 0.5, 0)
HeaderHide.Size = UDim2.new(1, 0, 0.5, 0)
HeaderHide.BorderSizePixel = 0

Title.Name = "Title"
Title.Parent = Header
Title.Text = "NEMO HUB by Abbas (ABIS222)"
Title.TextColor3 = Color3.fromRGB(200, 200, 200)
Title.TextSize = 14
Title.Font = Enum.Font.Gotham
Title.Position = UDim2.new(0, 10, 0, 0)
Title.Size = UDim2.new(0, 250, 1, 0)
Title.TextXAlignment = Enum.TextXAlignment.Left

CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = Header
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 100, 100)
CloseBtn.TextSize = 18
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
CloseBtn.Position = UDim2.new(1, -30, 0, 5)
CloseBtn.Size = UDim2.new(0, 25, 0, 25)

local UICorner_Close = Instance.new("UICorner")
UICorner_Close.CornerRadius = UDim2.new(0, 5)
UICorner_Close.Parent = CloseBtn

-- 3. القائمة الجانبية (Left Sidebar) مع الأيقونات
LeftSidebar.Name = "LeftSidebar"
LeftSidebar.Parent = MainFrame
LeftSidebar.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
LeftSidebar.Position = UDim2.new(0, 5, 0, 40)
LeftSidebar.Size = UDim2.new(0, 140, 1, -45)
LeftSidebar.CanvasSize = UDim2.new(0, 0, 1.2, 0) -- قابلة للتمرير
LeftSidebar.ScrollBarThickness = 2
LeftSidebar.BorderSizePixel = 0

local UIList_Sidebar = Instance.new("UIListLayout")
UIList_Sidebar.Parent = LeftSidebar
UIList_Sidebar.Padding = UDim2.new(0, 5)
UIList_Sidebar.SortOrder = Enum.SortOrder.LayoutOrder

-- وظيفة لإنشاء أزرار القائمة (Tab Buttons) بنفس شكل الصورة الثانية
local function CreateTab(name, iconId, order)
    local TabBtn = Instance.new("TextButton")
    local TabIcon = Instance.new("ImageLabel")
    local TabLabel = Instance.new("TextLabel")

    TabBtn.Name = name .. "_Tab"
    TabBtn.Parent = LeftSidebar
    TabBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
    TabBtn.Size = UDIm2.new(0.95, 0, 0, 32)
    TabBtn.Text = ""
    TabBtn.LayoutOrder = order

    local UICorner_Tab = Instance.new("UICorner")
    UICorner_Tab.CornerRadius = UDim2.new(0, 6)
    UICorner_Tab.Parent = TabBtn

    TabIcon.Parent = TabBtn
    TabIcon.BackgroundTransparency = 1
    TabIcon.Position = UDIm2.new(0, 8, 0.5, -9)
    TabIcon.Size = UDim2.new(0, 18, 0, 18)
    TabIcon.Image = "rbxassetid://" .. iconId
    TabIcon.ImageColor3 = Color3.fromRGB(150, 150, 150) -- لون الأيقونة غير النشطة

    TabLabel.Parent = TabBtn
    TabLabel.BackgroundTransparency = 1
    TabLabel.Position = UDIm2.new(0, 35, 0, 0)
    TabLabel.Size = UDim2.new(1, -35, 1, 0)
    TabLabel.Text = name
    TabLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
    TabLabel.TextSize = 13
    TabLabel.Font = Enum.Font.Gotham
    TabLabel.TextXAlignment = Enum.TextXAlignment.Left

    return TabBtn, TabLabel, TabIcon
end

-- إنشاء الأزرار (نفس ترتيب الصورة الثانية)
local MainTab, MainLabel, MainIcon = CreateTab("Main", "10734950309", 1) -- أيقونة الإعدادات
local SkillTab, SkillLabel, SkillIcon = CreateTab("Skill", "10734950309", 2)
local AutoFarmTab, AutoFarmLabel, AutoFarmIcon = CreateTab("Auto Farm", "10747374020", 3) -- أيقونة الزراعة
local TeleportTab, TeleportLabel, TeleportIcon = CreateTab("Teleport", "10747372992", 4) -- أيقونة الخريطة
local QuestTab, QuestLabel, QuestIcon = CreateTab("Quest", "10747373302", 5) -- أيقونة المهمة

-- تمييز الزر النشط (مثلاً Main)
MainTab.BackgroundColor3 = Color3.fromRGB(0, 100, 200) -- أزرق نشط
MainLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MainIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)

-- 4. إطار المحتوى (Content Frame)
ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
ContentFrame.Position = UDim2.new(0, 150, 0, 40)
ContentFrame.Size = UDim2.new(1, -155, 1, -45)
ContentFrame.BorderSizePixel = 0

local UICorner_Content = Instance.new("UICorner")
UICorner_Content.CornerRadius = UDim2.new(0, 8)
UICorner_Content.Parent = ContentFrame

local ContentLabel = Instance.new("TextLabel")
ContentLabel.Parent = ContentFrame
ContentLabel.Text = "Welcome to NEMO HUB!\nMore features coming soon..."
ContentLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
ContentLabel.TextSize = 14
ContentLabel.Font = Enum.Font.Gotham
ContentLabel.Size = UDim2.new(1, 0, 1, 0)
ContentLabel.Position = UDIm2.new(0,0,0,0)
ContentLabel.BackgroundTransparency = 1

-- 5. الزر العائم "NO" (الدائري الأحمر)
ToggleBtn.Name = "NO"
ToggleBtn.Parent = ScreenGui
ToggleBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ToggleBtn.Position = UDim2.new(0.05, 0, 0.15, 0)
ToggleBtn.Size = UDIm2.new(0, 50, 0, 50)
ToggleBtn.Text = "NO"
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 20
ToggleBtn.Draggable = true

local UICorner_Toggle = Instance.new("UICorner")
UICorner_Toggle.CornerRadius = UDim2.new(1, 0) -- دائري تماماً
UICorner_Toggle.Parent = ToggleBtn

-- وظائف الأزرار
CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
