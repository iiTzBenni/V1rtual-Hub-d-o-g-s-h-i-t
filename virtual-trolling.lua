local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "V1rtual Hub - FE ScriptHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", 
IntroText = "Made by Benny"})

OrionLib:MakeNotification({
	Name = "Thanks for using!",
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

Local:AddParagraph("Note:","Sliders may not work for mobile, scroll down a bit if you're on mobile")

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
	Min = 14,
	Max = 24,
	Default = 14,
	Color = Color3.fromRGB(255, 179, 71),
	Increment = 1,
	ValueName = "Time",
	Callback = function(Value)
        game.Lighting.ClockTime = UDim.new(Value)
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


Local:AddButton({
    Name = "Respawn",
    Callback = function()
              game.Players.LocalPlayer.Character:BreakJoints()
              game.Players.LocalPlayer.Character = game.Players.LocalPlayer.Character:Clone()
              game.Players.LocalPlayer.Character.Parent = game.Players.LocalPlayer.PlayerGui.Parent
              print("Character has been respawned")
      end    
})

Local:AddButton({
	Name = "Rejoin",
	Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/R5X0t5b3/raw"))()
	end    
})

Local:AddButton({
	Name = "Auto Rejoin",
	Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/iWcPBbBD/raw"))()
	end    
})

Local:AddButton({
	Name = "Join Smallest Server",
	Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/B7QW3AE7/raw"))()
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
		loadstring(game:HttpGet("https://pastefy.app/miBjKMup/raw"))()
	end    
})

local Section = Local:AddSection({
	Name = "Utility"
})

Local:AddButton({
	Name = "BTools (SS)",
	Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/xiMPyiR0/raw"))()
	end    
})

Local:AddButton({
	Name = "XRay",
	Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/wmcnqSrX/raw"))();

        loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))();

        OrionLib:MakeNotification({
            Name = "XRay Successful!",
            Content = "Press X to toggle xray!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
	end    
})

Local:AddButton({
	Name = "Anti Fling",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Monster-Scripts/Anti-Fling/main/FE"))()
  	end    
})



OrionLib:Init()
