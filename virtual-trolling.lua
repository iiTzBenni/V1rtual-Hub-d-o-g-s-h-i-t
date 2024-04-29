local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "V1rtual Hub - FE ScriptHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", 
IntroText = "V1rtual Hub"})

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
		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
	end    
})
  
Local:AddButton({
	Name = "XRay",
	Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/wmcnqSrX/raw"))()
	end    
})

Local:AddButton({
	Name = "Anti Fling",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Monster-Scripts/Anti-Fling/main/FE"))()
  	end    
})

Local:AddButton({
	Name = "ClickTP",
	Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/I5BNncKK/raw"))()
  	end    
})

Local:AddButton({
	Name = "Explorer",
	Callback = function()
        loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
  	end    
})

Local:AddButton({
	Name = "Infinite Jump",
	Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/w4LIHcTO/raw"))()
  	end    
})

Local:AddButton({
	Name = "ESP",
	Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/UqkSMwcP/raw"))()
  	end    
})

Local:AddButton({
	Name = "Invisibility",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/Protected - 2023-05-28T225112.055.lua.txt'),true))()
  	end    
})

Local:AddButton({
	Name = "Fly",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Flexzstr/FlyScript/main/Beta"))()
  	end    
})

Local:AddButton({
	Name = "Hitbox Expander",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/HitboxExpander.lua"))()
  	end    
})

Local:AddButton({
	Name = "Shiftlock",
	Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/WQ9NPeDS'))();
  	end    
})

local Character = Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Character:AddSection({
	Name = "Character Customazition"
})

Character:AddButton({
	Name = "Headless & Korblox",
	Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/H5yx10Jq'))()
  	end    
})

Character:AddButton({
	Name = "Fake Limiteds (SS)",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/scripthubekitten/fakelimitedsv2/main/fakelimitedsv2", true))()
  	end    
})

Character:AddButton({
	Name = "Fake Animation Pack (FE)",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
  	end    
})

local Admins = Window:MakeTab({
	Name = "Admins",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Admins:AddSection({
	Name = "Total Admin Scripts: 6"
})

Admins:AddParagraph("Read!","These are the most popular and most used admin scripts! Other admins script that are lesser-known will not be added.")

local Section = Admins:AddSection({
	Name = "Admin Scipts"
})

Admins:AddButton({
	Name = "Infinite Yield",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/latest.lua'))()
  	end    
})

Admins:AddButton({
	Name = "Nameless Admin",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
  	end    
})

Admins:AddButton({
	Name = "Shattervest Admin",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KRNL2/Shattervast-Admin/main/fe"))()
    end
})

Admins:AddButton({
	Name = "CMD-X",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
    end
})

Admins:AddButton({
	Name = "Reviz Admin",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Hzw9ujiP"))()
    end
})

Admins:AddButton({
	Name = "Fates Admin",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
    end
})

local HubsaGUIs = Window:MakeTab({
	Name = "Hubs and GUIs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = HubsaGUIs:AddSection({
	Name = "Total Hubs and GUIs:"
})

HubsaGUIs:AddParagraph("Read!","Some of the hubs/guis may be outdated, cuz they are free! I will be updating them each updates.")

local Section = HubsaGUIs:AddSection({
	Name = "Hubs"
})

HubsaGUIs:AddButton({
	Name = "Hat Hub",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/6tshcUd2"))()
        HubsaGUIs:AddLabel("Needed hats to use the script: https://pastebin.com/0juSLTy7")
  	end    
})

OrionLib:Init()
