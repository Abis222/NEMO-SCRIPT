-- NEMO HUB | FINAL STABLE CORE WITH TRANSPARENT TOGGLE
local CoreGui = game:GetService("CoreGui")

-- تنظيف أي نسخ قديمة لضمان عدم حدوث تعليق
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_ULTIMATE" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_ULTIMATE"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. القائمة الأساسية (المستطيلة المتناسقة)
local MainFrame = Instance.new("ImageLabel", ScreenGui)
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 560, 0, 330) 
MainFrame.Position = UDim2.new(0.5, -280, 0.5, -165)
MainFrame.BackgroundTransparency = 1 
MainFrame.Image = "rbxassetid://3570695787"
MainFrame.ImageColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.ScaleType = Enum.ScaleType.Slice
MainFrame.SliceCenter = Rect.new(100, 100, 100, 100)
MainFrame.SliceScale = 0.12
MainFrame.ZIndex = 5 -- طبقة القائمة
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true

-- العنوان وقسم Main (الإضافات السابقة)
local Title = Instance.new("TextLabel", MainFrame)
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 200, 0, 40)
Title.Position = UDim2.new(0, 25, 0, 10) 
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0, 255, 0)
Title.TextSize = 20 
Title.Font = Enum.Font.GothamBold
Title.ZIndex = 6

local SideBar = Instance.new("Frame", MainFrame)
SideBar.Name = "SideBar"
SideBar.Size = UDim2.new(0, 130, 0, 250)
SideBar.Position = UDim2.new(0, 15, 0, 60)
SideBar.BackgroundTransparency = 1

local MainBtn = Instance.new("TextButton", SideBar)
MainBtn.Name = "MainButton"
MainBtn.Size = UDim2.new(1, 0, 0, 40)
MainBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainBtn.Text = "Main"
MainBtn.TextColor3 = Color3.fromRGB(0, 255, 0)
MainBtn.Font = Enum.Font.GothamBold
MainBtn.TextSize = 16
MainBtn.ZIndex = 7
Instance.new("UICorner", MainBtn).CornerRadius = UDim2.new(0, 8)

----------------------------------------------------------------------
-- [ الجزء الأهم: الزر الشفاف في المكان الذي حددته ]
----------------------------------------------------------------------
local Toggle = Instance.new("ImageButton", ScreenGui)
Toggle.Name = "NemoToggle"
-- [ وضع الزر في المكان الذي حددته بالدائرة السوداء في الصورة ]
Toggle.Position = UDim2.new(0, 95, 0, 65) 
Toggle.Size = UDim2.new(0, 50, 0, 50)
Toggle.BackgroundTransparency = 0.5 -- شفافية متوسطة كما طلبت
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Image = "rbxassetid://6031068433" -- صورة دائرة
Toggle.ImageColor3 = Color3.fromRGB(20, 20, 20)
Toggle.ZIndex = 100 -- ضمان البقاء فوق كل شيء
Toggle.Draggable = true

local ToggleCorner = Instance.new("UICorner", Toggle)
ToggleCorner.CornerRadius = UDim2.new(1, 0)

local ToggleText = Instance.new("TextLabel", Toggle)
ToggleText.Text = "NEMO"
ToggleText.Size = UDim2.new(1, 0, 1, 0)
ToggleText.BackgroundTransparency = 1
ToggleText.TextColor3 = Color3.fromRGB(0, 255, 0)
ToggleText.Font = Enum.Font.GothamBold
ToggleText.TextSize = 10
ToggleText.ZIndex = 101

-- برمجة الفتح والإغلاق
Toggle.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
