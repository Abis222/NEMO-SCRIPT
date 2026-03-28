-- NEMO HUB PRO | REPAIR EDITION
local CoreGui = game:GetService("CoreGui")
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_FINAL" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_FINAL"
ScreenGui.DisplayOrder = 999 -- يجعلها فوق كل شيء في الشاشة

-- 1. القائمة الكبيرة (المخفية)
local Main = Instance.new("Frame", ScreenGui)
Main.Name = "MainFrame"
Main.Size = UDim2.new(0, 400, 0, 250)
Main.Position = UDim2.new(0.5, -200, 0.5, -125)
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.BorderSizePixel = 2
Main.BorderColor3 = Color3.fromRGB(255, 255, 0) -- إطار أصفر لكي تظهر بوضوح
Main.Visible = false
Main.Active = true
Main.Draggable = true
Main.ZIndex = 5 -- ترتيب الطبقة (عالي جداً)

local T = Instance.new("TextLabel", Main)
T.Size = UDim2.new(1, 0, 0, 40)
T.Text = "NEMO HUB - READY FOR FARM"
T.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
T.TextColor3 = Color3.fromRGB(255, 255, 255)
T.ZIndex = 6

-- 2. الزر الأصفر العائم
local Btn = Instance.new("TextButton", ScreenGui)
Btn.Size = UDim2.new(0, 65, 0, 65)
Btn.Position = UDim2.new(0.1, 0, 0.1, 0)
Btn.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Btn.Text = "NEMO"
Btn.TextColor3 = Color3.fromRGB(0, 0, 0)
Btn.Font = Enum.Font.GothamBold
Btn.TextSize = 16
Btn.Draggable = true
Btn.ZIndex = 10 -- الزر دائماً فوق

local Corner = Instance.new("UICorner", Btn)
Corner.CornerRadius = UDim2.new(1, 0)

-- 3. برمجة الضغط (استخدام طريقتين للتأكيد)
Btn.Activated:Connect(function()
    Main.Visible = not Main.Visible
    print("Nemo Menu Toggled: " .. tostring(Main.Visible))
end)

-- طريقة إضافية للضغط احتياطاً
Btn.MouseButton1Click:Connect(function()
    if Main.Visible == false then
        Main.Visible = true
    else
        Main.Visible = false
    end
end)
