-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextButton_4 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UICorner_6 = Instance.new("UICorner")
local TextButton_5 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 32, 129)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.444020361, 0, 0.835192084, 0)
Frame.Rotation = 7.500
Frame.Size = UDim2.new(0, 175, 0, 133)
Frame.Visible = false

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Frame_2.Rotation = -7.500
Frame_2.Size = UDim2.new(0, 175, 0, 133)

UICorner.Parent = Frame_2

ScrollingFrame.Parent = Frame_2
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(0, 175, 0, 133)
ScrollingFrame.ScrollBarThickness = 3

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

TextButton.Parent = ScrollingFrame
TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton.Size = UDim2.new(1, 0, 0, 25)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "Remove Useless Buildings"
TextButton.TextColor3 = Color3.fromRGB(255, 32, 129)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.TextXAlignment = Enum.TextXAlignment.Left

UICorner_2.Parent = TextButton

TextButton_2.Parent = ScrollingFrame
TextButton_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton_2.Size = UDim2.new(1, 0, 0, 25)
TextButton_2.Visible = false
TextButton_2.Font = Enum.Font.Gotham
TextButton_2.Text = "Toggle Grass"
TextButton_2.TextColor3 = Color3.fromRGB(255, 32, 129)
TextButton_2.TextSize = 16.000
TextButton_2.TextWrapped = true

UICorner_3.Parent = TextButton_2

TextButton_3.Parent = ScrollingFrame
TextButton_3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton_3.Size = UDim2.new(1, 0, 0, 25)
TextButton_3.Font = Enum.Font.Gotham
TextButton_3.Text = "Remove Other Cars"
TextButton_3.TextColor3 = Color3.fromRGB(255, 32, 129)
TextButton_3.TextSize = 16.000
TextButton_3.TextWrapped = true

UICorner_4.Parent = TextButton_3

TextButton_4.Parent = ScrollingFrame
TextButton_4.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton_4.Size = UDim2.new(1, 0, 0, 25)
TextButton_4.Font = Enum.Font.Gotham
TextButton_4.Text = "African Water"
TextButton_4.TextColor3 = Color3.fromRGB(255, 32, 129)
TextButton_4.TextSize = 16.000
TextButton_4.TextWrapped = true

UICorner_5.Parent = TextButton_4

UICorner_6.Parent = Frame

TextButton_5.Parent = ScreenGui
TextButton_5.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextButton_5.Position = UDim2.new(0.555343509, 0, 0.980173469, 0)
TextButton_5.Size = UDim2.new(0, 72, 0, 16)
TextButton_5.Font = Enum.Font.Gotham
TextButton_5.Text = "Optimize"
TextButton_5.TextColor3 = Color3.fromRGB(255, 32, 129)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true

UICorner_7.Parent = TextButton_5

-- Scripts:

local function CYZWNS_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local active = false
	
	script.Parent.Activated:Connect(function()
		if active == false then
			active = true
			while wait(1) do
				for i,v in pairs(game.Workspace.Buildings:GetChildren()) do
					if v.Name ~= "Dealers" and v.Name ~= "Body Shops" then
						v:Destroy()
					end
				end
			end
		end
	end)
end
coroutine.wrap(CYZWNS_fake_script)()
local function SFPMX_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	script.Parent.Activated:Connect(function()
		if game.Workspace.Terrain:GetAttribute("Decoration") then
			--game.Workspace:FindFirstChildOfClass("Terrain").Decoration = false
			game.Workspace.Terrain:SetAttribute("Decoration", false)
		else
			game.Workspace.Terrain:SetAttribute("Decoration", true)
		end
	end)
end
coroutine.wrap(SFPMX_fake_script)()
local function YSTQWW_fake_script() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript', TextButton_4)

	local africa = false
	script.Parent.Activated:Connect(function()
		if africa == false then
			workspace.Terrain.WaterReflectance = 0
			workspace.Terrain.WaterTransparency = 0
			workspace.Terrain.WaterWaveSize = 0
			workspace.Terrain.WaterWaveSpeed = 0
			africa = true
		else
			workspace.Terrain.WaterReflectance = 1
			workspace.Terrain.WaterTransparency = 1
			workspace.Terrain.WaterWaveSize = 0.15
			workspace.Terrain.WaterWaveSpeed = 10
			africa = false
		end
	end)
end
coroutine.wrap(YSTQWW_fake_script)()
local function HNOSHG_fake_script() -- TextButton_5.LocalScript 
	local script = Instance.new('LocalScript', TextButton_5)

	script.Parent.Activated:Connect(function()
		if script.Parent.Parent.Frame.Visible == true then
			script.Parent.Parent.Frame.Visible = false
		else
			script.Parent.Parent.Frame.Visible = true
		end
	end)
end
coroutine.wrap(HNOSHG_fake_script)()
