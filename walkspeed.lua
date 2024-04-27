-- Ссылка на Библиотеку
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

-- Создать окно UI
local Window = Library.CreateLib("WalkSpeed Hack", "RJTheme3")

-- Секция
local Tab = Window:NewTab("Main")



-- Заголовок
Section:NewLabel("WalkSpeed")

-- Слайдер
Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
