-- NEMO HUB | FINAL ROUNDED FIX
local CoreGui = game:GetService("CoreGui")

-- تنظيف شامل
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_FINAL" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_FINAL"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global -- تغيير لضمان ظهور العناصر فوق بعضها

-- 1. القائمة الدائرية (نفس التي في صورتك)
local Main = Instance.new("Frame", ScreenGui)
Main.Name = "MainFrame"
Main.Size = UDim2.new(0, 420, 0, 260)
Main.Position = UDim2.new(0.5, -210, 0.5, -130)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Main.BorderSizePixel = 0
Main.ZIndex = 1 -- الطبقة الخلفية
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- سر الحواف الدائرية
local Corner = Instance.new("UICorner", Main)
Corner.CornerRadius = UDim2.new(0, 20)

-- 2. نص الحقوق (NEMO HUB) - أصلحنا ظهوره هنا
local Credits = Instance.new("TextLabel", Main)
Credits.Text = "NEMO HUB"
Credits.Size = UDim2.new(0, 200, 0, 50)
Credits.Position = UDim2.new(0, 20, 0, 10) 
Credits.BackgroundTransparency = 1
Credits.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع
Credits.TextSize = 24
Credits.Font = Enum.Font.GothamBold
Credits.ZIndex = 10 -- [مهم] رقم عالي ليظهر فوق السواد
Credits.Visible = true

-- 3. الزر الدائري (الذي يفتح ويغلق)
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 55, 0, 55)
Toggle.Position = UDim2.new(0.1, 0, 0.1, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- أصفر حالياً لنراه
Toggle.Text = "NEMO"
Toggle.ZIndex = 20 -- أعلى طبقة
Toggle.Draggable = true

local BtnCorner = Instance.new("UICorner", Toggle)
BtnCorner.CornerRadius = UDim2.new(1, 0)

-- برمجة الفتح والإغلاق
Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)
