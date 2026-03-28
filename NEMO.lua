-- NEMO HUB | FORCE VISIBLE EDITION
local CoreGui = game:GetService("CoreGui")
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_FORCE" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_FORCE"
ScreenGui.DisplayOrder = 1000 -- أعلى طبقة ممكنة

-- 1. القائمة الكبيرة (ستكون ظاهرة فوراً Visible = true)
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 420, 0, 260)
Main.Position = UDim2.new(0.5, -210, 0.5, -130)
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.BorderSizePixel = 3
Main.BorderColor3 = Color3.fromRGB(0, 255, 255) -- إطار أزرق فوسفوري لكسر السواد
Main.Visible = true -- <<< لاحظ هنا: جعلناها تعمل فوراً
Main.Active = true
Main.Draggable = true

-- نص العنوان
local Title = Instance.new("TextLabel", Main)
Title.Size = UDim2.new(1, 0, 0, 45)
Title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Title.Text = "NEMO HUB PRO | BY ABBAS"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold

-- 2. الزر الأصفر (لإخفاء وإظهار القائمة لاحقاً)
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 60, 0, 60)
Toggle.Position = UDim2.new(0.05, 0, 0.15, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Toggle.Text = "NEMO"
Toggle.Font = Enum.Font.GothamBold
Toggle.Draggable = true
Instance.new("UICorner", Toggle).CornerRadius = UDim2.new(1, 0)

-- برمجة الزر (تبديل الحالة)
Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)
