-- Al-Kaabi 313 Ultimate Multi-Tab Script
local CorrectKey = "Al-Kaabi 313"
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)

-- 1. واجهة المفتاح (Login)
local LoginFrame = Instance.new("Frame", ScreenGui)
LoginFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
LoginFrame.Position = UDim2.new(0.5, -100, 0.4, -75)
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

-- 2. القائمة الرئيسية (Main System)
local function OpenMainMenu()
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    MainFrame.Position = UDim2.new(0.1, 0, 0.1, 0)
    MainFrame.Size = UDim2.new(0, 250, 0, 300)
    MainFrame.Active = true
    MainFrame.Draggable = true

    -- التبويبات (Tabs Buttons)
    local MainTabBtn = Instance.new("TextButton", MainFrame)
    MainTabBtn.Size = UDim2.new(0.5, 0, 0.1, 0)
    MainTabBtn.Text = "Main"
    MainTabBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

    local SettingsTabBtn = Instance.new("TextButton", MainFrame)
    SettingsTabBtn.Size = UDim2.new(0.5, 0, 0.1, 0)
    SettingsTabBtn.Position = UDim2.new(0.5, 0, 0, 0)
    SettingsTabBtn.Text = "Settings"
    SettingsTabBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)

    -- صفحات القائمة (Pages)
    local MainPage = Instance.new("Frame", MainFrame)
    MainPage.Size = UDim2.new(1, 0, 0.9, 0)
    MainPage.Position = UDim2.new(0, 0, 0.1, 0)
    MainPage.BackgroundTransparency = 1

    local SettingsPage = Instance.new("Frame", MainFrame)
    SettingsPage.Size = UDim2.new(1, 0, 0.9, 0)
    SettingsPage.Position = UDim2.new(0, 0, 0.1, 0)
    SettingsPage.BackgroundTransparency = 1
    SettingsPage.Visible = false

    -- [محتوى صفحة Main]
    local SpeedBtn = Instance.new("TextButton", MainPage)
    SpeedBtn.Size = UDim2.new(0.9, 0, 0.2, 0)
    SpeedBtn.Position = UDim2.new(0.05, 0, 0.1, 0)
    SpeedBtn.Text = "Activate Speed"
    SpeedBtn.MouseButton1Click:Connect(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100 end)

    local ESPBtn = Instance.new("TextButton", MainPage)
    ESPBtn.Size = UDim2.new(0.9, 0, 0.2, 0)
    ESPBtn.Position = UDim2.new(0.05, 0, 0.4, 0)
    ESPBtn.Text = "Player ESP"
    ESPBtn.MouseButton1Click:Connect(function()
        for _, v in pairs(game.Players:GetPlayers()) do
            if v.Character then local h = Instance.new("Highlight", v.Character) h.FillColor = Color3.new(1,0,0) end
        end
    end)

    -- [محتوى صفحة Settings]
    local SpeedLabel = Instance.new("TextLabel", SettingsPage)
    SpeedLabel.Size = UDim2.new(1, 0, 0.15, 0)
    SpeedLabel.Text = "Custom Speed Control:"
    SpeedLabel.TextColor3 = Color3.new(1,1,1)

    local SpeedInput = Instance.new("TextBox", SettingsPage)
    SpeedInput.Size = UDim2.new(0.8, 0, 0.2, 0)
    SpeedInput.Position = UDim2.new(0.1, 0, 0.2, 0)
    SpeedInput.PlaceholderText = "Type speed number..."
    SpeedInput.Text = "100"

    -- تنقل التبويبات (Switching)
    MainTabBtn.MouseButton1Click:Connect(function()
        MainPage.Visible = true
        SettingsPage.Visible = false
    end)

    SettingsTabBtn.MouseButton1Click:Connect(function()
        MainPage.Visible = false
        SettingsPage.Visible = true
    end)
end

-- زر الدخول
OpenBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text == CorrectKey then
        LoginFrame:Destroy()
        OpenMainMenu()
    else
        KeyBox.Text = "Wrong Key!"
    end
end)
