-- NEMO HUB | THE RETURN OF THE TOGGLE BUTTON
local CoreGui = game:GetService("CoreGui")

-- تنظيف النسخ القديمة لضمان عدم التداخل
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_ULTIMATE" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_ULTIMATE"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. القائمة الأساسية (الهيكل الثابت الذي نجحنا في تثبيته)
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
MainFrame.ZIndex = 5
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true

-- العنوان وقسم Main
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
SideBar.Size = UDim2.new(0, 130, 0, 250)
SideBar.Position = UDim2.new(0, 15, 0, 60)
SideBar.BackgroundTransparency = 1

local MainBtn = Instance.new("TextButton", SideBar)
MainBtn.Size = UDim2.new(1, 0, 0, 40)
MainBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainBtn.Text = "Main"
MainBtn.TextColor3 = Color3.fromRGB(0, 255, 0)
MainBtn.Font = Enum.Font.GothamBold
MainBtn.TextSize = 16
MainBtn.ZIndex = 7
Instance.new("UICorner", MainBtn).CornerRadius = UDim2.new(0, 8)

----------------------------------------------------------------------
-- [ الجزء المطلوب: إعادة زر NEMO الشفاف والمتحرك ]
----------------------------------------------------------------------
local Toggle = Instance.new("ImageButton", ScreenGui)
Toggle.Name = "NemoToggle"
-- وضعت الزر في مكان واضح لكي تراه فوراً (يمكنك سحبه لمكانه المفضل)
Toggle.Position = UDim2.new(0, 100, 0, 100) 
Toggle.Size = UDim2.new(0, 60, 0, 60)
Toggle.BackgroundTransparency = 0.4 -- شفافية كما في النسخة القديمة
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Image = "rbxassetid://6031068433" 
Toggle.ImageColor3 = Color3.fromRGB(30, 30, 30)
Toggle.ZIndex = 100 -- ضمان الظهور فوق القائمة السوداء
Toggle.Draggable = true -- قابل للسحب لتضعه في المكان الذي حددته بالصورة

local ToggleCorner = Instance.new("UICorner", Toggle)
ToggleCorner.CornerRadius = UDim2.new(1, 0)

local ToggleText = Instance.new("TextLabel", Toggle)
ToggleText.Text = "NEMO"
ToggleText.Size = UDim2.new(1, 0, 1, 0)
ToggleText.BackgroundTransparency = 1
ToggleText.TextColor3 = Color3.fromRGB(0, 255, 0)
ToggleText.Font = Enum.Font.GothamBold
ToggleText.TextSize = 12
ToggleText.ZIndex = 101

-- وظيفة الإخفاء والإظهار
Toggle.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
