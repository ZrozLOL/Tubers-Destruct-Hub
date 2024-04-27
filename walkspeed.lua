
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
