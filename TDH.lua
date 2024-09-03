local player = game.Players.LocalPlayer


----


----

-- Функція для створення ScreenGui
local function createScreenGuiForPlayer()
	-- Створюємо ScreenGui
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "ScreenGui"

	local frame = Instance.new("ScrollingFrame")--
	frame.Name = "ScrollingFrame"
	frame.Size = UDim2.new(0, 431,0, 220)
	frame.Position = UDim2.new(0.029, 0,0.695, 0)
	frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	frame.BackgroundTransparency = 0.2
	frame.Parent = screenGui
	
	local textLabel1 = Instance.new("TextLabel")--
	textLabel1.BackgroundTransparency = 0
	textLabel1.Font = Enum.Font.Jura
	textLabel1.Size = UDim2.new(0, 417,0, 27)
	textLabel1.Position = UDim2.new(0, 0,-0, 0)
	textLabel1.Text = "Tubers Destruct Hub"
	textLabel1.TextScaled = true
	textLabel1.TextColor3 = Color3.fromRGB(0, 0, 0)
	textLabel1.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
	textLabel1.Parent = frame
	
	local Beta = Instance.new("TextLabel")--
	Beta.BackgroundTransparency = 1
	Beta.Font = Enum.Font.Jura
	Beta.Size = UDim2.new(0, 88,0, 29)
	Beta.Position = UDim2.new(-0.001, 0,-0.002, 0)
	Beta.Text = "Beta 1.9.1"
	Beta.TextScaled = true
	Beta.TextColor3 = Color3.fromRGB(0, 0, 0)
	Beta.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
	Beta.TextTransparency = 0.8
	Beta.Parent = frame

	local textLabel2 = Instance.new("TextLabel")--
	textLabel2.BackgroundTransparency = 1
	textLabel2.Size = UDim2.new(0, 431,0, 29)
	textLabel2.Position = UDim2.new(-0.271, 0,0.03, 0)
	textLabel2.Font = Enum.Font.Jura
	textLabel2.Text = "Esp"
	textLabel2.TextScaled = true
	textLabel2.TextColor3 = Color3.fromRGB(147, 147, 147)
	textLabel2.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	textLabel2.Parent = frame


	local Noclip = Instance.new("TextLabel")--
	Noclip.BackgroundTransparency = 1
	Noclip.Size = UDim2.new(0, 431,0, 29)
	Noclip.Position = UDim2.new(0.274, 0,0.033, 0)
	Noclip.Font = Enum.Font.Jura
	Noclip.Text = "NoClip"
	Noclip.TextScaled = true
	Noclip.TextColor3 = Color3.fromRGB(147, 147, 147)
	Noclip.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	Noclip.Parent = frame

	local FlyOn = Instance.new("TextLabel")--
	FlyOn.BackgroundTransparency = 1
	FlyOn.Size = UDim2.new(0, 431,0, 29)
	FlyOn.Position = UDim2.new(-0.002, 0,0.031, 0)
	FlyOn.Font = Enum.Font.Jura
	FlyOn.Text = "Fly"
	FlyOn.TextScaled = true
	FlyOn.TextColor3 = Color3.fromRGB(168, 168, 168)
	FlyOn.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	FlyOn.Parent = frame

	local Tptext = Instance.new("TextLabel")--
	Tptext.BackgroundTransparency = 1
	Tptext.Size = UDim2.new(0, 431,0, 29)
	Tptext.Position = UDim2.new(-0.007, 0,0.066, 0)
	Tptext.Font = Enum.Font.Jura
	Tptext.Text = "Teleport to player..."
	Tptext.TextScaled = true
	Tptext.TextColor3 = Color3.fromRGB(168, 168, 168)
	Tptext.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	Tptext.Parent = frame
	
	local Coming = Instance.new("TextLabel")--
	Coming.BackgroundTransparency = 1
	Coming.Size = UDim2.new(0, 431,0, 29)
	Coming.Position = UDim2.new(0.0, 0,0.18, 0)
	Coming.Font = Enum.Font.Jura
	Coming.Text = "More Coming Soon..."
	Coming.TextScaled = true
	Coming.TextColor3 = Color3.fromRGB(147, 147, 147)
	Coming.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	Coming.Parent = frame
	
	local XrayText = Instance.new("TextLabel")--
	XrayText.BackgroundTransparency = 1
	XrayText.Size = UDim2.new(0, 431,0, 29)
	XrayText.Position = UDim2.new(0.0, 0,0.139, 0)
	XrayText.Font = Enum.Font.Jura
	XrayText.Text = "X-ray"
	XrayText.TextScaled = true
	XrayText.TextColor3 = Color3.fromRGB(147, 147, 147)
	XrayText.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	XrayText.Parent = frame


	local Enteranametext= Tptext--
	
	local ErrorFound = Instance.new("TextLabel")--
	ErrorFound.BackgroundTransparency = 1
	ErrorFound.Size = UDim2.new(0, 289,0, 26)
	ErrorFound.Position = UDim2.new(0.155, 0,0.126, 0)
	ErrorFound.Font = Enum.Font.Jura
	ErrorFound.Text = ""
	ErrorFound.TextScaled = true
	ErrorFound.TextColor3 = Color3.fromRGB(147, 147, 147)
	ErrorFound.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	ErrorFound.Parent = frame
	
	local TrojanLabel = Instance.new("TextLabel")--
	TrojanLabel.BackgroundTransparency = 1
	TrojanLabel.Size = UDim2.new(0, 181,0, 36)
	TrojanLabel.Position = UDim2.new(0.548, 0,0.137, 0)
	TrojanLabel.Font = Enum.Font.Jura
	TrojanLabel.Text = "Trojan"
	TrojanLabel.TextScaled = true
	TrojanLabel.TextColor3 = Color3.fromRGB(147, 147, 147)
	TrojanLabel.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	TrojanLabel.Parent = frame

	local Visual = Instance.new("TextLabel")--
	Visual.BackgroundTransparency = 1
	Visual.Size = UDim2.new(0, 120,0, 18)
	Visual.Position = UDim2.new(0.718, 0,0.132, 0)
	Visual.Font = Enum.Font.Jura
	Visual.Text = "(Visual)"
	Visual.TextScaled = true
	Visual.TextColor3 = Color3.fromRGB(104, 104, 104)
	Visual.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	Visual.Parent = frame

	
	local EnterNameBox = Instance.new("TextBox")--
	EnterNameBox.BackgroundTransparency = 0.5
	EnterNameBox.Size = UDim2.new(0, 200,0, 50)
	EnterNameBox.Position = UDim2.new(0.26, 0,0.09, 0)
	EnterNameBox.Font = Enum.Font.Jura
	EnterNameBox.Text = ""
	EnterNameBox.TextScaled = true
	EnterNameBox.TextColor3 = Color3.fromRGB(39, 39, 39)
	EnterNameBox.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
	EnterNameBox.Parent = frame
	
	
	
	local Ok = Instance.new("TextButton")--
	Ok.Name = "Ent"
	Ok.BackgroundTransparency = 1
	Ok.Font = Enum.Font.Jura
	Ok.Size = UDim2.new(0, 75,0, 144)
	Ok.Position = UDim2.new(0.742, 0,0.057, 0)
	Ok.Text = "Ok"
	Ok.TextScaled = true
	Ok.TextColor3 = Color3.fromRGB(147, 147, 147)
	Ok.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	Ok.Parent = frame
	
	local XrayOn = Instance.new("TextButton")--
	XrayOn.Name = "XrayOn"
	XrayOn.BackgroundTransparency = 1
	XrayOn.Font = Enum.Font.Jura
	XrayOn.Size = UDim2.new(0, 109,0, 24)
	XrayOn.Position = UDim2.new(0.374, 0,0.164, 0)
	XrayOn.Text = "Turn On"
	XrayOn.TextScaled = true
	XrayOn.TextColor3 = Color3.fromRGB(147, 147, 147)
	XrayOn.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	XrayOn.Parent = frame
	
	local trojanon = Instance.new("TextButton")--
	trojanon.Name = "trojanon"
	trojanon.BackgroundTransparency = 1
	trojanon.Font = Enum.Font.Jura
	trojanon.Size = UDim2.new(0, 109,0, 24)
	trojanon.Position = UDim2.new(0.632, 0,0.164, 0)
	trojanon.Text = "Turn On"
	trojanon.TextScaled = true
	trojanon.TextColor3 = Color3.fromRGB(147, 147, 147)
	trojanon.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	trojanon.Parent = frame

	local textButton = Instance.new("TextButton") --
	textButton.Name = "On"
	textButton.BackgroundTransparency = 1
	textButton.Font = Enum.Font.Jura
	textButton.Size = UDim2.new(0, 109,0, 24)
	textButton.Position = UDim2.new(0.1, 0,0.053, 0)
	textButton.Text = "Turn On"
	textButton.TextScaled = true
	textButton.TextColor3 = Color3.fromRGB(147, 147, 147)
	textButton.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	textButton.Parent = frame
	
	local OnClip = Instance.new("TextButton")--
	OnClip.Name = "OnClip"
	OnClip.BackgroundTransparency = 1
	OnClip.Font = Enum.Font.Jura
	OnClip.Size = UDim2.new(0, 109,0, 24)
	OnClip.Position = UDim2.new(0.647, 0,0.053, 0)
	OnClip.Text = "Turn On"
	OnClip.TextScaled = true
	OnClip.TextColor3 = Color3.fromRGB(147, 147, 147)
	OnClip.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	OnClip.Parent = frame

	local FlyButtton = Instance.new("TextButton")--
	FlyButtton.Name = "OnFly"
	FlyButtton.BackgroundTransparency = 1
	FlyButtton.Font = Enum.Font.Jura
	FlyButtton.Size = UDim2.new(0, 109,0, 24)
	FlyButtton.Position = UDim2.new(0.369, 0,0.053, 0)
	FlyButtton.Text = "Turn On"
	FlyButtton.TextScaled = true
	FlyButtton.TextColor3 = Color3.fromRGB(147, 147, 147)
	FlyButtton.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	FlyButtton.Parent = frame

	local close = Instance.new("ImageButton")
	close.Image = "http://www.roblox.com/asset/?id=98271098003324"
	close.Name = "Close"
	close.BackgroundTransparency = 1
	close.Size = UDim2.new(0, 39,0, 36)
	close.Position = UDim2.new(0.877, 0,-0.003, 0)
	close.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	close.Parent = frame

	local Holding = Instance.new("BoolValue")
	Holding.Name = "Holding"
	Holding.Parent = screenGui
	
	-- Отримуємо доступ до елементів GUI
	local button = trojanon
	local player = game.Players.LocalPlayer -- Отримуємо локального гравця
	local isSpawning = false -- Змінна для контролю спавнінгу
	local spawnConnection -- Змінна для збереження підключення до спавнінгу

	-- Функція для створення частини (Part)
	local function createPart()
		local character = player.Character or player.CharacterAdded:Wait() -- Отримуємо персонажа гравця
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart") -- Використовуємо HumanoidRootPart як точку спавнінгу

		local part = Instance.new("Part") -- Створюємо новий Part
		part.Size = Vector3.new(8.811, 4.305, 5.307) -- Встановлюємо розміри
		part.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0) -- Встановлюємо позицію над гравцем
		part.Anchored = false -- Закріплюємо Part, щоб він не падав
		part.Parent = workspace -- Додаємо Part в робочий простір
	end

	-- Функція для запуску або зупинки спавнінгу
	local function toggleSpawning()
		if isSpawning then
			trojanon.Text = "Turn On"
			-- Якщо вже спавниться, зупиняємо спавнінг
			isSpawning = false
			if spawnConnection then
				spawnConnection:Disconnect() -- Відключаємо попереднє підключення
			end
		else
			-- Якщо не спавниться, запускаємо спавнінг
			isSpawning = true
			trojanon.Text = "Turn Off"
			spawnConnection = game:GetService("RunService").Heartbeat:Connect(function()
				createPart() -- Викликаємо функцію створення частини
				wait(0.1) -- Затримка в 1 секунду між спавнами
			end)
		end
	end

	-- Прив'язуємо функцію до натискання кнопки
	button.MouseButton1Click:Connect(toggleSpawning)

	-- Припустимо, що у вас є кнопка в GUI під назвою "XRayButton"
	local button = XrayOn

	local xrayEnabled = false

	local function toggleXRay()
		xrayEnabled = not xrayEnabled

		if xrayEnabled then
			for _, part in pairs(workspace:GetDescendants()) do
				if part:IsA("BasePart") then
					XrayOn.Text = "Turn Off"
					part.Transparency = 0.5 -- робить частини напівпрозорими
				end
			end
		else
			for _, part in pairs(workspace:GetDescendants()) do
				if part:IsA("BasePart") then
					XrayOn.Text = "Turn On"
					part.Transparency = 0 -- повертає частини до нормального стану
				end
			end
		end
	end

	button.MouseButton1Click:Connect(toggleXRay)

	-- Отримуємо посилання на необхідні об'єкти
	-- Отримуємо посилання на необхідні об'єкти
	local textBox = EnterNameBox
	local button = Ok
	local players = game:GetService("Players")
	local localPlayer = players.LocalPlayer

	-- Функція для телепортації до гравця
	local function teleportToPlayer(partialName)
		local targetPlayer = nil

		-- Перебираємо всіх гравців і шукаємо того, чиє ім'я або відображуваний нік починається з введеного тексту
		for _, player in ipairs(players:GetPlayers()) do
			if player.Name:sub(1, #partialName):lower() == partialName:lower() or
				player.DisplayName:sub(1, #partialName):lower() == partialName:lower() then
				targetPlayer = player
				break
			end
		end

		if targetPlayer then
			local character = targetPlayer.Character
			if character and character:FindFirstChild("HumanoidRootPart") then
				localPlayer.Character:SetPrimaryPartCFrame(character.HumanoidRootPart.CFrame)
				ErrorFound.Text = "Successfully!"
				wait(2)
				ErrorFound.Text = ""
			else
				ErrorFound.Text = "Player Humanoid not found!"
				wait(2)
				ErrorFound.Text = ""
			end
		else
			ErrorFound.Text = "Player name or Player not found!"
			wait(2)
			ErrorFound.Text = ""
		end
	end

	-- Обробка натискання на кнопку
	button.MouseButton1Click:Connect(function()
		local partialName = textBox.Text
		if partialName and partialName ~= "" then
			teleportToPlayer(partialName)
		else
			ErrorFound.Text = "Enter Name"
			wait(2)
			ErrorFound.Text = ""
		end
	end)

	local main = screenGui
	local Frame = frame
	local onof = FlyButtton

	local Noclip = nil
	local Clip = nil

	function noclip()
		Clip = false
		local function Nocl()
			if Clip == false and game.Players.LocalPlayer.Character ~= nil then
				for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
						v.CanCollide = false
					end
				end
			end
			wait(0.21) -- basic optimization
		end
		Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
	end

	function clip()
		if Noclip then Noclip:Disconnect() end
		Clip = true
	end
	speeds = 1

	local speaker = game:GetService("Players").LocalPlayer

	local chr = game.Players.LocalPlayer.Character
	local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

	nowe = false
	local Clipon = false
	Frame.Active = true -- main = gui
	Frame.Draggable = true
	OnClip.MouseButton1Click:connect(function()
		if OnClip.Text == "Turn On" then
			OnClip.Text = "Turn Off"
			noclip() -- to toggle noclip() and clip()
			
		elseif OnClip.Text == "Turn Off" then
			OnClip.Text = "Turn On"
			clip()
		end
	end)
	
	onof.MouseButton1Down:connect(function()
		FlyButtton.Text =  "Turn Off"
		if nowe == true then
			nowe = false

			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
			speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
		else 
			nowe = true



			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
			game.Players.LocalPlayer.Character.Animate.Disabled = true
			local Char = game.Players.LocalPlayer.Character
			local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

			for i,v in next, Hum:GetPlayingAnimationTracks() do
				v:AdjustSpeed(0)
			end
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
			speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
		end




		if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



			local plr = game.Players.LocalPlayer
			local torso = plr.Character.Torso
			local flying = true
			local deb = true
			local ctrl = {f = 0, b = 0, l = 0, r = 0}
			local lastctrl = {f = 0, b = 0, l = 0, r = 0}
			local maxspeed = 50
			local speed = 0


			local bg = Instance.new("BodyGyro", torso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = torso.CFrame
			local bv = Instance.new("BodyVelocity", torso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			if nowe == true then
				plr.Character.Humanoid.PlatformStand = true
			end
			while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
				game:GetService("RunService").RenderStepped:Wait()

				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+.5+(speed/maxspeed)
					if speed > maxspeed then
						speed = maxspeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-1
					if speed < 0 then
						speed = 0
					end
				end
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				else
					bv.velocity = Vector3.new(0,0,0)
				end
				--	game.Players.LocalPlayer.Character.Animate.Disabled = true
				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			end
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			tpwalking = false




		else
			local plr = game.Players.LocalPlayer
			local UpperTorso = plr.Character.UpperTorso
			local flying = true
			local deb = true
			local ctrl = {f = 0, b = 0, l = 0, r = 0}
			local lastctrl = {f = 0, b = 0, l = 0, r = 0}
			local maxspeed = 50
			local speed = 0


			local bg = Instance.new("BodyGyro", UpperTorso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = UpperTorso.CFrame
			local bv = Instance.new("BodyVelocity", UpperTorso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			if nowe == true then
				plr.Character.Humanoid.PlatformStand = true
			end
			while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
				wait()

				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+.5+(speed/maxspeed)
					if speed > maxspeed then
						speed = maxspeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-1
					if speed < 0 then
						speed = 0
					end
				end
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				else
					bv.velocity = Vector3.new(0,0,0)
				end

				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			end
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			tpwalking = false
			FlyButtton.Text = "Turn On"



		end





	end)

	local tis



	game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
		wait(0.7)
		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false

	end)




	close.MouseButton1Click:Connect(function()
		close:Destroy()
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
			textButton.Text = "Turn Off"
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
			textButton.Text = "Turn Off"
		end
	end

	local function checkteam()
		for _, player in pairs(game.Players:GetPlayers()) do
			if player.Team == game.Players.LocalPlayer.Team then
				destroyESP(player)
				textButton.Text = "Turn Off"
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
			textButton.Text = "Turn Off"
		end)
	end)


	espbutton.Activated:Connect(function()
		enabled = not enabled
		espbutton.BackgroundColor3 = enabled and Color3.new(0, 255, 0) or Color3.new(255, 0, 0)
		if enabled then
			enable()
			textButton.Text = "Turn On"
		else
			disable()
			textButton.Text = "Turn Off"
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
