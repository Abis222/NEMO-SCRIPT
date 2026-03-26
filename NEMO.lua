-- Al-Kaabi 313 Simple Script (V2)
local CorrectKey = "Al-Kaabi 313"

-- 1. إنشاء واجهة المفتاح (Login UI)
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.Position = UDim2.new(0.5, -100, 0.4, -75)
MainFrame.Size = UDim2.new(0, 200, 0, 160)
MainFrame.Active = true
MainFrame.Draggable = true

local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0.2, 0)
Title.Text = "Welcome Abbas"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1

local KeyBox = Instance.new("TextBox", MainFrame)
KeyBox.Position = UDim2.new(0.1, 0, 0.3, 0)
KeyBox.Size = UDim2.new(0.8, 0, 0.2, 0)
KeyBox.PlaceholderText = "Enter Key Here..."
KeyBox.Text = ""
KeyBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
KeyBox.TextColor3 = Color3.new(1, 1, 1)

local PasteBtn = Instance.new("TextButton", MainFrame)
PasteBtn.Position = UDim2.new(0.1, 0, 0.55, 0)
PasteBtn.Size = UDim2.new(0.8, 0, 0.15, 0)
PasteBtn.Text = "Paste the code"
PasteBtn.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
PasteBtn.TextColor3 = Color3.new(1, 1, 1)

local OpenBtn = Instance.new("TextButton", MainFrame)
OpenBtn.Position = UDim2.new(0.1, 0, 0.75, 0)
OpenBtn.Size = UDim2.new(0.8, 0, 0.15, 0)
OpenBtn.Text = "Open the menu"
OpenBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
OpenBtn.TextColor3 = Color3.new(1, 1, 1)

-- 2. وظيفة اللصق (Paste)
PasteBtn.MouseButton1Click:Connect(function()
    KeyBox.Text = CorrectKey
end)

-- 3. وظيفة فتح القائمة (التحقق من المفتاح)
OpenBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text == CorrectKey then
        MainFrame:Destroy() -- حذف واجهة الدخول
        
        -- إرسال إشعار بالنجاح
        game.StarterGui:SetCore("SendNotification", {
            Title = "Success!",
            Text = "Welcome, Abbas! Script Active.",
            Duration = 5
        })
        
        print("Al-Kaabi 313 menu is now active.")
    else
        KeyBox.Text = ""
        KeyBox.PlaceholderText = "Wrong Key!"
    end
end)
