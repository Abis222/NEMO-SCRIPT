--[[ 
    NEMO HUB - THE REAL REDZ UI
    OWNER: ABBAS (ABIS222)
    LIBRARY: REDZ LIB V5 (MOBILE OPTIMIZED)
]]--

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/real-redz/RedzLibV5/main/Source.lua"))()

local Window = RedzLib:MakeWindow({
  Title = "NEMO HUB",
  SubTitle = "by Abbas",
  SaveFolder = "NemoHubConfig.json"
})

-- 1. الزر الدائري العائم (عليه حقوقك NO)
Window:AddMinimizeButton({
  ButtonText = "NO",
  Description = "Click to Toggle NEMO HUB",
  Icon = "rbxassetid://15298567397" -- أيقونة افتراضية فخمة
})

-- 2. القسم الوحيد المفتوح (Main)
local MainTab = Window:MakeTab({
  Name = "Main",
  Icon = "rbxassetid://4483345998" -- أيقونة البيت (Home)
})

-- 3. ترحيب داخل القسم (فارغ بانتظار أزرارك)
MainTab:AddSection({"Welcome Abbas to your Hub"})

MainTab:AddParagraph("Status","NEMO HUB is now active and ready!")
