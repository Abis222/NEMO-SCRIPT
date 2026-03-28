-- NEMO HUB | THE DEFINITIVE BUTTON FIX
local CoreGui = game:GetService("CoreGui")

-- تنظيف النسخ السابقة لضمان عدم التداخل
for _, v in pairs(CoreGui:GetChildren()) do
    if v.Name == "NEMO_FINAL_UI" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "NEMO_FINAL_UI"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- [1] القائمة الرئيسية (نفس كودك الحالي تماماً)
local MainFrame = Instance.new("ImageLabel", ScreenGui)
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 560, 0, 330) 
MainFrame.Position = UDim2.new(0.5, -280, 0.5, -165)
MainFrame.BackgroundTransparency = 1 
MainFrame.Image = "rbxassetid://3570695787"
MainFrame.ImageColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.ScaleType = Enum.ScaleType.Slice
MainFrame.SliceCenter = Rect.new(100, 100, 100, 100)
MainFrame.SliceScale = 0.12
MainFrame.ZIndex = 10
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true

-- نص العنوان وقسم Main
local Title = Instance.new("TextLabel", MainFrame)
Title.Text = "NEMO HUB"
Title.Size = UDim2.new(0, 200, 0, 40)
Title.Position = UDim2.new(0, 25, 0, 10) 
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0, 255, 0)
Title.TextSize = 20 
Title.Font = Enum.Font.GothamBold
Title.ZIndex = 11

local SideBar = Instance.new("Frame", MainFrame)
SideBar.Size = UDim2.new(0, 130, 0, 250)
SideBar.Position = UDim2.new(0, 15, 0, 60)
SideBar.BackgroundTransparency = 1

local MainBtn =
