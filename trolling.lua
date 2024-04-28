local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "V1rtual Hub - FR ScriptHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", 
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
	Min = 16,
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
	Min = 50,
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
	Min = 14,
	Max = 24,
	Default = 14,
	Color = Color3.fromRGB(119, 221, 119),
	Increment = 1,
	ValueName = "Time",
	Callback = function(Value)
        game.GetService.Lightning.TimeofDay = (Value)
	end    
})

OrionLib:Init()
