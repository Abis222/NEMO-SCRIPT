-- Al-Kaabi 313 Ultimate Fixed (V6)
local CorrectKey = "Al-Kaabi 313"
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KaabiSystem"
ScreenGui.Parent = game:GetService("CoreGui")
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
KeyBox.TextColor3 = Color3.new(1,1,1)
KeyBox.BackgroundColor3 = Color3.fromRGB(50,50,50)

local OpenBtn = Instance.new("TextButton", LoginFrame)
OpenBtn.Size = UDim2.new(0.8, 0, 0.2, 0)
OpenBtn.Position = UDim2.new(0.1, 0, 0.7, 0)
OpenBtn.Text = "Login"
OpenBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
OpenBtn.TextColor3 = Color3.new(1,1,1)

-- 2. القائمة الرئيسية (Main Menu)
local function CreateMainMenu()
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.Position = UDim2.new(0.1, 0, 0.1, 0)
    MainFrame.Size = UDim2.new(0, 250, 0, 320)
    MainFrame.Active = true
    MainFrame.Draggable = true

    local Title = Instance.new("TextLabel", MainFrame)
    Title.Size = UDim2.new(1, 0, 0.15, 0)
    Title.Text = "Al-Kaabi Full Menu"
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

    -- زر السرعة
    local SpeedBtn = Instance.new("TextButton", MainFrame)
    SpeedBtn.Size = UDim2.new(0.9, 0, 0.15, 0)
    SpeedBtn.Position = UDim2.new(0.05, 0, 0.2, 0)
    SpeedBtn.Text = "Speed (100)"
    SpeedBtn.MouseButton1Click:Connect(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100 end)

    -- زر كشف الأماكن (ESP)
    local ESPBtn = Instance.new("TextButton", MainFrame)
    ESPBtn.Size = UDim2.new(0.9, 0, 0.15, 0)
    ESPBtn.Position = UDim2.new(0.05, 0, 0.4, 0)
    ESPBtn.Text = "ESP Players"
    ESPBtn.MouseButton1Click:Connect(function()
        for _, v in pairs(game.Players:GetPlayers()) do
            if v.Character and v.Name ~= game.Players.LocalPlayer.Name then
                local h = Instance.new("Highlight", v.Character)
                h.FillColor = Color3.new(1,0,0)
            end
        end
    end)

    -- زر إغلاق
    local CloseBtn = Instance.new("TextButton", MainFrame)
    CloseBtn.Size = UDim2.new(0.9, 0, 0.12, 0)
    CloseBtn.Position = UDim2.new(0.05, 0, 0.85, 0)
    CloseBtn.Text = "Close Script"
    CloseBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    CloseBtn.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)
end

-- التحقق من المفتاح
OpenBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text == CorrectKey then
        LoginFrame:Destroy()
        CreateMainMenu()
    else
        KeyBox.Text = ""
        KeyBox.PlaceholderText = "Wrong Key!"
    end
end)
