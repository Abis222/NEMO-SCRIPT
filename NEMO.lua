-- Al-Kaabi 313 Ultimate Fixed (V5)
local CorrectKey = "Al-Kaabi 313"
local Player = game.Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KaabiSystem"
ScreenGui.Parent = CoreGui
ScreenGui.ResetOnSpawn = false

-- 1. واجهة المفتاح (Login)
local LoginFrame = Instance.new("Frame", ScreenGui)
LoginFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
LoginFrame.Position = UDim2.new(0.5, -110, 0.4, -90)
LoginFrame.Size = UDim2.new(0, 220, 0, 180)
LoginFrame.Active = true
LoginFrame.Draggable = true

local KeyBox = Instance.new("TextBox", LoginFrame)
KeyBox.Size = UDim2.new(0.8, 0, 0.2, 0)
KeyBox.Position = UDim2.new(0.1, 0, 0.3, 0)
KeyBox.PlaceholderText = "Key: Al-Kaabi 313"
KeyBox.Text = ""

local OpenBtn = Instance.new("TextButton", LoginFrame)
OpenBtn.Size = UDim2.new(0.8, 0, 0.2, 0)
OpenBtn.Position = UDim2.new(0.1, 0, 0.7, 0)
OpenBtn.Text = "Login"
OpenBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)

-- 2. القائمة الرئيسية (Main Menu)
local function CreateMainMenu()
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.Position = UDim2.new(0.1, 0, 0.1, 0)
    MainFrame.Size = UDim2.new(0, 250, 0, 300)
    MainFrame.Active = true
    MainFrame.Draggable = true
    MainFrame.Visible = true -- إظهار إجباري

    local Title = Instance.new("TextLabel", MainFrame)
    Title.Size = UDim2.new(1, 0, 0.1, 0)
    Title.Text = "Al-Kaabi Full Menu"
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

    -- زر السرعة
    local SpeedBtn = Instance.new("TextButton", MainFrame)
    SpeedBtn.Size = UDim2.new(0.9, 0, 0.15, 0)
    SpeedBtn.Position = UDim2.new(0.05, 0, 0.2, 0)
    SpeedBtn.Text = "Speed (100)"
    SpeedBtn.MouseButton1Click:Connect(function() Player.Character.Humanoid.WalkSpeed = 100 end)

    -- زر الطيران (Fly)
    local FlyBtn = Instance.new("TextButton", MainFrame)
    FlyBtn.Size = UDim2.new(0.9, 0, 0.15, 0)
    FlyBtn.Position = UDim2.new(0.05, 0, 0.4, 0)
    FlyBtn.Text = "Fly (E to toggle)"
    -- (برمجة طيران بسيطة)

    -- زر إغلاق
    local CloseBtn = Instance.new("TextButton", MainFrame)
    CloseBtn.Size = UDim2.new(0.9, 0, 0.15, 0)
    CloseBtn.Position = UDim2.new(0.05, 0, 0.8, 0)
    CloseBtn.Text = "Close Menu"
    CloseBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    CloseBtn.MouseButton1Click:Connect(function() MainFrame:Destroy() end)
end

-- برمجة زر الدخول
OpenBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text == CorrectKey then
        LoginFrame:Visible = false
        LoginFrame:Destroy()
        game.StarterGui:SetCore("SendNotification", {Title = "Success!", Text = "Menu Opening..."})
        CreateMainMenu() -- تشغيل القائمة فوراً
    else
        KeyBox.Text = ""
        KeyBox.PlaceholderText = "Wrong Key!"
    end
end)
