-- تنظيف الشاشة لضمان التشغيل
if game:GetService("CoreGui"):FindFirstChild("NEMO_FINAL_HUB") then
    game:GetService("CoreGui"):FindFirstChild("NEMO_FINAL_HUB"):Destroy()
end

local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
ScreenGui.Name = "NEMO_FINAL_HUB"

-- 1. الإطار الرئيسي (تصميم فخم وواضح)
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 480, 0, 300)
Main.Position = UDim2.new(0.5, -240, 0.5, -150)
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 45) -- لون رمادي غامق وواضح
Main.BorderSizePixel = 2
Main.BorderColor3 = Color3.fromRGB(0, 150, 255) -- إطار أزرق أنيق
Main.Active = true
Main.Draggable = true
Instance.new("UICorner", Main).CornerRadius = UDim2.new(0, 10)

-- 2. العنوان (Header)
local Header = Instance.new("TextLabel", Main)
Header.Size = UDim2.new(1, 0, 0, 45)
Header.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
Header.Text = "  NEMO HUB | VERSION 1.0 (PRO)"
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.Font = Enum.Font.GothamBold
Header.TextSize = 16
Header.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UICorner", Header).CornerRadius = UDim2.new(0, 10)

-- 3. منطقة الأزرار (Buttons Area)
local ButtonArea = Instance.new("ScrollingFrame", Main)
ButtonArea.Size = UDim2.new(1, -20, 1, -60)
ButtonArea.Position = UDim2.new(0, 10, 0, 55)
ButtonArea.BackgroundTransparency = 1
ButtonArea.ScrollBarThickness = 2

local Layout = Instance.new("UIListLayout", ButtonArea)
Layout.Padding = UDim2.new(0, 8)

-- وظيفة إنشاء الأزرار
local function CreateBtn(name, callback)
    local btn = Instance.new("TextButton", ButtonArea)
    btn.Size = UDim2.new(1, 0, 0, 40)
    btn.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextSize = 14
    Instance.new("UICorner", btn).CornerRadius = UDim2.new(0, 6)
    btn.MouseButton1Click:Connect(callback)
    return btn
end

-- 4. أزرار السكربت (Main Features)
CreateBtn("Auto Farm (Level 1-100)", function()
    print("Auto Farm Started!")
    -- هنا سنضع كود الـ Auto Farm الفعلي غداً
end)

CreateBtn("Auto Stats (Melee/Defense)", function()
    print("Auto Stats Active!")
end)

CreateBtn("Teleport to Quest", function()
    print("Teleporting...")
end)

-- 5. الزر العائم "NO" (الأحمر الدائري)
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 60, 0, 60)
Toggle.Position = UDim2.new(0.05, 0, 0.2, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Toggle.Text = "NO"
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.Font = Enum.Font.GothamBold
Toggle.TextSize = 25
Instance.new("UICorner", Toggle).CornerRadius = UDim2.new(1, 0)

Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)
