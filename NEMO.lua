-- تنظيف شامل لكل المحاولات الفاشلة
for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "NEMO_EMERGENCY" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
ScreenGui.Name = "NEMO_EMERGENCY"

-- 1. القائمة الكبيرة (مخفية تماماً في البداية)
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 400, 0, 250)
Main.Position = UDim2.new(0.5, -200, 0.5, -125)
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.Visible = false -- لن تظهر إلا عند الضغط
Main.Active = true
Main.Draggable = true -- لكي تحركها بيدك

-- عنوان بسيط داخل القائمة
local T = Instance.new("TextLabel", Main)
T.Size = UDim2.new(1, 0, 0, 40)
T.Text = "NEMO HUB ACTIVE"
T.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
T.TextColor3 = Color3.fromRGB(255, 255, 255)

-- 2. الدائرة الصفراء "NEMO" (الأمل الأخير)
local Btn = Instance.new("TextButton", ScreenGui)
Btn.Size = UDim2.new(0, 70, 0, 70) -- حجم واضح
Btn.Position = UDim2.new(0.1, 0, 0.1, 0)
Btn.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- أصفر فاقع جداً
Btn.Text = "NEMO"
Btn.TextColor3 = Color3.fromRGB(0, 0, 0)
Btn.Font = Enum.Font.SourceSansBold
Btn.TextSize = 20
Btn.Draggable = true

-- جعلها دائرية فوراً
local Corner = Instance.new("UICorner", Btn)
Corner.CornerRadius = UDim2.new(1, 0)

-- وظيفة الفتح والإغلاق البسيطة
Btn.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
    print("Toggle Clicked!")
end)
