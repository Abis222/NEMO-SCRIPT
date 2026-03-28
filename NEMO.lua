-- NEMO HUB | UNIFORM EDGES FIX
local CoreGui = game:GetService("CoreGui")

for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_PRO" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_PRO"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. الإطار الرئيسي (استخدام صورة لضمان مساواة الحواف)
local Main = Instance.new("ImageLabel", ScreenGui)
Main.Name = "MainFrame"
Main.Size = UDim2.new(0, 560, 0, 330) 
Main.Position = UDim2.new(0.5, -280, 0.5, -165)
Main.BackgroundTransparency = 1 
Main.Image = "rbxassetid://3570695787" -- صورة الحواف الدائرية المتساوية
Main.ImageColor3 = Color3.fromRGB(15, 15, 15)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100) -- ضمان توزيع الحواف بالتساوي
Main.ZIndex = 1
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- 2. نص العنوان (NEMO HUB)
local Title = Instance.new("TextLabel", Main)
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 200, 0, 40)
Title.Position = UDim2.new(0, 25, 0, 15) 
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0, 255, 0)
Title.TextSize = 20 
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 10

-- 3. الزر الدائري
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
    Main.Visible = not Main.Visible
end)
