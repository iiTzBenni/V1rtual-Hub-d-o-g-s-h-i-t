local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "V1rtual Hub - FE ScriptHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", 
IntroText = "Made by Benny"})

OrionLib:MakeNotification({
	Name = "Tahnks for using!",
	Content = "Made by Benny",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Local = Window:MakeTab({
	Name = "Local",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Local:AddSection({
	Name = "Local"
})

Local:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(131,105,83),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
	end    
})

Local:AddSlider({
	Name = "Jump Power",
	Min = 0,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(119, 221, 119),
	Increment = 1,
	ValueName = "Power",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
	end    
})

Local:AddSlider({
	Name = "Time",
	Min = 0,
	Max = 24,
	Default = 14,
	Color = Color3.fromRGB(255, 179, 71),
	Increment = 1,
	ValueName = "Time",
	Callback = function(Value)
        game.Lighting.ClockTime = UDim.new(Value / 24, 0)
	end    
})

Local:AddSlider({
	Name = "Gravity",
	Min = 0,
	Max = 500,
	Default = 196,
	Color = Color3.fromRGB(254, 201, 143),
	Increment = 1,
	ValueName = "Gravity",
	Callback = function(Value)
        workspace.Gravity = (Value)
	end    
})

Local:AddParagraph("Note:","Sliders may not work for mobile, scroll all the way down if you're on mobile")

Local:AddButton({
	Name = "Respawn",
	Callback = function()
        game.Players.LocalPlayer.Character:Destroy()
		game.Players.LocalPlayer:LoadCharacter()
  	end    
})

Local:AddButton({
	Name = "Rejoin",
	Callback = function()
		game.Players.LocalPlayer:Kick("Rejoining...")
		wait(1)
		game.Players.LocalPlayer:Rejoin()
	end    
})

Local:AddButton({
	Name = "Auto Rejoin",
	Callback = function()
		game.Players.LocalPlayer.Kick:Connect(function()
            wait(1)
            game.Players.LocalPlayer:Rejoin()
        end)
	end    
})

Local:AddButton({
	Name = "Join Smallest Server",
	Callback = function()
		local smallestServer = nil
		local smallestPlayerCount = math.huge
		for _, server in ipairs(game.Servers:GetChildren()) do
			if server:FindFirstChild("Players") then
				local playerCount = server.Players.PlayerCount.Value
				if playerCount < smallestPlayerCount then
					smallestServer = server
					smallestPlayerCount = playerCount
				end
			end
		end
		if smallestServer then
			game.Players.LocalPlayer:MoveTo(smallestServer)
		end
	end    
})

Local:AddButton({
	Name = "Server Finder",
	Callback = function()
		loadstring(game:HttpGet("https://www.scriptblox.com/raw/Server-Browser_80", true))();
	end    
})

Local:AddButton({
	Name = "Noclip",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
	end    
})

OrionLib:Init()
