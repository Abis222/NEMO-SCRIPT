-- استدعاء المكتبة (السيارة)
local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/real-redz/RedzLibV5/main/Source.lua"))()

-- تشغيل النافذة (المفتاح)
local Window = RedzLib:MakeWindow({
  Title = "NEMO HUB",
  SubTitle = "by Abbas",
  SaveFolder = "NemoConfig.json"
})

-- إضافة زر الاختصار الدائري (NO)
Window:AddMinimizeButton({
  ButtonText = "NO",
  Description = "NEMO HUB Toggle",
  Icon = "rbxassetid://15298567397" 
})

-- إنشاء القسم الوحيد (Main) كما طلبت
local MainTab = Window:MakeTab({
  Name = "Main",
  Icon = "rbxassetid://4483345998"
})

-- كتابة ترحيب بسيطة لتتأكد أنها اشتغلت
MainTab:AddSection({"Welcome Abbas to NEMO HUB"})
