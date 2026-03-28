-- NEMO HUB | THE CLEAN RAINBOW EDITION (NEW ID)
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

-- [ 1. تنظيف شامل وعنيف لكل ما هو قديم ]
for _, child in pairs(CoreGui:GetChildren()) do
    if child:IsA("ScreenGui") and (child.Name:find("NEMO") or child.Name:find("HUB") or child.Name:find("FINAL")) then
        child:Destroy()
    end
end

-- [ 2. إنشاء الهوية الجديدة للسكربت ]
local NewNemo = Instance.new("ScreenGui", CoreGui)
NewNemo.Name = "NEMO_ULTRA_V1"
NewNemo.DisplayOrder = 999

-- [ 3. القائمة الرئيسية (إطار Rainbow وحواف دائرية) ]
local Main = Instance.new("Frame", NewNemo)
Main.Name = "MainFrame"
Main.Size = UDim2.new(0, 420, 0, 260)
Main.Position = UDim2.new(0.5, -210, 0.5, -130)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- أسود ملكي
Main.BorderSizePixel = 0
Main.Visible = true -- تظهر فوراً للتأكد من العمل
Main.Active = true
Main.Draggable = true

-- حواف دائرية مثل الزر تماماً
local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim2.new(0, 15)

-- إطار الـ Rainbow المتحرك
local UIStroke = Instance.new("UIStroke", Main)
UIStroke.Thickness = 3.5
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

RunService.RenderStepped:Connect(function()
    UIStroke.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
end)

-- [ 4. الزر العائم (أسود صغير، نص أخضر، حواف دائرية) ]
local ToggleBtn = Instance.new("TextButton", NewNemo)
ToggleBtn.Name = "NEMO_TOGGLE"
ToggleBtn.Size = UDim2.new(0, 50, 0, 50) -- مقاس مصغر
ToggleBtn.Position = UDim2.new(0.05, 0, 0.2, 0)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- أسود
ToggleBtn.Text = "NEMO"
ToggleBtn.TextColor3 = Color3.fromRGB(0, 255, 0) -- نص أخضر
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 12
ToggleBtn.Draggable = true

local BtnCorner = Instance.new("UICorner", ToggleBtn)
BtnCorner.CornerRadius = UDim2.new(1, 0) -- دائري تماماً

-- [ 5. برمجة اللمس المتعدد (لحل مشكلة عدم الاستجابة) ]
local function ToggleMenu()
    Main.Visible = not Main.Visible
end

ToggleBtn.MouseButton1Click:Connect(ToggleMenu)
ToggleBtn.TouchTap:Connect(ToggleMenu) -- دعم خاص لشاشة Oppo
