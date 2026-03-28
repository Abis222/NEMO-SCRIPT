-- تغيير اسم التعريف لكسر التخزين القديم
if _G.NEMO_LOADED then
    local old = game:GetService("CoreGui"):FindFirstChild("NEMO_FINAL_UI")
    if old then old:Destroy() end
end
_G.NEMO_LOADED = true

local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
ScreenGui.Name = "NEMO_FINAL_UI"

-- القائمة الرئيسية (تصميم الصورة الثانية)
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 520, 0, 320)
MainFrame.Position = UDim2.new(0.3, 0, 0.25, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 22)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame).CornerRadius = UDim2.new(0, 10)

-- الهيدر العلوي
local Header = Instance.new("Frame", MainFrame)
Header.Size = UDim2.new(1, 0, 0, 35)
Header.BackgroundColor3 = Color3.fromRGB(28, 28, 30)
Header.BorderSizePixel = 0
Instance.new("UICorner", Header).CornerRadius = UDim2.new(0, 10)

local Title = Instance.new("TextLabel", Header)
Title.Text = "NEMO HUB by Abbas (ABIS222)"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Size = UDim2.new(1, -50, 1, 0)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.BackgroundTransparency = 1
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14

-- القائمة الجانبية (نفس أزرار الصورة الثانية)
local SideBar = Instance.new("ScrollingFrame", MainFrame)
SideBar.Size = UDim2.new(0, 130, 1, -45)
SideBar.Position = UDim2.new(0, 8, 0, 40)
SideBar.BackgroundColor3 = Color3.fromRGB(15, 15, 17)
SideBar.BorderSizePixel = 0
SideBar.ScrollBarThickness = 0
Instance.new("UICorner", SideBar)

local Layout = Instance.new("UIListLayout", SideBar)
Layout.Padding = UDim2.new(0, 6)
Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- وظيفة إنشاء الأزرار الفخمة
local function AddTab(name, isActive)
    local btn = Instance.new("TextButton", SideBar)
    btn.Size = UDim2.new(0.9, 0, 0, 32)
    btn.Text = "  " .. name
    btn.Font = Enum.Font.GothamSemibold
    btn.TextSize = 13
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.BackgroundColor3 = isActive and Color3.fromRGB(0, 120, 255) or Color3.fromRGB(25, 25, 27)
    btn.TextColor3 = isActive and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(180, 180, 180)
    Instance.new("UICorner", btn).CornerRadius = UDim2.new(0, 6)
    return btn
end

-- إضافة الأقسام بالترتيب
AddTab("Main", true)
AddTab("Skill", false)
AddTab("Auto Farm", false)
AddTab("Teleport", false)
AddTab("Quest", false)
AddTab("Status", false)

-- الزر العائم "NO" (الدائري الأحمر)
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 50, 0, 50)
Toggle.Position = UDim2.new(0.05, 0, 0.15, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Toggle.Text = "NO"
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.Font = Enum.Font.GothamBold
Toggle.TextSize = 18
Toggle.Draggable = true
Instance.new("UICorner", Toggle).CornerRadius = UDim2.new(1, 0)

Toggle.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
