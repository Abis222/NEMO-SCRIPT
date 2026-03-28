local CoreGui = game:GetService("CoreGui")

-- حذف النسخ القديمة لضمان نظافة التشغيل
if CoreGui:FindFirstChild("NEMO_FINAL_FIX") then
    CoreGui.NEMO_FINAL_FIX:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NEMO_FINAL_FIX"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- 1. القائمة السوداء (MainFrame)
local MainFrame = Instance.new("ImageLabel")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 560, 0, 330)
MainFrame.Position = UDim2.new(0.5, -280, 0.5, -165)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BackgroundTransparency = 0 -- جعلتها سوداء تماماً للتأكد من الرؤية
MainFrame.BorderSizePixel = 0
MainFrame.Visible = true -- تظهر فوراً
MainFrame.Active = true
MainFrame.Draggable = true

-- نص العنوان
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Position = UDim2.new(0, 20, 0, 10)
Title.TextColor3 = Color3.fromRGB(0, 255, 0)
Title.BackgroundTransparency = 1
Title.TextSize = 25
Title.Font = Enum.Font.GothamBold

---------------------------------------------------------
-- 2. الزر (NEMO) - هذا هو الزر الذي يجب أن يظهر
---------------------------------------------------------
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "NemoButton"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Size = UDim2.new(0, 70, 0, 70)
-- وضعت الزر في أعلى اليسار بوضوح تام
ToggleBtn.Position = UDim2.new(0, 20, 0, 20) 
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- أخضر فاقع لكي تراه فوراً
ToggleBtn.Text = "NEMO"
ToggleBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 16
ToggleBtn.ZIndex = 10000 -- أعلى قيمة ممكنة
ToggleBtn.Active = true
ToggleBtn.Draggable = true

-- وظيفة الإخفاء والإظهار
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
