-- كود NEMO HUB PRO التجريبي
repeat task.wait() until game:IsLoaded()
if game:GetService("CoreGui"):FindFirstChild("NEMO_FINAL_HUB") then game:GetService("CoreGui"):FindFirstChild("NEMO_FINAL_HUB"):Destroy() end

local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
ScreenGui.Name = "NEMO_FINAL_HUB"

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 520, 0, 320)
Main.Position = UDim2.new(0.3, 0, 0.25, 0)
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 22)
Instance.new("UICorner", Main).CornerRadius = UDim2.new(0, 10)

local Title = Instance.new("TextLabel", Main)
Title.Text = "NEMO HUB | CONNECTED VIA VPN"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
