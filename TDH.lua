local player = game.Players.LocalPlayer

-- Функція для створення ScreenGui
local function createScreenGuiForPlayer()
	-- Створюємо ScreenGui
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "ScreenGui"

	local frame = Instance.new("Frame")
	frame.Name = "frame"
	frame.Size = UDim2.new(0, 562, 0, 186)
	frame.Position = UDim2.new(0.254, 0, 0.092, 0)
	frame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	frame.Parent = screenGui

	local textLabel1 = Instance.new("TextLabel")
	textLabel1.BackgroundTransparency = 1
	textLabel1.Font = Enum.Font.Kalam
	textLabel1.Size = UDim2.new(0, 244, 0, 50)
	textLabel1.Position = UDim2.new(0.283, 0, 0, 0)
	textLabel1.Text = "Tubers Destruct Hub"
	textLabel1.TextScaled = true
	textLabel1.TextColor3 = Color3.fromRGB(91, 179, 112)
	textLabel1.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	textLabel1.Parent = frame

	local textLabel2 = Instance.new("TextLabel")
	textLabel2.BackgroundTransparency = 1
	textLabel2.Size = UDim2.new(0, 244, 0, 50)
	textLabel2.Position = UDim2.new(-0.053, 0, 0.194, 0)
	textLabel2.Font = Enum.Font.Kalam
	textLabel2.Text = "Esp"
	textLabel2.TextScaled = true
	textLabel2.TextColor3 = Color3.fromRGB(168, 168, 168)
	textLabel2.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	textLabel2.Parent = frame

	local textButton = Instance.new("TextButton")
	textButton.Name = "On"
	textButton.BackgroundTransparency = 1
	textButton.Font = Enum.Font.Kalam
	textButton.Size = UDim2.new(0, 51, 0, 50)
	textButton.Position = UDim2.new(-0.002, 0, 0.19, 0)
	textButton.Text = "Off"
	textButton.TextScaled = true
	textButton.TextColor3 = Color3.fromRGB(154, 154, 154)
	textButton.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	textButton.Parent = frame
	
	local close = Instance.new("TextButton")
	close.Name = "Close"
	close.BackgroundTransparency = 1
	close.Size = UDim2.new(0, 59,0, 36)
	close.Position = UDim2.new(0.894, 0,0.032, 0)
	close.Text = "❌"
	close.TextScaled = true
	close.TextColor3 = Color3.fromRGB(154, 154, 154)
	close.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	close.Parent = frame
	
	local Holding = Instance.new("BoolValue")
	Holding.Name = "Holding"
	Holding.Parent = screenGui
	
	close.MouseButton1Click:Connect(function()
		textButton:Destroy()
		close:Destroy()
		textLabel2:Destroy()
		textLabel1.Text = "Bye!👋🏽"
		textLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
		wait(3)
		screenGui:Destroy()
		wait(1)
		script.Enabled = false
	end)
	-- Додаємо ScreenGui в PlayerGui гравця
	screenGui.Parent = player:WaitForChild("PlayerGui")

	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()

	mouse.Button1Down:Connect(function()
		Holding.Value = true
	end)

	mouse.Button1Up:Connect(function()
		Holding.Value = false
	end)

	mouse.Move:Connect(function()
		if Holding.Value == true then
			frame.Position = UDim2.new(0,mouse.X,0,mouse.Y) -- Change "Frame" to your frame name
		end
	end)
	local connection

	local espbutton = textButton

	local enabled = false

	local function createESP(player)
		local char = player.Character or player.CharacterAdded:Wait()
		if not char:FindFirstChild("esp") then
			local highlight = Instance.new("Highlight")
			highlight.FillTransparency = 1
			highlight.Name = "esp"
			highlight.Parent = char

			if player.Team then
				highlight.OutlineColor = player.Team.TeamColor.Color
			end

			if char == game.Players.LocalPlayer.Character then
				highlight:Destroy()
			end
		end
	end

	local function destroyESP(player)
		local char = player.Character
		if char and char:FindFirstChild("esp") then
			char.esp:Destroy()
			textButton.Text = "Off"
		end
	end

	local function enable()
		for _, player in pairs(game.Players:GetPlayers()) do
			createESP(player)
		end
	end

	local function disable()
		for _, player in pairs(game.Players:GetPlayers()) do
			destroyESP(player)
			textButton.Text = "Off"
		end
	end

	local function checkteam()
		for _, player in pairs(game.Players:GetPlayers()) do
			if player.Team == game.Players.LocalPlayer.Team then
				destroyESP(player)
				textButton.Text = "Off"
			end
		end
	end

	game.Players.PlayerAdded:Connect(function(player)
		player.CharacterAdded:Connect(function()
			if enabled then
				createESP(player)
			end
		end)
		player.CharacterRemoving:Connect(function()
			destroyESP(player)
			textButton.Text = "Off"
		end)
	end)


	espbutton.Activated:Connect(function()
		enabled = not enabled
		espbutton.BackgroundColor3 = enabled and Color3.new(0, 255, 0) or Color3.new(255, 0, 0)
		if enabled then
			enable()
			textButton.Text = "On"
		else
			disable()
			textButton.Text = "Off"
		end
	end)


end


-- Переконаємося, що персонаж вже є
if player.Character then
	createScreenGuiForPlayer()
else
	-- Створюємо GUI, коли персонаж з'явиться
	player.CharacterAdded:Connect(createScreenGuiForPlayer)
end
