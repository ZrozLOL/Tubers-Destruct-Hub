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

	-- Додаємо ScreenGui в PlayerGui гравця
	screenGui.Parent = player:WaitForChild("PlayerGui")
	textButton.MouseButton1Click:Connect(function()
		textButton.Position = UDim2.new(1488,1488,1488,1488)
		textButton1.Position = UDim2.new(-0.002, 0, 0.19, 0)
		textButton.Visible = false
		textButton1.Visible = true
		local UserInputService = game:GetService("UserInputService")
		local StarterGui = game:GetService("StarterGui")

		local NotificationName = 'ESP'
		local NotificationNote = 'Turned on!'
		StarterGui:SetCore("SendNotification",{Title = NotificationName; Text = NotificationNote;})

		local Players = game:GetService('Players')
		local Plr = Players.LocalPlayer
		local RunService = game:GetService('RunService')
		local Computers

		wait(1)

		local NotificationName = 'ESP'
		local NotificationNote = 'Show Computers: C, Show Freeze Pods: F, Run: R'
		StarterGui:SetCore("SendNotification",{Title = NotificationName; Text = NotificationNote;})

		local Character = Plr.Character
		local Humanoid = Character:FindFirstChildOfClass('Humanoid')
		local Running = false

		local CreateBillBoard = function(p)
			local billboard = Instance.new('BillboardGui')
			billboard.Name = 'B'
			billboard.Size = UDim2.fromScale(1.5,1)
			billboard.AlwaysOnTop = true
			billboard.Enabled = true
			local textlabel = Instance.new('TextLabel')
			textlabel.Name = 'T'
			textlabel.Size = UDim2.fromScale(1,1)
			textlabel.BackgroundTransparency = 1
			textlabel.Text = p.Name
			textlabel.Parent = billboard
			textlabel.Font = Enum.Font.Arcade
			textlabel.TextStrokeTransparency = 0
			textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			textlabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			return billboard
		end

		local CreateHighlight = function()
			local highlight = Instance.new('Highlight')
			highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			highlight.Enabled = true
			highlight.FillTransparency = 1
			highlight.OutlineTransparency = 0
			return highlight
		end

		local ShowComputers = function()
			local map
			for _,model in pairs(workspace:GetChildren()) do
				if model:IsA('Model') and model:FindFirstChild('ComputerTable') then
					map = model
					break
				end
			end
			if map then
				for _,computer in pairs(map:GetChildren()) do
					if computer.Name == 'ComputerTable' then
						local screen = computer:FindFirstChild('BasePart')
						local h = CreateHighlight()
						h.Parent = computer
						h.Adornee = computer
						h.OutlineColor = Color3.fromRGB(0, 255, 255)
						local b = CreateBillBoard(screen)
						b.Parent = screen
						b.T.Text = 'Computer'
						b.T.TextColor3 = Color3.fromRGB(0, 255, 255)
					end
				end
			end
		end

		local ShowFreezePods = function()
			local map
			for _,model in pairs(workspace:GetChildren()) do
				if model:IsA('Model') and model:FindFirstChild('FreezePod') then
					map = model
					break
				end
			end
			if map then
				for _,freezepod in pairs(map:GetChildren()) do
					if freezepod.Name == 'FreezePod' then
						local roof = freezepod:FindFirstChild('PodRoof')
						local h = CreateHighlight()
						h.Parent = freezepod
						h.Adornee = freezepod
						h.OutlineColor = Color3.fromRGB(0, 0, 255)
						local b = CreateBillBoard(roof)
						b.Parent = roof
						b.T.Text = 'Freeze Pod'
						b.T.TextColor3 = Color3.fromRGB(0, 0, 255)
					end
				end
			end
		end

		UserInputService.InputBegan:Connect(function(input, gp)
			if not gp and input.KeyCode == Enum.KeyCode.C then
				ShowComputers()
			elseif not gp and input.KeyCode == Enum.KeyCode.F then
				ShowFreezePods()
			elseif not gp and input.KeyCode == Enum.KeyCode.R then
				if Running then
					Running = false
					Humanoid.WalkSpeed = 16
				else
					Running = true
				end
			end
		end)

		RunService.RenderStepped:Connect(function(dt)
			if Running then
				Humanoid.WalkSpeed = 28
			end
			for _,v in pairs(Players:GetPlayers()) do
				if v.Character and v ~= Plr then
					local NewPeopleMarked = 0
					local MarkedBeast = false
					if v.Character:FindFirstChild('Hammer') then
						local Highlight = v.Character:FindFirstChild('Highlight')
						local BillBoard = v.Character:WaitForChild('Head'):FindFirstChild('B')
						if Highlight and BillBoard then
							Highlight.OutlineColor = Color3.fromRGB(255,0,0)
							BillBoard.T.TextColor3 = Color3.fromRGB(255, 0, 0)
						elseif not Highlight and not BillBoard then
							BillBoard = CreateBillBoard(v)
							BillBoard.Parent = v.Character:WaitForChild('Head')
							BillBoard.T.TextColor3 = Color3.fromRGB(255, 0, 0)
							Highlight = CreateHighlight()
							Highlight.Parent = v.Character
							Highlight.Adornee = v.Character
							Highlight.OutlineColor = Color3.fromRGB(255,0,0)
							NewPeopleMarked += 1
						end
						MarkedBeast = true
					elseif not v.Character:FindFirstChild('Hammer') then
						local Highlight = v.Character:FindFirstChild('Highlight')
						local BillBoard = v.Character:WaitForChild('Head'):FindFirstChild('B')
						if Highlight and BillBoard then
							Highlight.OutlineColor = Color3.fromRGB(255,255,255)
							BillBoard.T.TextColor3 = Color3.fromRGB(255, 255, 255)
						elseif not Highlight and not BillBoard then
							BillBoard = CreateBillBoard(v)
							BillBoard.Parent = v.Character:WaitForChild('Head')
							BillBoard.T.TextColor3 = Color3.fromRGB(255, 255, 255)
							Highlight = CreateHighlight()
							Highlight.Parent = v.Character
							Highlight.Adornee = v.Character
							Highlight.OutlineColor = Color3.fromRGB(255,255,255)
							NewPeopleMarked += 1
						end
					end
					if NewPeopleMarked >= 1 then
						local NotificationName = 'People Marked'
						local NotificationNote
						if MarkedBeast then
							NotificationNote = 'Marked '..NewPeopleMarked..' New People, And A Beast!'
						else
							NotificationNote = 'Marked '..NewPeopleMarked..' New People!'
						end
						StarterGui:SetCore("SendNotification",{Title = NotificationName; Text = NotificationNote;})
					end
				end
			end
		end)
	end)
	local button = textButton1
	local frame = frame
	local button2 = textButton
	local screengui = frame.Parent 
	local StarterGui = game:GetService("StarterGui")

	local function onButtonClicked()
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
