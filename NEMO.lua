-- NEMO HUB | ULTIMATE TOUCH REPAIR
local CoreGui = game:GetService("CoreGui")
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_REPAIR" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_REPAIR"
ScreenGui.DisplayOrder = 1000

-- 1. القائمة الكبيرة (تظهر فوراً)
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 420, 0, 260)
Main.Position = UDim2.new(0.5, -210, 0.5, -130)
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.BorderSizePixel = 3
Main.BorderColor3 = Color3.fromRGB(255, 215, 0) -- إطار أصفر ذهبي
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- 2. الزر الأصفر (حساس اللمس المطور)
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 65, 0, 65)
Toggle.Position = UDim2.new(0.05, 0, 0.15, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Toggle.Text = "NEMO"
Toggle.Font = Enum.Font.GothamBold
Toggle.TextColor3 = Color3.fromRGB(0,0,0)
Toggle.Draggable = true
Instance.new("UICorner", Toggle).CornerRadius = UDim2.new(1, 0)

-- [ السر هنا ] استخدام InputBegan بدلاً من Click
Toggle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        Main.Visible = not Main.Visible
        print("تم اللمس بنجاح!")
    end
end)
