--[[ 
    NEMO HUB - OFFICIAL REDZ STYLE
    OWNER: ABBAS (ABIS222)
]]--

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/real-redz/RedzLibV5/main/Source.lua"))()

local Window = RedzLib:MakeWindow({
  Title = "NEMO HUB | by Abbas",
  SubTitle = "Mobile Edition",
  SaveFolder = "NemoConfig.json"
})

-- إضافة الزر الدائري (التوجل) اللي عليه حقوقك
Window:AddMinimizeButton({
  ButtonText = "NO",
  Description = "NEMO HUB Toggle",
  Icon = "rbxassetid://15298567397" -- أيقونة افتراضية
})

-- إنشاء القسم الوحيد (Main) كما طلبت
local MainTab = Window:MakeTab({
  Name = "Main",
  Icon = "rbxassetid://4483345998"
})

-- القسم فارغ الآن بانتظار إضافاتك
MainTab:AddSection({"Welcome to NEMO HUB"})
