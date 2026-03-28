-- NEMO HUB PRO V1.0 - YELLOW CIRCLE EDITION (FOR OPPO A18)
for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "NEMO_FINAL_HUB" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
ScreenGui.Name = "NEMO_FINAL_HUB"

-- 1. القائمة الكبيرة الاحترافية (المخفية في البداية)
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 480, 0, 300) -- مقاس كبير ومناسب مثل الصورة
MainFrame.Position = UDim2.new(0.5, -240, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- لون أسود فخم
MainFrame.Visible = false -- تكون مخفية حتى نضغط الزر
MainFrame.Active = true
MainFrame.Draggable = true -- اسحب القائمة من أي مكان
Instance.new("UICorner", MainFrame).CornerRadius = UDim2.new(0, 10) -- حواف ناعمة

-- عنوان القائمة (NEMO HUB by Abbas...)
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.Text = "  NEMO HUB V1.0 | by Abbas (ABIS222)"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UICorner", Title).CornerRadius = UDim2.new(0, 10)

-- منطقة محتوى القائمة (للخيارات)
local ContentFrame = Instance.new("Frame", MainFrame)
ContentFrame.Size = UDim2.new(1, -20, 1, -50)
ContentFrame.Position = UDim2.new(0, 10, 0, 45)
ContentFrame.BackgroundTransparency = 1

-- إضافة خيار Auto Farm داخل القائمة (للتجربة)
local FarmBtn = Instance.new("TextButton", ContentFrame)
FarmBtn.Size = UDim2.new(0, 180, 0, 40)
FarmBtn.Position = UDim2.new(0, 0, 0, 0)
FarmBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
FarmBtn.Text = "Auto Farm Level: [OFF]"
FarmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
FarmBtn.Font = Enum.Font.GothamSemibold
FarmBtn.TextSize = 13
Instance.new("UICorner", FarmBtn).CornerRadius = UDim2.new(0, 8)

-- 2. الزر العائم "NEMO" (الدائري الأصفر الصغير)
local ToggleBtn = Instance.new("TextButton", ScreenGui)
ToggleBtn.Size = UDim2.new(0, 60, 0, 60) -- مقاس دائري ومصغر
ToggleBtn.Position = UDim2.new(0.05, 0, 0.1, 0) -- مكان البداية
ToggleBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0) -- لون أصفر ذهبي فاقع جداً
ToggleBtn.Text = "NEMO" -- الكلمة مصغرة
ToggleBtn.TextColor3 = Color3.fromRGB(0, 0, 0) -- نص أسود ليكون واضحاً فوق الأصفر
ToggleBtn.Font = Enum.Font.GothamBold -- خط عريض وفخم
ToggleBtn.TextSize = 16
ToggleBtn.Draggable = true -- اسحب الزر بإصبعك في أي مكان
ToggleBtn.BorderSizePixel = 0

-- جعل الزر دائرياً تماماً
Instance.new("UICorner", ToggleBtn).CornerRadius = UDim2.new(1, 0)

-- 3. برمجة الضغط لفتح/إغلاق القائمة (هنا السر!)
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
    if MainFrame.Visible then
        ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- يتحول للأخضر عند فتح القائمة ليعطيك تنبيهاً
    else
        ToggleBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0) -- يعود للأصفر عند الإغلاق
    end
end)
