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
	frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	frame.Parent = screenGui
	
	local frame2 = Instance.new("Frame")
	frame2.Name = "Frame2"
	frame2.Size = UDim2.new(0, 561,0, -49)
	frame2.Position = UDim2.new(0, 0,0.269, 0)
	frame2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
	frame2.Parent = frame
	frame2.BorderSizePixel = 0

	local textLabel1 = Instance.new("TextLabel")
	textLabel1.BackgroundTransparency = 1
	textLabel1.Font = Enum.Font.Jura
	textLabel1.Size = UDim2.new(0, 244, 0, 50)
	textLabel1.Position = UDim2.new(0.283, 0,0, 0)
	textLabel1.Text = "Tubers Destruct Hub"
	textLabel1.TextScaled = true
	textLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel1.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	textLabel1.Parent = frame

	local textLabel2 = Instance.new("TextLabel")
	textLabel2.BackgroundTransparency = 1
	textLabel2.Size = UDim2.new(0, 91,0, 50)
	textLabel2.Position = UDim2.new(0.016, 0,0.312, 0)
	textLabel2.Font = Enum.Font.Jura
	textLabel2.Text = "Esp"
	textLabel2.TextScaled = true
	textLabel2.TextColor3 = Color3.fromRGB(168, 168, 168)
	textLabel2.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	textLabel2.Parent = frame

	local FlyOn = Instance.new("TextLabel")
	FlyOn.BackgroundTransparency = 1
	FlyOn.Size = UDim2.new(0, 81,0, 50)
	FlyOn.Position = UDim2.new(0.016, 0,0.586, 0)
	FlyOn.Font = Enum.Font.Jura
	FlyOn.Text = "Fly"
	FlyOn.TextScaled = true
	FlyOn.TextColor3 = Color3.fromRGB(168, 168, 168)
	FlyOn.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	FlyOn.Parent = frame

	local textButton = Instance.new("TextButton")
	textButton.Name = "On"
	textButton.BackgroundTransparency = 1
	textButton.Font = Enum.Font.Jura
	textButton.Size = UDim2.new(0, 51, 0, 50)
	textButton.Position = UDim2.new(0.192, 0,0.351, 0)
	textButton.Text = "Off"
	textButton.TextScaled = true
	textButton.TextColor3 = Color3.fromRGB(154, 154, 154)
	textButton.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	textButton.Parent = frame

	local FlyButtton = Instance.new("TextButton")
	FlyButtton.Name = "OnFly"
	FlyButtton.BackgroundTransparency = 1
	FlyButtton.Font = Enum.Font.Jura
	FlyButtton.Size = UDim2.new(0, 51, 0, 50)
	FlyButtton.Position = UDim2.new(0.192, 0,0.62, 0)
	FlyButtton.Text = "Off"
	FlyButtton.TextScaled = true
	FlyButtton.TextColor3 = Color3.fromRGB(154, 154, 154)
	FlyButtton.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	FlyButtton.Parent = frame

	local close = Instance.new("TextButton")
	close.Name = "Close"
	close.BackgroundTransparency = 1
	close.Size = UDim2.new(0, 59,0, 36)
	close.Position = UDim2.new(0.894, 0,0.032, 0)
	close.Text = "❌"
	close.TextScaled = true
	close.TextColor3 = Color3.fromRGB(154, 154, 154)
	close.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	close.Parent = frame2

	local Holding = Instance.new("BoolValue")
	Holding.Name = "Holding"
	Holding.Parent = screenGui

	--This fly tool works on any device. Great dev asset for RP games and more.
	--Credit: XNEO

	local main = screenGui
	local Frame = frame
	local onof = FlyButtton


	speeds = 1

	local speaker = game:GetService("Players").LocalPlayer

	local chr = game.Players.LocalPlayer.Character
	local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

	nowe = false

	Frame.Active = true -- main = gui
	Frame.Draggable = true

	onof.MouseButton1Down:connect(function()
		FlyButtton.Text =  "On"
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
			FlyButtton.Text = "Off"



		end





	end)

	local tis



	game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
		wait(0.7)
		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false

	end)




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
