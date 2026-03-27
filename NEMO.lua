-- استدعاء مكتبة Redz الأصلية
local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/real-redz/RedzLibV5/main/Source.lua"))()

-- إنشاء النافذة بنفس اسم سكربتك وحقوقك
local Window = RedzLib:MakeWindow({
  Title = "NEMO HUB",
  SubTitle = "by Abbas",
  SaveFolder = "NemoConfig.json"
})

-- إضافة الزر الدائري (NO) لإخفاء وإظهار القائمة
Window:AddMinimizeButton({
  ButtonText = "NO",
  Description = "NEMO HUB Toggle",
  Icon = "rbxassetid://15298567397" 
})

-- إنشاء قسم Main (الوحيد حالياً)
local MainTab = Window:MakeTab({
  Name = "Main",
  Icon = "rbxassetid://4483345998"
})

-- ترحيب داخل القسم لكي تتأكد أنه اشتغل
MainTab:AddSection({"Welcome Abbas to NEMO HUB"})

MainTab:AddParagraph("Status","The script is now working perfectly!")
