-- NEMO HUB | ULTIMATE ROUNDED FIX (ASSET METHOD)
local CoreGui = game:GetService("CoreGui")

for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_PRO" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_PRO"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. الإطار الرئيسي (باستخدام صورة حواف دائرية جاهزة)
local Main = Instance.new("ImageLabel", ScreenGui)
Main.Name = "MainFrame"
Main.Size = UDim2.new(0, 550, 0, 320)
Main.Position = UDim2.new(0.5, -275, 0.5, -160)
Main.BackgroundTransparency = 1 -- نجعل الخلفية البرمجية شفافة
Main.Image = "rbxassetid://3570695787" -- معرف صورة حواف دائرية احترافية
Main.ImageColor3 = Color3.fromRGB(15, 15, 15) -- تلوين الصورة بالأسود
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.ZIndex = 1
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- 2. نص الحقوق (NEMO HUB by Abbas)
local Credits = Instance.new("TextLabel", Main)
Credits.Text = "NEMO HUB by Abbas (ABIS222)"
Credits.Size = UDim2.new(0, 300, 0, 30)
Credits.Position = UDim2.new(0, 20, 0, 15) 
Credits.BackgroundTransparency = 1
Credits.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر
Credits.TextSize = 18
Credits.Font = Enum.Font.GothamBold
Credits.ZIndex = 10

-- 3. الزر الدائري (باستخدام صورة دائرة جاهزة)
local Toggle = Instance.new("ImageButton", ScreenGui)
Toggle.Name = "NemoToggle"
Toggle.Size = UDim2.new(0, 60, 0, 60)
Toggle.Position = UDim2.new(0.05, 0, 0.15, 0)
Toggle.BackgroundTransparency = 1
Toggle.Image = "rbxassetid://6031068433" -- صورة دائرة كاملة 100%
Toggle.ImageColor3 = Color3.fromRGB(20, 20, 20)
Toggle.ZIndex = 50
Toggle.Draggable = true

-- نص داخل الزر
local ToggleText = Instance.new("TextLabel", Toggle)
ToggleText.Text = "NEMO"
ToggleText.Size = UDim2.new(1, 0, 1, 0)
ToggleText.BackgroundTransparency = 1
ToggleText.TextColor3 = Color3.fromRGB(0, 255, 0)
ToggleText.Font = Enum.Font.GothamBold
ToggleText.TextSize = 12
ToggleText.ZIndex = 51

-- برمجة الفتح والإغلاق
Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)
