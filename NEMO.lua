-- NEMO HUB | RAINBOW & BLACK EDITION
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_FINAL_DESIGN" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_FINAL_DESIGN"
ScreenGui.DisplayOrder = 1000

-- 1. القائمة الكبيرة الاحترافية
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 420, 0, 260)
Main.Position = UDim2.new(0.5, -210, 0.5, -130)
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20) -- أسود داكن فخم
Main.Visible = true -- تظهر فوراً
Main.Active = true
Main.Draggable = true

-- [ حواف القائمة متناسقة مع حواف الزر ]
local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim2.new(0, 12) -- حواف ناعمة ودائرية

-- [ إطار الـ Rainbow ]
local RainbowStroke = Instance.new("UIStroke", Main)
RainbowStroke.Thickness = 2.5
RainbowStroke.Color = Color3.fromHSV(0, 1, 1) -- اللون الابتدائي

-- برمجة تأثير Rainbow
RunService.RenderStepped:Connect(function()
    local h = tick() % 5 / 5 -- سرعة التغير
    RainbowStroke.Color = Color3.fromHSV(h, 1, 1)
end)

-- نص العنوان
local Title = Instance.new("TextLabel", Main)
Title.Size = UDim2.new(1, 0, 0, 45)
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.Text = "  NEMO HUB | by ABBAS (ABIS222)"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
local TitleCorner = Instance.new("UICorner", Title)
TitleCorner.CornerRadius = UDim2.new(0, 12)

-- 2. الزر العائم (المطور والمصغر)
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 50, 0, 50) -- [ تصغير مقاس الدائرة ]
Toggle.Position = UDim2.new(0.05, 0, 0.15, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- [ جعل الزر أسود ]
Toggle.Text = "NEMO" -- [ النص ]
Toggle.TextColor3 = Color3.fromRGB(0, 255, 0) -- [ جعل النص أخضر ]
Toggle.Font = Enum.Font.GothamBold
Toggle.TextSize = 14
Toggle.Draggable = true
Toggle.BorderSizePixel = 0

-- [ حواف الزر الدائرية ]
local ToggleCorner = Instance.new("UICorner", Toggle)
ToggleCorner.CornerRadius = UDim2.new(1, 0) -- دائرة كاملة

-- 3. برمجة الضغط (InputBegan) المضمونة لجهاز Oppo
Toggle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        Main.Visible = not Main.Visible
        -- تأثير بسيط عند الضغط (تكبير وتصغير)
        local tween = TweenService:Create(Toggle, TweenInfo.new(0.2), {Size = UDim2.new(0, 55, 0, 55)})
        tween:Play()
        tween.Completed:Connect(function()
            TweenService:Create(Toggle, TweenInfo.new(0.2), {Size = UDim2.new(0, 50, 0, 50)}):Play()
        end)
    end
end)
