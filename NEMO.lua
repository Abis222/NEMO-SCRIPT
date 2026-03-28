-- NEMO HUB | RAINBOW CLEAN EDITION
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

-- [ خطوة التنظيف: مسح أي قائمة قديمة لمنع التداخل ]
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_FINAL_DESIGN" or v:FindFirstChild("MainFrame") or v.Name == "NEMO_FORCE" then 
        v:Destroy() 
    end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_FINAL_DESIGN"
ScreenGui.DisplayOrder = 1000

-- 1. القائمة الكبيرة (خلفية سوداء فخمة وإطار ملون)
local Main = Instance.new("Frame", ScreenGui)
Main.Name = "MainFrame"
Main.Size = UDim2.new(0, 420, 0, 260)
Main.Position = UDim2.new(0.5, -210, 0.5, -130)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- أسود أعمق
Main.Visible = true
Main.Active = true
Main.Draggable = true

-- [ حواف دائرية للقائمة ]
local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim2.new(0, 15)

-- [ إطار الـ Rainbow الملون ]
local RainbowStroke = Instance.new("UIStroke", Main)
RainbowStroke.Thickness = 3
RainbowStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- برمجة ألوان قوس قزح للإطار
RunService.RenderStepped:Connect(function()
    local h = tick() % 5 / 5
    RainbowStroke.Color = Color3.fromHSV(h, 1, 1)
end)

-- 2. الزر العائم (أسود صغير، نص أخضر، حواف دائرية)
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 50, 0, 50) -- مصغر جداً وأنيق
Toggle.Position = UDim2.new(0.05, 0, 0.15, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- أسود
Toggle.Text = "NEMO"
Toggle.TextColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع
Toggle.Font = Enum.Font.GothamBold
Toggle.TextSize = 12
Toggle.Draggable = true

local ToggleCorner = Instance.new("UICorner", Toggle)
ToggleCorner.CornerRadius = UDim2.new(1, 0) -- دائري تماماً مثل القائمة

-- 3. برمجة اللمس المضمونة (استجابة فورية)
Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)

-- دعم إضافي للمس الشاشة في Oppo
Toggle.TouchTap:Connect(function()
    Main.Visible = not Main.Visible
end)
