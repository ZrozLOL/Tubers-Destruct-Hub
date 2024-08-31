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

	local textButton1 = Instance.new("TextButton")
	textButton1.Visible = false
	textButton1.Name = "Off"
	textButton1.BackgroundTransparency = 1
	textButton1.Font = Enum.Font.Kalam
	textButton1.Size = UDim2.new(0, 51, 0, 50)
	textButton1.Position = UDim2.new(-0.002, 0, 0.19, 0)
	textButton1.Text = "On"
	textButton1.TextScaled = true
	textButton1.TextColor3 = Color3.fromRGB(154, 154, 154)
	textButton1.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	textButton1.Parent = frame
	
	local Holding = Instance.new("BoolValue")
	Holding.Name = "Holding"
	Holding.Parent = screenGui

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




	local button = textButton1
	local frame = frame
	local button2 = textButton
	local screengui = frame.Parent 
	local StarterGui = game:GetService("StarterGui")

	local function onButtonClicked()

		local Players = game:GetService('Players')
		for _,v in pairs(Players:GetPlayers()) do
			local Highlight = v.Character:FindFirstChild('Highlight')
			local BillBoard = v.Character:WaitForChild('Head'):FindFirstChild('B')
		end

		local NotificationName = 'ESP Off!'
		local NotificationNote = 'Good luck!'
		StarterGui:SetCore("SendNotification",{Title = NotificationName; Text = NotificationNote;})
	end
	textButton1.MouseButton1Click:Connect(function()
		textButton1.Position = UDim2.new(1488,1488,1488,1488)
		textButton.Position = UDim2.new(-0.002, 0, 0.19, 0)
		textButton1.Visible = false
		textButton.Visible = true

	end)
	button.MouseButton1Click:Connect(onButtonClicked)
end


-- Переконаємося, що персонаж вже є
if player.Character then
	createScreenGuiForPlayer()
else
	-- Створюємо GUI, коли персонаж з'явиться
	player.CharacterAdded:Connect(createScreenGuiForPlayer)
end
