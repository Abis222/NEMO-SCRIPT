local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/real-redz/RedzLibV5/main/Source.lua"))()

local Window = RedzLib:MakeWindow({
  Title = "NEMO HUB",
  SubTitle = "by Abbas",
  Icon = "rbxassetid://15298567397",
  SaveFolder = "NemoConfig.json"
})

Window:AddMinimizeButton({
  ButtonText = "NO",
  Description = "NEMO HUB Toggle",
  Icon = "rbxassetid://15298567397" 
})

local MainTab = Window:MakeTab({
  Name = "Main",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddSection({"Welcome Abbas to NEMO HUB"})
