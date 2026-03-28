-- NEMO HUB PRO VERSION 2026
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "NEMO HUB | ABBAS PRO", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "NEMO_CFG",
    IntroText = "Welcome Abbas!"
})

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddButton({
    Name = "Test NEMO HUB",
    Callback = function()
        print("NEMO HUB IS WORKING!")
        OrionLib:MakeNotification({
            Name = "Success",
            Content = "NEMO HUB is Active Now!",
            Time = 5
        })
    end    
})

OrionLib:Init()
