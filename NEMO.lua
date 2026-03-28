-- NEMO HUB | ADDING MAIN SECTION & FARM UI
local CoreGui = game:GetService("CoreGui")

for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_PRO" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_PRO"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. القائمة الأساسية (الهيكل الثابت)
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
MainFrame.ZIndex = 1
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true

-- 2. العنوان (NEMO HUB)
local Title = Instance.new("TextLabel", MainFrame)
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 200, 0, 40)
Title.Position = UDim2.new(0, 25, 0, 10) 
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0, 255, 0)
Title.TextSize = 20 
Title.Font = Enum.Font.GothamBold
Title.ZIndex = 10

-- 3. اللوحة الجانبية للأزرار (Side Bar)
local SideBar = Instance.new("Frame", MainFrame)
SideBar.Name = "SideBar"
SideBar.Size = UDim2.new(0, 130, 0, 250)
SideBar.Position = UDim2.new(0, 15, 0, 60)
SideBar.BackgroundTransparency = 1 -- شفافة لتبدو من ضمن التصميم

-- زر "Main" في القائمة الجانبية
local MainBtn = Instance.new("TextButton", SideBar)
MainBtn.Name = "MainButton"
MainBtn.Size = UDim2.new(1, 0, 0, 40)
MainBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainBtn.Text = "Main"
MainBtn.TextColor3 = Color3.fromRGB(0, 255, 0)
MainBtn.Font = Enum.Font.GothamBold
MainBtn.TextSize = 16
MainBtn.ZIndex = 15

local BtnCorner = Instance.new("UICorner", MainBtn)
BtnCorner.CornerRadius = UDim2.new(0, 8)

-- 4. منطقة المحتوى (Content Area) - هنا ستظهر أزرار الفارم
local ContentFrame = Instance.new("ScrollingFrame", MainFrame)
ContentFrame.Name = "ContentFrame"
ContentFrame.Size = UDim2.new(0, 380, 0, 240)
ContentFrame.Position = UDim2.new(0, 160, 0, 65)
ContentFrame.BackgroundTransparency = 1
ContentFrame.ScrollBarThickness = 2
ContentFrame.CanvasSize = UDim2.new(0, 0, 1.5, 0) -- قابلة للنزول

-- نص تجريبي للفارم داخل المنطقة
local FarmTitle = Instance.new("TextLabel", ContentFrame)
FarmTitle.Text = "Blox Fruits Farm"
FarmTitle.Size = UDim2.new(1, 0, 0, 30)
FarmTitle.BackgroundTransparency = 1
FarmTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
FarmTitle.TextSize = 18
FarmTitle.Font = Enum.Font.GothamBold
FarmTitle.TextXAlignment = Enum.TextXAlignment.Left

-- 5. الزر الدائري (NEMO) للفتح والإغلاق
local Toggle = Instance.new("ImageButton", ScreenGui)
Toggle.Name = "NemoToggle"
Toggle.Size = UDim2.new(0, 60, 0, 60)
Toggle.Position = UDim2.new(0.05, 0, 0.15, 0)
Toggle.BackgroundTransparency = 1
Toggle.Image = "rbxassetid://6031068433" 
Toggle.ImageColor3 = Color3.fromRGB(20, 20, 20)
Toggle.ZIndex = 50
Toggle.Draggable = true

local ToggleText = Instance.new("TextLabel", Toggle)
ToggleText.Text = "NEMO"
ToggleText.Size = UDim2.new(1, 0, 1, 0)
ToggleText.BackgroundTransparency = 1
ToggleText.TextColor3 = Color3.fromRGB(0, 255, 0)
ToggleText.Font = Enum.Font.GothamBold
ToggleText.TextSize = 12
ToggleText.ZIndex = 51

Toggle.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
