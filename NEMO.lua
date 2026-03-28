-- NEMO HUB - THE INVISIBLE EDITION (OPPO FIX)
for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "NEMO_PRO_UI" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
ScreenGui.Name = "NEMO_PRO_UI"

-- وظيفة ذكية لإنشاء أزرار "طائرة" بتصميم نينجا
local function CreateNemoBtn(name, pos, color, callback)
    local btn = Instance.new("TextButton", ScreenGui)
    btn.Size = UDim2.new(0, 180, 0, 45)
    btn.Position = pos
    btn.BackgroundColor3 = color or Color3.fromRGB(0, 120, 255)
    btn.Text = "  " .. name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 14
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.Draggable = true -- يمكنك ترتيب الأزرار بيدك على الشاشة
    
    local Corner = Instance.new("UICorner", btn)
    Corner.CornerRadius = UDim2.new(0, 8)
    
    -- إضافة إطار مضيء ليكون الشكل فخماً
    local Stroke = Instance.new("UIStroke", btn)
    Stroke.Color = Color3.fromRGB(255, 255, 255)
    Stroke.Thickness = 1.5
    Stroke.Transparency = 0.5

    btn.MouseButton1Click:Connect(callback)
    return btn
end

-- 1. زر العنوان (NEMO HUB)
CreateNemoBtn("NEMO HUB V1", UDim2.new(0.05, 0, 0.1, 0), Color3.fromRGB(20, 20, 20), function()
    print("Nemo Hub is active!")
end)

-- 2. زر الـ Auto Farm
CreateNemoBtn("AUTO FARM [OFF]", UDim2.new(0.05, 0, 0.18, 0), Color3.fromRGB(0, 180, 0), function()
    -- غداً سنضيف الكود هنا يا عباس
end)

-- 3. زر الـ Stats
CreateNemoBtn("UPGRADE STATS", UDim2.new(0.05, 0, 0.26, 0), Color3.fromRGB(150, 0, 255), function()
    print("Stats upgrading...")
end)

-- 4. زر الإخفاء (للتخلص من الأزرار عند اللعب)
local Close = CreateNemoBtn("HIDE SCRIPT", UDim2.new(0.05, 0, 0.34, 0), Color3.fromRGB(255, 0, 0), function()
    ScreenGui.Enabled = not ScreenGui.Enabled
end)
