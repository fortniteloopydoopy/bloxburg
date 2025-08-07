-- services
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local PlayerGui = game:GetService("Players").LocalPlayer.PlayerGui
local player = Players.LocalPlayer

-- function ok
function Tween(obj, speed, array, additional)
	local add = additional or { Enum.EasingStyle.Linear, Enum.EasingDirection.Out }
	local tween = TweenService:Create(obj, TweenInfo.new(speed, table.unpack(add)), array)
	tween:Play()
	tween.Completed:Wait()
end

if CoreGui:FindFirstChild("tools") then
	CoreGui.tools:Destroy()
end

local Library = {}

function Library:Window()
	local http_request = request or (syn and syn.request) or (http and http.request)
	local tools = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local LeftFrame = Instance.new("Frame")
	local LeftFrameCorner = Instance.new("UICorner")
	local Shade = Instance.new("ImageLabel")
	local Title = Instance.new("TextLabel")
	local Discord = Instance.new("TextButton")
	local TabHolder = Instance.new("Frame")
	local TabList = Instance.new("UIListLayout")
	local Username = Instance.new("TextLabel")
	local UsernameScale = Instance.new("UITextSizeConstraint")
	local RobloxIcon = Instance.new("ImageLabel")
	local RobloxIconRoundify = Instance.new("UICorner")
	local MainFrameCorner = Instance.new("UICorner")
	local Pages = Instance.new("Folder")
	local NotificationHolder = Instance.new("Frame")
	local NotificationHolderCorner = Instance.new("UICorner")

	tools.Name = "tools"
	tools.Parent = CoreGui
	tools.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = tools
	MainFrame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.199287176, 0, 0.313598394, 0)
	MainFrame.Size = UDim2.new(0, 575, 0, 402)

	LeftFrame.Name = "LeftFrame"
	LeftFrame.Parent = MainFrame
	LeftFrame.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
	LeftFrame.BorderSizePixel = 0
	LeftFrame.Size = UDim2.new(0, 150, 0, 402)

	LeftFrameCorner.CornerRadius = UDim.new(0, 6)
	LeftFrameCorner.Name = "LeftFrameCorner"
	LeftFrameCorner.Parent = LeftFrame

	Shade.Name = "Shade"
	Shade.Parent = LeftFrame
	Shade.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shade.BackgroundTransparency = 1.000
	Shade.Position = UDim2.new(-0.100000001, 0, -0.0348258689, 0)
	Shade.Size = UDim2.new(0, 179, 0, 431)
	Shade.Image = "rbxassetid://4996891970"
	Shade.ImageColor3 = Color3.fromRGB(30, 34, 40)
	Shade.ScaleType = Enum.ScaleType.Slice
	Shade.SliceCenter = Rect.new(20, 20, 280, 280)

	Title.Name = "Title"
	Title.Parent = LeftFrame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0199999996, 0, 0, 0)
	Title.Size = UDim2.new(0, 140, 0, 33)
	Title.Font = Enum.Font.GothamBold
	Title.Text = "Bloxburg Tools"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 17.000
	Title.TextStrokeTransparency = 2.000
	Title.TextWrapped = true

	Discord.Name = "Discord"
	Discord.Parent = LeftFrame
	Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Discord.BackgroundTransparency = 1
	Discord.Position = UDim2.new(0.0199999996, 0, 0.92, 0)
	Discord.Size = UDim2.new(0, 140, 0, 24)
	Discord.Font = Enum.Font.GothamBold
	Discord.Text = ""
	Discord.TextColor3 = Color3.fromRGB(255, 255, 255)
	Discord.TextSize = 13
	Discord.TextStrokeTransparency = 2.000
	Discord.TextWrapped = true

	Discord.MouseButton1Down:Connect(function()
		http_request({
			Url = "http://127.0.0.1:6463/rpc?v=1",
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json",
				["origin"] = "https://discord.com",
			},
			Body = game:GetService("HttpService"):JSONEncode({
				["args"] = {
					["code"] = "",
				},
				["cmd"] = "INVITE_BROWSER",
				["nonce"] = ".",
			}),
		})
	end)

	TabHolder.Name = "TabHolder"
	TabHolder.Parent = LeftFrame
	TabHolder.Active = true
	TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabHolder.BackgroundTransparency = 1.000
	TabHolder.BorderSizePixel = 0
	TabHolder.Position = UDim2.new(0.0466666631, 0, 0.194029853, 0)
	TabHolder.Size = UDim2.new(0, 135, 0, 250)

	TabList.Name = "TabList"
	TabList.Parent = TabHolder
	TabList.HorizontalAlignment = Enum.HorizontalAlignment.Center
	TabList.SortOrder = Enum.SortOrder.LayoutOrder
	TabList.Padding = UDim.new(0, 5)

	Username.Name = "Username"
	Username.Parent = LeftFrame
	Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Username.BackgroundTransparency = 1.000
	Username.Position = UDim2.new(0.0599999991, 0, 0.0721393004, 0)
	Username.Size = UDim2.new(0.696713507, 0, 0.0920398012, 0)
	Username.Font = Enum.Font.GothamBold
	Username.Text = player.Name
	Username.TextColor3 = Color3.fromRGB(255, 255, 255)
	Username.TextScaled = true
	Username.TextSize = 13.000
	Username.TextWrapped = true
	Username.TextXAlignment = Enum.TextXAlignment.Left

	UsernameScale.Name = "UsernameScale"
	UsernameScale.Parent = Username
	UsernameScale.MaxTextSize = 13
	UsernameScale.MinTextSize = 10

	RobloxIcon.Name = "RobloxIcon"
	RobloxIcon.Parent = LeftFrame
	RobloxIcon.BackgroundTransparency = 1
	RobloxIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RobloxIcon.Position = UDim2.new(0.723333311, 0, 0.0796019882, 0)
	RobloxIcon.Size = UDim2.new(0, 30, 0, 30)
	RobloxIcon.Image =
		Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)

	RobloxIconRoundify.CornerRadius = UDim.new(0, 25)
	RobloxIconRoundify.Name = "RobloxIconRoundify"
	RobloxIconRoundify.Parent = RobloxIcon

	MainFrameCorner.CornerRadius = UDim.new(0, 12)
	MainFrameCorner.Name = "MainFrameCorner"
	MainFrameCorner.Parent = MainFrame

	Pages.Name = "Pages"
	Pages.Parent = MainFrame

	NotificationHolder.Name = "NotificationHolder"
	NotificationHolder.Parent = MainFrame
	NotificationHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	NotificationHolder.BackgroundTransparency = 1
	NotificationHolder.BorderColor3 = Color3.fromRGB(27, 42, 53)
	NotificationHolder.Size = UDim2.new(0, 575, 0, 402)
	NotificationHolder.BorderSizePixel = 0

	NotificationHolderCorner.CornerRadius = UDim.new(0, 12)
	NotificationHolderCorner.Name = "NotificationHolderCorner"
	NotificationHolderCorner.Parent = NotificationHolder

	Library.settings = {}
	local dragToggle = nil
	local dragSpeed = 0.06
	local dragStart = nil
	local startPos = nil
	local toggleKey = Enum.KeyCode.RightShift

	Library.settings["dragSpeed"] = dragSpeed
	Library.settings["toggleKey"] = toggleKey

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position =
			UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		Tween(MainFrame, Library.settings["dragSpeed"], { Position = position })
	end

	MainFrame.InputBegan:Connect(function(input)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch
		then
			dragToggle = true
			dragStart = input.Position
			startPos = MainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if
			input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch
		then
			if dragToggle then
				updateInput(input)
			end
		end
	end)

	local opened = true

	game:GetService("UserInputService").InputBegan:Connect(function(input)
		if input.KeyCode == Library.settings["toggleKey"] then
			if opened == true then
				if MainFrame.Parent ~= nil then
					MainFrame.ClipsDescendants = true
					local maintween = MainFrame:TweenSize(
						UDim2.new(0, 0, -0.35, 395),
						Enum.EasingDirection.InOut,
						Enum.EasingStyle.Linear,
						0.5,
						true
					)
					opened = false
					wait(0.5)
				end
			elseif opened == false then
				if MainFrame.Parent ~= nil then
					local maintween = MainFrame:TweenSize(
						UDim2.new(0, 575, 0, 402),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Bounce,
						0.55,
						true
					)
					opened = true
					wait(0.5)
					MainFrame.ClipsDescendants = false
				end
			end
		end
	end)

	local Window = {}

	function Window:LoadPage(index)
		for i, v in next, Pages:GetChildren() do
			if i == index then
				v.Visible = true
			end
		end
		local tabindex = 0
		for i, v in next, TabHolder:GetChildren() do
			if i == index + 1 then
				task.spawn(function()
					Tween(v, 0.2, { BackgroundColor3 = Color3.fromRGB(0, 170, 255) })
				end)
			end
		end
	end

	function Library:Prompt(tit, desc, answers)
		local answers = answers or {
			["Positive"] = "Yes",
			["Negative"] = "Cancel",
		}

		local Prompt = Instance.new("Frame")
		local PromptTitle = Instance.new("TextLabel")
		local Yes = Instance.new("TextButton")
		local YesStroke = Instance.new("UIStroke", Yes)
		local YesCorner = Instance.new("UICorner")
		local Cancel = Instance.new("TextButton")
		local CancelStroke = Instance.new("UIStroke", Cancel)
		local CancelCorner = Instance.new("UICorner")
		local PromptDescription = Instance.new("TextLabel")
		local PromptDescriptionScale = Instance.new("UITextSizeConstraint")
		local PromptCorner = Instance.new("UICorner")
		local PromptStroke = Instance.new("UIStroke", Prompt)

		Prompt.Name = "Prompt"
		Prompt.Parent = NotificationHolder
		Prompt.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
		Prompt.BackgroundTransparency = 0.5
		Prompt.BorderSizePixel = 0
		Prompt.Position = UDim2.new(0.290434778, 0, 0.398009956, 0)
		Prompt.Size = UDim2.new(0, 240, 0, 100)

		PromptStroke.Color = Color3.fromRGB(60, 70, 80)
		PromptStroke.Thickness = 2
		PromptStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

		PromptTitle.Name = "PromptTitle"
		PromptTitle.Parent = Prompt
		PromptTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		PromptTitle.BackgroundTransparency = 1.000
		PromptTitle.Size = UDim2.new(0, 240, 0, 16)
		PromptTitle.Font = Enum.Font.GothamBold
		PromptTitle.Text = tit
		PromptTitle.TextColor3 = Color3.fromRGB(0, 170, 255)
		PromptTitle.TextSize = 16.000

		Yes.Name = "Yes"
		Yes.Parent = Prompt
		Yes.BackgroundColor3 = Color3.fromRGB(3, 112, 166)
		Yes.BorderSizePixel = 0
		Yes.Position = UDim2.new(0.0500000007, 0, 0.614444435, 0)
		Yes.Size = UDim2.new(0, 100, 0, 28)
		Yes.Font = Enum.Font.GothamBold
		Yes.Text = answers["Positive"]
		Yes.TextColor3 = Color3.fromRGB(255, 255, 255)
		Yes.TextSize = 14.000
		Yes.AutoButtonColor = false

		YesStroke.Color = Color3.fromRGB(0, 170, 255)
		YesStroke.Thickness = 1
		YesStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

		YesCorner.CornerRadius = UDim.new(0, 8)
		YesCorner.Name = "YesCorner"
		YesCorner.Parent = Yes

		Cancel.Name = "Cancel"
		Cancel.Parent = Prompt
		Cancel.BackgroundColor3 = Color3.fromRGB(3, 112, 166)
		Cancel.BorderSizePixel = 0
		Cancel.Position = UDim2.new(0.533333302, 0, 0.614444435, 0)
		Cancel.Size = UDim2.new(0, 100, 0, 28)
		Cancel.Font = Enum.Font.GothamBold
		Cancel.Text = answers["Negative"]
		Cancel.TextColor3 = Color3.fromRGB(255, 255, 255)
		Cancel.TextSize = 14.000
		Cancel.AutoButtonColor = false

		CancelStroke.Color = Color3.fromRGB(0, 170, 255)
		CancelStroke.Thickness = 1
		CancelStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

		CancelCorner.CornerRadius = UDim.new(0, 8)
		CancelCorner.Name = "CancelCorner"
		CancelCorner.Parent = Cancel

		PromptDescription.Name = "PromptDescription"
		PromptDescription.Parent = Prompt
		PromptDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		PromptDescription.BackgroundTransparency = 1.000
		PromptDescription.Position = UDim2.new(0.0250000004, 0, 0.224444583, 0)
		PromptDescription.Size = UDim2.new(0, 228, 0, 30)
		PromptDescription.Font = Enum.Font.GothamBold
		PromptDescription.Text = desc
		PromptDescription.TextColor3 = Color3.fromRGB(255, 255, 255)
		PromptDescription.TextSize = 16.000

		PromptDescriptionScale.Name = "PromptDescriptionScale"
		PromptDescriptionScale.Parent = PromptDescription
		PromptDescriptionScale.MaxTextSize = 12
		PromptDescriptionScale.MinTextSize = 10

		PromptCorner.CornerRadius = UDim.new(0, 8)
		PromptCorner.Name = "PromptCorner"
		PromptCorner.Parent = Prompt

		task.spawn(function()
			Tween(Prompt, 0.2, { BackgroundTransparency = 0 })
		end)
		task.spawn(function()
			Tween(NotificationHolder, 0.2, { BackgroundTransparency = 0.45 })
		end)

		Cancel.MouseEnter:Connect(function()
			Tween(Cancel, 0.1, { BackgroundColor3 = Color3.fromRGB(0, 170, 255) })
		end)
		Cancel.MouseLeave:Connect(function()
			Tween(Cancel, 0.1, { BackgroundColor3 = Color3.fromRGB(3, 112, 166) })
		end)
		Yes.MouseEnter:Connect(function()
			Tween(Yes, 0.1, { BackgroundColor3 = Color3.fromRGB(0, 170, 255) })
		end)
		Yes.MouseLeave:Connect(function()
			Tween(Yes, 0.1, { BackgroundColor3 = Color3.fromRGB(3, 112, 166) })
		end)

		local result = nil

		Cancel.MouseButton1Click:Connect(function()
			task.spawn(function()
				Tween(NotificationHolder, 0.2, { BackgroundTransparency = 1 })
			end)
			task.spawn(function()
				Tween(Prompt, 0.2, { BackgroundTransparency = 1 })
			end)
			task.spawn(function()
				Tween(Yes, 0.2, { BackgroundTransparency = 1 })
				Yes:Destroy()
			end)
			task.spawn(function()
				Tween(Cancel, 0.2, { BackgroundTransparency = 1 })
				Cancel:Destroy()
			end)
			for i, v in next, Prompt:GetChildren() do
				if v:IsA("TextLabel") or v:IsA("TextButton") then
					task.spawn(function()
						Tween(v, 0.2, { TextTransparency = 1 })
					end)
				elseif v:IsA("UIStroke") then
					task.spawn(function()
						Tween(v, 0.2, { Transparency = 1 })
					end)
				end
			end
			task.wait(0.2)
			Prompt:Destroy()
			result = answers["Negative"]
		end)
		Yes.MouseButton1Click:Connect(function()
			task.spawn(function()
				Tween(NotificationHolder, 0.2, { BackgroundTransparency = 1 })
			end)
			task.spawn(function()
				Tween(Prompt, 0.2, { BackgroundTransparency = 1 })
			end)
			task.spawn(function()
				Tween(Yes, 0.2, { BackgroundTransparency = 1 })
				Yes:Destroy()
			end)
			task.spawn(function()
				Tween(Cancel, 0.2, { BackgroundTransparency = 1 })
				Cancel:Destroy()
			end)
			for i, v in next, Prompt:GetChildren() do
				if v:IsA("TextLabel") or v:IsA("TextButton") then
					task.spawn(function()
						Tween(v, 0.2, { TextTransparency = 1 })
					end)
				elseif v:IsA("UIStroke") then
					task.spawn(function()
						Tween(v, 0.2, { Transparency = 1 })
					end)
				end
			end
			task.wait(0.2)
			Prompt:Destroy()
			result = answers["Positive"]
		end)

		repeat
			task.wait()
		until result

		return result
	end

	function Window:Tab(pagename)
		local Tab = Instance.new("Frame")
		local TabCorner = Instance.new("UICorner")
		local TabName = Instance.new("TextLabel")
		local TabNameScale = Instance.new("UITextSizeConstraint")
		local TabTrigger = Instance.new("TextButton")
		local Page = Instance.new("ScrollingFrame")
		local PageList = Instance.new("UIListLayout")

		Tab.Name = "Tab"
		Tab.Parent = TabHolder
		Tab.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
		Tab.Position = UDim2.new(0.0370370373, 0, 0, 0)
		Tab.Size = UDim2.new(0, 125, 0, 37)

		TabCorner.CornerRadius = UDim.new(0, 8)
		TabCorner.Name = "TabCorner"
		TabCorner.Parent = Tab

		TabName.Name = "TabName"
		TabName.Parent = Tab
		TabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabName.BackgroundTransparency = 1.000
		TabName.Position = UDim2.new(0.0837143585, 0, 0.221291795, 0)
		TabName.Size = UDim2.new(0, 103, 0, 20)
		TabName.Font = Enum.Font.GothamBold
		TabName.Text = pagename
		TabName.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabName.TextScaled = true
		TabName.TextSize = 13
		TabName.TextWrapped = true

		TabNameScale.Name = "TabNameScale"
		TabNameScale.Parent = TabName
		TabNameScale.MaxTextSize = 13
		TabNameScale.MinTextSize = 10

		TabTrigger.Name = "TabTrigger"
		TabTrigger.Parent = Tab
		TabTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabTrigger.BackgroundTransparency = 1.000
		TabTrigger.Size = UDim2.new(0, 125, 0, 37)
		TabTrigger.Font = Enum.Font.GothamBold
		TabTrigger.Text = ""
		TabTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
		TabTrigger.TextSize = 14.000

		Page.Name = "Page"
		Page.Parent = Pages
		Page.Active = true
		Page.BackgroundTransparency = 1
		Page.BorderSizePixel = 0
		Page.Position = UDim2.new(0.274782598, 0, 0.03233831, 0)
		Page.Size = UDim2.new(0, 407, 0, 376)
		Page.BottomImage = ""
		Page.CanvasPosition = Vector2.new(0, 0)
		Page.ScrollBarThickness = 2
		Page.TopImage = ""
		Page.Visible = false
		Page.CanvasSize = UDim2.new(0, 0, 0, 0)

		PageList.Name = "PageList"
		PageList.Parent = Page
		PageList.HorizontalAlignment = Enum.HorizontalAlignment.Center
		PageList.SortOrder = Enum.SortOrder.LayoutOrder
		PageList.Padding = UDim.new(0, 5)

		TabTrigger.MouseButton1Click:Connect(function()
			for i, v in next, TabHolder:GetChildren() do
				if not v:IsA("UIListLayout") and v ~= Tab then
					task.spawn(function()
						Tween(v, 0.2, { BackgroundColor3 = Color3.fromRGB(0, 170, 255) })
					end)
				end
			end
			for i, v in next, Pages:GetChildren() do
				if v ~= Page then
					v.Visible = false
				end
			end
			task.spawn(function()
				Tween(Tab, 0.2, { BackgroundColor3 = Color3.fromRGB(3, 112, 166) })
			end)
			Page.Visible = true
		end)

		local OuterContainer = {}

		function OuterContainer:Section(secname)
			local Section = Instance.new("Frame")
			local SectionText = Instance.new("TextLabel")
			local SectionTextScale = Instance.new("UITextSizeConstraint")
			local SectionList = Instance.new("UIListLayout")
			local SectionCorner = Instance.new("UICorner")

			Section.Name = "Section"
			Section.Parent = Page
			Section.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
			Section.BorderSizePixel = 0
			Section.Position = UDim2.new(-0.00122850109, 0, -1.14078546, 0)
			Section.Size = UDim2.new(0, 400, 0, 40 + 5)

			SectionText.Name = "SectionText"
			SectionText.Parent = Section
			SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionText.BackgroundTransparency = 1.000
			SectionText.Position = UDim2.new(0.232500002, 0, 0, 0)
			SectionText.Size = UDim2.new(0, 325, 0, 40)
			SectionText.Font = Enum.Font.GothamBold
			SectionText.Text = secname
			SectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
			SectionText.TextScaled = true
			SectionText.TextSize = 18.000
			SectionText.TextWrapped = true

			SectionTextScale.Name = "SectionTextScale"
			SectionTextScale.Parent = SectionText
			SectionTextScale.MaxTextSize = 18

			SectionList.Name = "SectionList"
			SectionList.Parent = Section
			SectionList.HorizontalAlignment = Enum.HorizontalAlignment.Center
			SectionList.SortOrder = Enum.SortOrder.LayoutOrder
			SectionList.Padding = UDim.new(0, 5)

			SectionCorner.CornerRadius = UDim.new(0, 8)
			SectionCorner.Name = "SectionCorner"
			SectionCorner.Parent = Section

			local Container = {}

			function Container:Button(butname, callback)
				local Button = Instance.new("Frame")
				local ButtonCorner = Instance.new("UICorner")
				local ButtonText = Instance.new("TextLabel")
				local ButtonTrigger = Instance.new("TextButton")

				Button.Name = "Button"
				Button.Parent = Section
				Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
				Button.Position = UDim2.new(0.0306122452, 0, 0.239263803, 0)
				Button.Size = UDim2.new(0, 373, 0, 42)

				ButtonCorner.CornerRadius = UDim.new(0, 8)
				ButtonCorner.Name = "ButtonCorner"
				ButtonCorner.Parent = Button

				ButtonText.Name = "ButtonText"
				ButtonText.Parent = Button
				ButtonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonText.BackgroundTransparency = 1.000
				ButtonText.Position = UDim2.new(0.0965147465, 0, 0.142857149, 0)
				ButtonText.Size = UDim2.new(0, 300, 0, 30)
				ButtonText.Font = Enum.Font.GothamBold
				ButtonText.Text = butname
				ButtonText.TextColor3 = Color3.fromRGB(255, 255, 255)
				ButtonText.TextSize = 14.000

				ButtonTrigger.Name = "ButtonTrigger"
				ButtonTrigger.Parent = Button
				ButtonTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonTrigger.BackgroundTransparency = 1.000
				ButtonTrigger.Size = UDim2.new(0, 373, 0, 42)
				ButtonTrigger.Font = Enum.Font.GothamBold
				ButtonTrigger.Text = ""
				ButtonTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
				ButtonTrigger.TextSize = 14.000
				ButtonTrigger.TextWrapped = true

				ButtonTrigger.MouseButton1Click:Connect(function()
					task.spawn(function()
						Tween(ButtonText, 0.1, { TextSize = 7 })
						Tween(ButtonText, 0.2, { TextSize = 14 })
					end)
					callback()
				end)

				Section.Size = Section.Size + UDim2.new(0, 0, 0, 42 + 5)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
			end

			function Container:Toggle(togname, toggled, callback)
				local Toggle = Instance.new("Frame")
				local ToggleCorner = Instance.new("UICorner")
				local ToggleText = Instance.new("TextLabel")
				local ToggleOut = Instance.new("Frame")
				local ToggleOutCorner = Instance.new("UICorner")
				local ToggleInner = Instance.new("Frame")
				local ToggleInnerCorner = Instance.new("UICorner")
				local ToggleTrigger = Instance.new("TextButton")

				Toggle.Name = "Toggle"
				Toggle.Parent = Section
				Toggle.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
				Toggle.Position = UDim2.new(0.0306122452, 0, 0.239263803, 0)
				Toggle.Size = UDim2.new(0, 373, 0, 42)

				ToggleCorner.CornerRadius = UDim.new(0, 8)
				ToggleCorner.Name = "ToggleCorner"
				ToggleCorner.Parent = Toggle

				ToggleText.Name = "ToggleText"
				ToggleText.Parent = Toggle
				ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleText.BackgroundTransparency = 1.000
				ToggleText.Position = UDim2.new(0.040214479, 0, 0.142857149, 0)
				ToggleText.Size = UDim2.new(0, 300, 0, 30)
				ToggleText.Font = Enum.Font.GothamBold
				ToggleText.Text = togname
				ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
				ToggleText.TextSize = 14.000
				ToggleText.TextWrapped = true
				ToggleText.TextXAlignment = Enum.TextXAlignment.Left

				ToggleOut.Name = "ToggleOut"
				ToggleOut.Parent = Toggle
				ToggleOut.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
				ToggleOut.Position = UDim2.new(0.844503999, 0, 0.261904716, 0)
				ToggleOut.Size = UDim2.new(0, 44, 0, 20)

				ToggleOutCorner.CornerRadius = UDim.new(0, 10)
				ToggleOutCorner.Name = "ToggleOutCorner"
				ToggleOutCorner.Parent = ToggleOut

				ToggleInner.Name = "ToggleInner"
				ToggleInner.Parent = ToggleOut
				ToggleInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleInner.Position = UDim2.new(0.0799999982, 0, 0.150000006, 0)
				ToggleInner.Size = UDim2.new(0, 14, 0, 14)

				ToggleInnerCorner.CornerRadius = UDim.new(0, 50)
				ToggleInnerCorner.Name = "ToggleInnerCorner"
				ToggleInnerCorner.Parent = ToggleInner

				ToggleTrigger.Name = "ToggleTrigger"
				ToggleTrigger.Parent = Toggle
				ToggleTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleTrigger.BackgroundTransparency = 1.000
				ToggleTrigger.Size = UDim2.new(0, 373, 0, 42)
				ToggleTrigger.Font = Enum.Font.GothamBold
				ToggleTrigger.Text = ""
				ToggleTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
				ToggleTrigger.TextScaled = true
				ToggleTrigger.TextSize = 14.000
				ToggleTrigger.TextWrapped = true

				if toggled then
					ToggleInner.Position = UDim2.new(0.629999982, 0, 0.150000006, 0)
					ToggleOut.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
				end

				ToggleTrigger.MouseButton1Click:Connect(function()
					toggled = not toggled
					task.spawn(function()
						callback(toggled)
					end)
					if toggled then
						task.spawn(function()
							Tween(ToggleInner, 0.2, { Position = UDim2.new(0.629999982, 0, 0.150000006, 0) })
						end)
						Tween(ToggleOut, 0.2, { BackgroundColor3 = Color3.fromRGB(0, 170, 255) })
					end
					if not toggled then
						task.spawn(function()
							Tween(ToggleInner, 0.2, { Position = UDim2.new(0.0799999982, 0, 0.150000006, 0) })
						end)
						Tween(ToggleOut, 0.2, { BackgroundColor3 = Color3.fromRGB(200, 200, 200) })
					end
				end)

				Section.Size = Section.Size + UDim2.new(0, 0, 0, 42 + 5)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
			end

			function Container:Slider(sldname, min, max, start, callback)
				local Slider = Instance.new("Frame")
				local SliderCorner = Instance.new("UICorner")
				local SliderText = Instance.new("TextLabel")
				local SliderOut = Instance.new("Frame")
				local SliderOutCorner = Instance.new("UICorner")
				local SliderIn = Instance.new("Frame")
				local SliderInCorner = Instance.new("UICorner")
				local SliderTrigger = Instance.new("TextButton")
				local SliderValue = Instance.new("TextLabel")

				Slider.Name = "Slider"
				Slider.Parent = Section
				Slider.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
				Slider.Position = UDim2.new(0.0337500013, 0, 0.685827076, 0)
				Slider.Size = UDim2.new(0, 373, 0, 75)

				SliderCorner.CornerRadius = UDim.new(0, 8)
				SliderCorner.Name = "SliderCorner"
				SliderCorner.Parent = Slider

				SliderText.Name = "SliderText"
				SliderText.Parent = Slider
				SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderText.BackgroundTransparency = 1.000
				SliderText.Position = UDim2.new(0.040214479, 0, 0.0761905909, 0)
				SliderText.Size = UDim2.new(0, 274, 0, 25)
				SliderText.Font = Enum.Font.GothamBold
				SliderText.Text = sldname
				SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderText.TextSize = 14.000
				SliderText.TextWrapped = true
				SliderText.TextXAlignment = Enum.TextXAlignment.Left

				SliderOut.Name = "SliderOut"
				SliderOut.Parent = Slider
				SliderOut.BackgroundColor3 = Color3.fromRGB(3, 112, 166)
				SliderOut.Position = UDim2.new(0.0209999997, 0, 0.5, 0)
				SliderOut.Size = UDim2.new(0, 356, 0, 32)

				SliderOutCorner.CornerRadius = UDim.new(0, 8)
				SliderOutCorner.Name = "SliderOutCorner"
				SliderOutCorner.Parent = SliderOut

				SliderIn.Name = "SliderIn"
				SliderIn.Parent = SliderOut
				SliderIn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
				SliderIn.BorderSizePixel = 0
				SliderIn.Size = UDim2.new(0, 178, 0, 32)

				SliderInCorner.CornerRadius = UDim.new(0, 8)
				SliderInCorner.Name = "SliderInCorner"
				SliderInCorner.Parent = SliderIn

				SliderTrigger.Name = "SliderTrigger"
				SliderTrigger.Parent = SliderOut
				SliderTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderTrigger.BackgroundTransparency = 1.000
				SliderTrigger.Size = UDim2.new(0, 356, 0, 32)
				SliderTrigger.Font = Enum.Font.GothamBold
				SliderTrigger.Text = ""
				SliderTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
				SliderTrigger.TextScaled = true
				SliderTrigger.TextSize = 14.000
				SliderTrigger.TextWrapped = true

				SliderValue.Name = "SliderValue"
				SliderValue.Parent = Slider
				SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderValue.BackgroundTransparency = 1.000
				SliderValue.Position = UDim2.new(0.801608562, 0, 0.0761905909, 0)
				SliderValue.Size = UDim2.new(0, 60, 0, 25)
				SliderValue.Font = Enum.Font.GothamBold
				SliderValue.Text = tostring(start) .. "/" .. tostring(max) or "50/100"
				SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderValue.TextSize = 14.000
				SliderValue.TextWrapped = true
				SliderValue.TextXAlignment = Enum.TextXAlignment.Right

				local mouse = player:GetMouse()

				do
					SliderIn.Size = UDim2.new((start or 0) / max, 0, 0, 32)
				end

				local moveconnection
				local releaseconnection
				-- hai
				SliderTrigger.MouseButton1Down:Connect(function()
					local Value = math.floor(
						(((tonumber(max) - tonumber(min)) / 356) * SliderIn.AbsoluteSize.X) + tonumber(min)
					) or 0
					callback(Value)
					SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, 356), 0, 32)

					moveconnection = mouse.Move:Connect(function()
						Value = math.floor(
							(((tonumber(max) - tonumber(min)) / 356) * SliderIn.AbsoluteSize.X) + tonumber(min)
						)
						SliderValue.Text = Value
						callback(Value)
						SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, 356), 0, 32)
					end)

					releaseconnection = game.UserInputService.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							Value = math.floor(
								(((tonumber(max) - tonumber(min)) / 356) * SliderIn.AbsoluteSize.X) + tonumber(min)
							)
							SliderValue.Text = Value
							callback(Value)
							SliderIn.Size =
								UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, 356), 0, 32)

							moveconnection:Disconnect()
							releaseconnection:Disconnect()
						end
					end)
				end)

				Section.Size = Section.Size + UDim2.new(0, 0, 0, 75 + 5)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
			end

			function Container:Textbox(texname, placeholder, callback)
				local Textbox = Instance.new("Frame")
				local TextboxCorner = Instance.new("UICorner")
				local TextboxScaler = Instance.new("Frame")
				local TextboxValue = Instance.new("TextLabel")
				local TextboxTrigger = Instance.new("ImageLabel")
				local TextboxTyper = Instance.new("TextBox")
				local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

				Textbox.Name = "Textbox"
				Textbox.Parent = Section
				Textbox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
				Textbox.ClipsDescendants = true
				Textbox.Position = UDim2.new(0.0337500013, 0, 0.707446814, 0)
				Textbox.Size = UDim2.new(0, 373, 0, 84)

				TextboxCorner.CornerRadius = UDim.new(0, 8)
				TextboxCorner.Name = "TextboxCorner"
				TextboxCorner.Parent = Textbox

				TextboxScaler.Name = "TextboxScaler"
				TextboxScaler.Parent = Textbox
				TextboxScaler.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextboxScaler.BackgroundTransparency = 1.000
				TextboxScaler.Size = UDim2.new(0, 373, 0, 96)

				TextboxValue.Name = "TextboxValue"
				TextboxValue.Parent = TextboxScaler
				TextboxValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextboxValue.BackgroundTransparency = 1.000
				TextboxValue.Position = UDim2.new(0.0428954437, 0, 0.0595238097, 0)
				TextboxValue.Size = UDim2.new(0, 300, 0, 30)
				TextboxValue.Font = Enum.Font.GothamBold
				TextboxValue.Text = texname
				TextboxValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextboxValue.TextSize = 14.000
				TextboxValue.TextWrapped = true
				TextboxValue.TextXAlignment = Enum.TextXAlignment.Left

				TextboxTrigger.Name = "TextboxTrigger"
				TextboxTrigger.Parent = TextboxScaler
				TextboxTrigger.BackgroundTransparency = 1.000
				TextboxTrigger.LayoutOrder = 4
				TextboxTrigger.Position = UDim2.new(0.886058927, 0, 0.107142836, 0)
				TextboxTrigger.Size = UDim2.new(0, 25, 0, 25)
				TextboxTrigger.ZIndex = 2
				TextboxTrigger.Image = "rbxassetid://3926305904"
				TextboxTrigger.ImageColor3 = Color3.fromRGB(255, 255, 255)
				TextboxTrigger.ImageRectOffset = Vector2.new(924, 364)
				TextboxTrigger.ImageRectSize = Vector2.new(36, 36)

				TextboxTyper.Name = "TextboxTyper"
				TextboxTyper.Parent = TextboxScaler
				TextboxTyper.BackgroundColor3 = Color3.fromRGB(3, 112, 166)
				TextboxTyper.BorderSizePixel = 0
				TextboxTyper.Position = UDim2.new(0.040214479, 0, 0.458333343, 0)
				TextboxTyper.Size = UDim2.new(0, 342, 0, 33)
				TextboxTyper.Font = Enum.Font.GothamBold
				TextboxTyper.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
				TextboxTyper.PlaceholderText = placeholder or "..."
				TextboxTyper.Text = ""
				TextboxTyper.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextboxTyper.TextScaled = true
				TextboxTyper.TextSize = 15.000
				TextboxTyper.TextWrapped = true

				local opened = false

				TextboxTyper.FocusLost:Connect(function()
					task.spawn(function()
						callback(TextboxTyper.Text)
					end)
				end)

				UITextSizeConstraint.Parent = TextboxTyper
				UITextSizeConstraint.MaxTextSize = 15

				Section.Size = Section.Size + UDim2.new(0, 0, 0, 84 + 5)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
			end

			function Container:Dropdown(dropname, list, callback)
				local Dropdown = Instance.new("Frame")
				local DropdownCorner = Instance.new("UICorner")
				local DropdownAbove = Instance.new("Frame")
				local DropdownText = Instance.new("TextLabel")
				local DropdownValue = Instance.new("TextBox")
				local DropdownValueScale = Instance.new("UITextSizeConstraint")
				local DropdownList = Instance.new("ScrollingFrame")
				local DropdownListLayout = Instance.new("UIListLayout")

				local count = 0
				local size = 0

				Dropdown.Name = "Dropdown"
				Dropdown.Parent = Section
				Dropdown.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
				Dropdown.ClipsDescendants = true
				Dropdown.Position = UDim2.new(0.0337500013, 0, 0.58627093, 0)
				Dropdown.Size = UDim2.new(0, 373, 0, 42)

				DropdownCorner.CornerRadius = UDim.new(0, 8)
				DropdownCorner.Name = "DropdownCorner"
				DropdownCorner.Parent = Dropdown

				DropdownAbove.Name = "DropdownAbove"
				DropdownAbove.Parent = Dropdown
				DropdownAbove.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownAbove.BackgroundTransparency = 1.000
				DropdownAbove.Size = UDim2.new(0, 373, 0, 42)

				DropdownText.Name = "DropdownText"
				DropdownText.Parent = DropdownAbove
				DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownText.BackgroundTransparency = 1.000
				DropdownText.Position = UDim2.new(0.0428954437, 0, 0.130952477, 0)
				DropdownText.Size = UDim2.new(0, 169, 0, 30)
				DropdownText.Font = Enum.Font.GothamBold
				DropdownText.Text = dropname
				DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropdownText.TextSize = 14.000
				DropdownText.TextWrapped = true
				DropdownText.TextXAlignment = Enum.TextXAlignment.Left

				DropdownValue.Name = "DropdownValue"
				DropdownValue.Parent = DropdownAbove
				DropdownValue.BackgroundColor3 = Color3.fromRGB(3, 112, 166)
				DropdownValue.BackgroundTransparency = 1.000
				DropdownValue.BorderSizePixel = 0
				DropdownValue.Position = UDim2.new(0.517426252, 0, 0.172619045, 0)
				DropdownValue.Size = UDim2.new(0, 166, 0, 30)
				DropdownValue.Font = Enum.Font.GothamBold
				DropdownValue.PlaceholderColor3 = Color3.fromRGB(0, 170, 255)
				DropdownValue.Text = "..."
				DropdownValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropdownValue.TextScaled = true
				DropdownValue.TextSize = 15.000
				DropdownValue.TextWrapped = true
				DropdownValue.TextXAlignment = Enum.TextXAlignment.Right

				DropdownValueScale.Name = "DropdownValueScale"
				DropdownValueScale.Parent = DropdownValue
				DropdownValueScale.MaxTextSize = 15

				DropdownList.Name = "DropdownList"
				DropdownList.Parent = Dropdown
				DropdownList.Active = true
				DropdownList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownList.BackgroundTransparency = 1.000
				DropdownList.BorderSizePixel = 0
				DropdownList.Position = UDim2.new(0.0187667552, 0, 0, 45)
				DropdownList.Size = UDim2.new(0, 356, 0, 0)
				DropdownList.BottomImage = ""
				DropdownList.CanvasPosition = Vector2.new(0, 146)
				DropdownList.ScrollBarThickness = 4
				DropdownList.TopImage = ""

				DropdownListLayout.Name = "DropdownListLayout"
				DropdownListLayout.Parent = DropdownList
				DropdownListLayout.Padding = UDim.new(0, 1)
				DropdownListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				DropdownListLayout.SortOrder = Enum.SortOrder.LayoutOrder

				local IsFocused = false
				local DidChoose = false

				DropdownValue.Focused:Connect(function()
					if DidChoose then
						return
					end
					repeat
						task.wait()
					until IsFocused ~= nil
					if not IsFocused then
						IsFocused = nil
						DidChoose = true
						local twnr = true
						task.spawn(function()
							Tween(Section, 0.3, { Size = Section.Size + UDim2.new(0, 0, 0, size + 5) })
							twnr = false
						end)
						task.spawn(function()
							while twnr do
								Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
								task.wait(0.01)
							end
						end)
						for i, v in next, DropdownList:GetChildren() do
							if v:IsA("TextButton") then
								v.Visible = true
							end
						end
						Tween(Dropdown, 0.3, { Size = UDim2.new(0, 373, 0, 42 + size + 5) })
						task.wait(0.3)
						IsFocused = true
						DidChoose = false
					end
				end)

				DropdownValue:GetPropertyChangedSignal("Text"):Connect(function(prop)
					prop = DropdownValue.Text
					if IsFocused == true then
						if prop == "" then
							for i, v in next, DropdownList:GetChildren() do
								if v:IsA("TextButton") then
									v.Visible = true
								end
							end
						else
							for i, v in next, DropdownList:GetChildren() do
								if v:IsA("TextButton") then
									if string.find(string.lower(v.Text), string.lower(prop)) then
										v.Visible = true
									else
										v.Visible = false
									end
								end
							end
						end
					end
				end)

				for i, v in next, list do
					if count <= 3 then
						size = size + 40 + 1
						DropdownList.Size = DropdownList.Size + UDim2.new(0, 0, 0, 40 + 1)
						count = count + 1
					end

					local Item = Instance.new("TextButton")
					local ItemCorner = Instance.new("UICorner")

					Item.Name = "Item"
					Item.Parent = DropdownList
					Item.BackgroundColor3 = Color3.fromRGB(3, 112, 166)
					Item.Size = UDim2.new(0, 356, 0, 40)
					Item.AutoButtonColor = false
					Item.Font = Enum.Font.GothamBold
					Item.Text = v
					Item.TextColor3 = Color3.fromRGB(255, 255, 255)
					Item.TextSize = 12.000

					ItemCorner.CornerRadius = UDim.new(0, 8)
					ItemCorner.Name = "ItemCorner"
					ItemCorner.Parent = Item

					Item.MouseEnter:Connect(function()
						Tween(Item, 0.1, { BackgroundColor3 = Color3.fromRGB(0, 170, 255) })
					end)
					Item.MouseLeave:Connect(function()
						Tween(Item, 0.1, { BackgroundColor3 = Color3.fromRGB(3, 112, 166) })
					end)

					Item.MouseButton1Click:Connect(function()
						if DidChoose then
							return
						end

						repeat
							task.wait()
						until IsFocused ~= nil
						IsFocused = nil
						DidChoose = true
						DropdownValue.Text = v
						task.spawn(function()
							callback(v)
						end)
						local twnr = true
						task.spawn(function()
							Tween(Section, 0.3, { Size = Section.Size - UDim2.new(0, 0, 0, size + 5) })
							twnr = false
						end)
						task.spawn(function()
							while twnr do
								Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
								task.wait(0.01)
							end
						end)
						task.spawn(function()
							Tween(Dropdown, 0.3, { Size = UDim2.new(0, 373, 0, 42) })
						end)
						task.wait(0.3)
						IsFocused = false
						DidChoose = false
					end)

					DropdownList.CanvasSize = UDim2.new(0, 0, 0, DropdownListLayout.AbsoluteContentSize.Y)
				end

				Section.Size = Section.Size + UDim2.new(0, 0, 0, 42 + 5)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

				DropdownValue.FocusLost:Connect(function()
					task.wait(0.1)
					if DidChoose then
						return
					end
					repeat
						task.wait()
					until IsFocused ~= nil
					if IsFocused then
						DidChoose = true
						IsFocused = nil
						local twnr = true
						task.spawn(function()
							Tween(Section, 0.3, { Size = Section.Size - UDim2.new(0, 0, 0, size + 5) })
							twnr = false
						end)
						task.spawn(function()
							while twnr do
								Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
								task.wait(0.01)
							end
						end)
						task.spawn(function()
							Tween(Dropdown, 0.3, { Size = UDim2.new(0, 373, 0, 42) })
						end)
						task.wait(0.3)
						IsFocused = false
						DidChoose = false
					end
				end)

				local config = {}

				function config:Update(list)
					DropdownList.Size = UDim2.new(0, 356, 0, 0)
					task.spawn(function()
						Tween(Dropdown, 0.2, { Size = UDim2.new(0, 373, 0, 42) })
						Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
					end)
					for i, v in next, DropdownList:GetChildren() do
						if v:IsA("TextButton") then
							v:Destroy()
						end
					end
					if IsFocused then
						IsFocused = nil
						local twnr = true
						task.spawn(function()
							Tween(Section, 0.3, { Size = Section.Size - UDim2.new(0, 0, 0, size + 5) })
							twnr = false
						end)
						task.spawn(function()
							while twnr do
								Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
								task.wait(0.01)
							end
						end)
						task.spawn(function()
							Tween(Dropdown, 0.3, { Size = UDim2.new(0, 373, 0, 42) })
						end)
						task.wait(0.3)
						IsFocused = false
					end
					size = 0
					count = 0
					IsFocused = false

					for i, v in next, list do
						if count <= 3 then
							size = size + 40 + 1
							DropdownList.Size = DropdownList.Size + UDim2.new(0, 0, 0, 40 + 1)
							count = count + 1
						end

						local Item = Instance.new("TextButton")
						local ItemCorner = Instance.new("UICorner")

						Item.Name = "Item"
						Item.Parent = DropdownList
						Item.BackgroundColor3 = Color3.fromRGB(3, 112, 166)
						Item.Size = UDim2.new(0, 356, 0, 40)
						Item.AutoButtonColor = false
						Item.Font = Enum.Font.GothamBold
						Item.Text = v
						Item.TextColor3 = Color3.fromRGB(255, 255, 255)
						Item.TextSize = 12.000

						ItemCorner.CornerRadius = UDim.new(0, 8)
						ItemCorner.Name = "ItemCorner"
						ItemCorner.Parent = Item

						Item.MouseEnter:Connect(function()
							Tween(Item, 0.1, { BackgroundColor3 = Color3.fromRGB(0, 170, 255) })
						end)
						Item.MouseLeave:Connect(function()
							Tween(Item, 0.1, { BackgroundColor3 = Color3.fromRGB(3, 112, 166) })
						end)

						Item.MouseButton1Click:Connect(function()
							if DidChoose then
								return
							end

							DropdownValue.Text = v
							task.spawn(function()
								callback(v)
							end)

							repeat
								task.wait()
							until IsFocused ~= nil
							IsFocused = nil
							DidChoose = true
							local twnr = true
							task.spawn(function()
								Tween(Section, 0.3, { Size = Section.Size - UDim2.new(0, 0, 0, size + 5) })
								twnr = false
							end)
							task.spawn(function()
								while twnr do
									Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
									task.wait(0.01)
								end
							end)
							task.spawn(function()
								Tween(Dropdown, 0.3, { Size = UDim2.new(0, 373, 0, 42) })
							end)
							task.wait(0.3)
							IsFocused = false
							DidChoose = false
						end)

						DropdownList.CanvasSize = UDim2.new(0, 0, 0, DropdownListLayout.AbsoluteContentSize.Y)
					end
				end

				return config
			end

			function Container:Information(title, desc)
				local Information = Instance.new("Frame")
				local InformationCorner = Instance.new("UICorner")
				local InformationTitle = Instance.new("TextLabel")
				local InformationDesc = Instance.new("TextLabel")

				Information.Name = "Information"
				Information.Parent = Section
				Information.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
				Information.ClipsDescendants = true
				Information.Size = UDim2.new(0, 350, 0, 65)

				InformationCorner.CornerRadius = UDim.new(0, 8)
				InformationCorner.Name = "InformationCorner"
				InformationCorner.Parent = Information

				InformationTitle.Name = "InformationTitle"
				InformationTitle.Parent = Information
				InformationTitle.BackgroundTransparency = 1
				InformationTitle.Size = UDim2.new(1, 0, 0, 24)
				InformationTitle.Position = UDim2.new(0, 0, 0, 4)
				InformationTitle.Font = Enum.Font.GothamBold
				InformationTitle.Text = title
				InformationTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				InformationTitle.TextSize = 14
				InformationTitle.TextScaled = false
				InformationTitle.TextWrapped = true
				InformationTitle.TextXAlignment = Enum.TextXAlignment.Center

				InformationDesc.Name = "InformationDesc"
				InformationDesc.Parent = Information
				InformationDesc.BackgroundTransparency = 1
				InformationDesc.Size = UDim2.new(1, -20, 0, 30)
				InformationDesc.Position = UDim2.new(0, 10, 0, 30)
				InformationDesc.Font = Enum.Font.Gotham
				InformationDesc.Text = desc
				InformationDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
				InformationDesc.TextSize = 13
				InformationDesc.TextWrapped = true
				InformationDesc.TextXAlignment = Enum.TextXAlignment.Center
				InformationDesc.TextYAlignment = Enum.TextYAlignment.Top

				Section.Size = Section.Size + UDim2.new(0, 0, 0, 65 + 5)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

				local config = {}

				function config:Title(newt)
					InformationTitle.Text = newt
				end
				function config:Description(newd)
					InformationDesc.Text = newd
				end

				return config
			end

			function Container:MultiSelect(mname, list, callback)
				local Multiselect = Instance.new("Frame")
				local MultiselectCorner = Instance.new("UICorner")
				local MultiselectAbove = Instance.new("Frame")
				local MultiselectText = Instance.new("TextLabel")
				local MultiselectToggle = Instance.new("ImageButton")
				local MultiselectList = Instance.new("ScrollingFrame")
				local MultiselectListLayout = Instance.new("UIListLayout")
				local _MultiselectListLayout = Instance.new("UIListLayout")

				local count = 0
				local size = 0

				Multiselect.Name = "Multiselect"
				Multiselect.Parent = Section
				Multiselect.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
				Multiselect.ClipsDescendants = true
				Multiselect.Position = UDim2.new(0.007500013, 0, 0.658627093, 0)
				Multiselect.Size = UDim2.new(0, 373, 0, 45)

				MultiselectCorner.CornerRadius = UDim.new(0, 8)
				MultiselectCorner.Name = "MultiselectCorner"
				MultiselectCorner.Parent = Multiselect

				MultiselectAbove.Name = "MultiselectAbove"
				MultiselectAbove.Parent = Multiselect
				MultiselectAbove.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				MultiselectAbove.BackgroundTransparency = 1.000
				MultiselectAbove.Size = UDim2.new(0, 373, 0, 42)

				MultiselectText.Name = "MultiselectText"
				MultiselectText.Parent = MultiselectAbove
				MultiselectText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				MultiselectText.BackgroundTransparency = 1.000
				MultiselectText.Position = UDim2.new(0.0428954437, 0, 0.130952477, 0)
				MultiselectText.Size = UDim2.new(0, 169, 0, 30)
				MultiselectText.Font = Enum.Font.GothamBold
				MultiselectText.Text = mname
				MultiselectText.TextColor3 = Color3.fromRGB(255, 255, 255)
				MultiselectText.TextSize = 14.000
				MultiselectText.TextWrapped = true
				MultiselectText.TextXAlignment = Enum.TextXAlignment.Left

				MultiselectToggle.Name = "MultiselectToggle"
				MultiselectToggle.Parent = MultiselectAbove
				MultiselectToggle.BackgroundTransparency = 1.000
				MultiselectToggle.Position = UDim2.new(0.894101858, 0, 0.190476179, 0)
				MultiselectToggle.Rotation = 90.000
				MultiselectToggle.Size = UDim2.new(0, 25, 0, 25)
				MultiselectToggle.ZIndex = 2
				MultiselectToggle.Image = "rbxassetid://3926305904"
				MultiselectToggle.ImageRectOffset = Vector2.new(924, 884)
				MultiselectToggle.ImageRectSize = Vector2.new(36, 36)

				_MultiselectListLayout.Name = "MultiselectListLayout"
				_MultiselectListLayout.Parent = Multiselect
				_MultiselectListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				_MultiselectListLayout.SortOrder = Enum.SortOrder.LayoutOrder

				MultiselectList.Name = "MultiselectList"
				MultiselectList.Parent = Multiselect
				MultiselectList.Active = true
				MultiselectList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				MultiselectList.BackgroundTransparency = 1.000
				MultiselectList.BorderSizePixel = 0
				MultiselectList.Position = UDim2.new(0.3375335142, 0, 0.483870953, 0)
				MultiselectList.Size = UDim2.new(0, 344, 0, 40)
				MultiselectList.BottomImage = ""
				MultiselectList.ScrollBarThickness = 2
				MultiselectList.TopImage = ""

				MultiselectListLayout.Name = "MultiselectListLayout"
				MultiselectListLayout.Parent = MultiselectList
				MultiselectListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				MultiselectListLayout.SortOrder = Enum.SortOrder.LayoutOrder

				local opened = false

				MultiselectToggle.MouseButton1Click:Connect(function()
					if opened then
						local twnr = true
						task.spawn(function()
							Tween(Section, 0.3, { Size = Section.Size - UDim2.new(0, 0, 0, size + 5) })
							twnr = false
						end)
						task.spawn(function()
							while twnr do
								Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
								task.wait(0.01)
							end
						end)
						task.spawn(function()
							Tween(MultiselectToggle, 0.3, { Rotation = 90 })
						end)
						Tween(Multiselect, 0.3, { Size = UDim2.new(0, 373, 0, 42) })
						opened = false
					else
						local twnr = true
						task.spawn(function()
							Tween(Section, 0.3, { Size = Section.Size + UDim2.new(0, 0, 0, size + 5) })
							twnr = false
						end)
						task.spawn(function()
							while twnr do
								Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
								task.wait(0.01)
							end
						end)
						task.spawn(function()
							Tween(MultiselectToggle, 0.3, { Rotation = -90 })
						end)
						Tween(Multiselect, 0.3, { Size = UDim2.new(0, 373, 0, 42 + size + 5) })
						opened = true
					end
				end)

				for i, v in next, list do
					local name = i
					local _toggled = false

					if count <= 3 then
						size = size + 40 + 1
						MultiselectList.Size = MultiselectList.Size + UDim2.new(0, 0, 0, 40 + 1)
						count = count + 1
					end

					local MItem = Instance.new("Frame")
					local MItemText = Instance.new("TextLabel")
					local MItemTrigger = Instance.new("TextButton")
					local MItemTriggerCorner = Instance.new("UICorner")

					MItem.Name = "MItem"
					MItem.Parent = MultiselectList
					MItem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					MItem.BackgroundTransparency = 1.000
					MItem.Size = UDim2.new(0, 344, 0, 40)

					MItemText.Name = "MItemText"
					MItemText.Parent = MItem
					MItemText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					MItemText.BackgroundTransparency = 1.000
					MItemText.Position = UDim2.new(0.0100706229, 0, 0, 0)
					MItemText.Size = UDim2.new(0, 267, 0, 40)
					MItemText.Font = Enum.Font.GothamBold
					MItemText.Text = name
					MItemText.TextColor3 = Color3.fromRGB(255, 255, 255)
					MItemText.TextSize = 14.000
					MItemText.TextXAlignment = Enum.TextXAlignment.Left

					MItemTrigger.Name = "MItemTrigger"
					MItemTrigger.Parent = MItem
					MItemTrigger.BackgroundColor3 = Color3.fromRGB(3, 112, 166)
					MItemTrigger.Position = UDim2.new(0.920058131, 0, 0.275000006, 0)
					MItemTrigger.Size = UDim2.new(0, 17, 0, 17)
					MItemTrigger.AutoButtonColor = false
					MItemTrigger.Font = Enum.Font.GothamBold
					MItemTrigger.Text = ""
					MItemTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
					MItemTrigger.TextSize = 14.000

					MItemTriggerCorner.CornerRadius = UDim.new(0, 8)
					MItemTriggerCorner.Name = "MItemTriggerCorner"
					MItemTriggerCorner.Parent = MItemTrigger

					MItemTrigger.MouseButton1Click:Connect(function()
						if not _toggled then
							_toggled = true
							task.spawn(function()
								Tween(MItemTrigger, 0.14, { BackgroundColor3 = Color3.fromRGB(0, 170, 255) })
							end)
							callback(name, _toggled)
						else
							_toggled = false
							task.spawn(function()
								Tween(MItemTrigger, 0.14, { BackgroundColor3 = Color3.fromRGB(3, 112, 166) })
							end)
							callback(name, _toggled)
						end
					end)

					MultiselectList.CanvasSize = UDim2.new(0, 0, 0, MultiselectListLayout.AbsoluteContentSize.Y)
				end

				Section.Size = Section.Size + UDim2.new(0, 0, 0, 42 + 5)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

				local config = {}

				function config:Update(list)
					MultiselectList.Size = UDim2.new(0, 344, 0, 0)
					if opened then
						local twnr = true
						task.spawn(function()
							Tween(Section, 0.3, { Size = Section.Size - UDim2.new(0, 0, 0, size + 5) })
							twnr = false
						end)
						task.spawn(function()
							while twnr do
								Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
								task.wait(0.01)
							end
						end)
						task.spawn(function()
							Tween(MultiselectToggle, 0.3, { Rotation = 90 })
						end)
						task.spawn(function()
							Tween(Multiselect, 0.3, { Size = UDim2.new(0, 373, 0, 42) })
						end)
					end
					opened = false
					size = 0
					count = 0
					for i, v in next, MultiselectList:GetChildren() do
						if v:IsA("Frame") then
							v:Destroy()
						end
					end

					for i, v in next, list do
						local name = i
						local _toggled = false

						if count <= 3 then
							size = size + 40 + 1
							MultiselectList.Size = MultiselectList.Size + UDim2.new(0, 0, 0, 40 + 1)
							count = count + 1
						end

						local MItem = Instance.new("Frame")
						local MItemText = Instance.new("TextLabel")
						local MItemTrigger = Instance.new("TextButton")
						local MItemTriggerCorner = Instance.new("UICorner")

						MItem.Name = "MItem"
						MItem.Parent = MultiselectList
						MItem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						MItem.BackgroundTransparency = 1.000
						MItem.Size = UDim2.new(0, 344, 0, 40)

						MItemText.Name = "MItemText"
						MItemText.Parent = MItem
						MItemText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						MItemText.BackgroundTransparency = 1.000
						MItemText.Position = UDim2.new(0.0100706229, 0, 0, 0)
						MItemText.Size = UDim2.new(0, 267, 0, 40)
						MItemText.Font = Enum.Font.GothamBold
						MItemText.Text = name
						MItemText.TextColor3 = Color3.fromRGB(217, 217, 217)
						MItemText.TextSize = 14.000
						MItemText.TextXAlignment = Enum.TextXAlignment.Left

						MItemTrigger.Name = "MItemTrigger"
						MItemTrigger.Parent = MItem
						MItemTrigger.BackgroundColor3 = Color3.fromRGB(33, 41, 79)
						MItemTrigger.Position = UDim2.new(0.920058131, 0, 0.275000006, 0)
						MItemTrigger.Size = UDim2.new(0, 17, 0, 17)
						MItemTrigger.AutoButtonColor = false
						MItemTrigger.Font = Enum.Font.GothamBold
						MItemTrigger.Text = ""
						MItemTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
						MItemTrigger.TextSize = 14.000

						MItemTriggerCorner.CornerRadius = UDim.new(0, 3)
						MItemTriggerCorner.Name = "MItemTriggerCorner"
						MItemTriggerCorner.Parent = MItemTrigger

						MItemTrigger.MouseButton1Click:Connect(function()
							if not _toggled then
								_toggled = true
								task.spawn(function()
									Tween(MItemTrigger, 0.14, { BackgroundColor3 = Color3.fromRGB(58, 82, 194) })
								end)
								callback(name, _toggled)
							else
								_toggled = false
								task.spawn(function()
									Tween(MItemTrigger, 0.14, { BackgroundColor3 = Color3.fromRGB(33, 41, 79) })
								end)
								callback(name, _toggled)
							end
						end)

						MultiselectList.CanvasSize = UDim2.new(0, 0, 0, MultiselectListLayout.AbsoluteContentSize.Y)
					end
				end

				return config
			end

			return Container
		end

		return OuterContainer
	end
	return Window
end
return Library, Library.settings
