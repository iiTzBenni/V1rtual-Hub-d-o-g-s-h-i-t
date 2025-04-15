--Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- Window
local Window = OrionLib:MakeWindow({Name = "V1rtual Hub - FE ScriptHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
--notification
OrionLib:MakeNotification({
  Name = "Thanks for using!",
  Content = "Made by Benny",
  Image = "rbxassetid://4483345998",
  Time = 5
})
--Local tab Section
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

Local:AddButton({
  Name = "Anti-AFK",
  Callback = function()
    loadstring(game:HttpGet("https://pastefy.app/4DUFd5xu/raw"))()
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
    loadstring(game:HttpGet("https://pastebin.com/raw/DDFLBJns"))()
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
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
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
        loadstring(game:HttpGet("https://pastefy.app/xhBELPBe/raw"))();
    end    
})

Local:AddButton({
  Name = "Server Stat Icons",
  Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/qSQKxrkt", true))()
    end    
})

Local:AddButton({
    Name = "Chat Bypass",
  Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua"))({
            Settings = {
                Mode = "Normal", -- Type Normal for the user interface. Type "simple" to get a more simple version of BetterBypasser
                Keybind = "G",
                CustomBypasses = {} -- Dictionary table needed here. Not required
            }
        })
    end    
})

Local:AddButton({
    Name = "Display Name Remover",
    Callback = function()
        local Players = game:GetService("Players")
        local localPlayer = Players.LocalPlayer
        localPlayer.CharacterAdded:Connect(function(character)
          local humanoid = character:WaitForChild("Humanoid")
          humanoid.DisplayName = ""  -- Set to empty string to hide the name
        end)
    end    
})


Local:AddButton({
    Name = "Auto Clicker",
    Callback = function()
        getgenv().key = "Hostile"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/The-telligence/main/MC%20KSystem%202"))()
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
  Name = "Headless [R6 & R15]",
  Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/9pm9Jes2/raw"))()
    end    
})

Character:AddButton({
  Name = "Korblox [R15 ONLY]",
  Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Ken-Koblox-and-Headless-respawn-6712"))()
    end    
})

local Section = Character:AddSection({
    Name = "Faces [Comming soon]"
})

local HubGui = Window:MakeTab({
    Name = "Hubs and GUIs",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

local Section = HubGui:AddSection({
    Name = "Total Hubs and GUIs:"
})

HubGui:AddParagraph("Read!","Some hubs and guis may not work as expected and outdated cuz they are free.")

local Section = HubGui:AddSection({
    Name = "Hubs"
})

HubGui:AddButton({
    Name = "Hat Hub",
    Callback = function()
        loadstring(game:HttpGet("https://textbin.net/raw/rvohv1nvuf"))();
      end    
})

HubGui:AddButton({
    Name = "Ez Hub",
    Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
    end
})

HubGui:AddButton({
    Name = "Fire X Hub",
    Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/tyreltrijo/firex/main/firex'))()
    end
})

HubGui:AddButton({
    Name = "VHub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/V31nc/On-Discord/Created/VexHub"))()
    end
})

HubGui:AddButton({
    Name = "Ghost Hub",
    Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
    end
})

HubGui:AddButton({
    Name = "Remote Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zephyr10101/RemoteHub/main/Main",true))()
    end
})

HubGui:AddButton({
    Name = "Game Hub",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/GamerScripter/Game_Hub_v2/raw/main/loader"))()
    end
})

HubGui:AddButton({
    Name = "Nullware Hub",
    Callback = function()
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Heartbeat = game:GetService("RunService").Heartbeat
        
        Heartbeat:Connect(function()
            LocalPlayer.MaximumSimulationRadius = math.huge
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
        end)
        -- Script above is a fix to limbs falling --
        
        -- Nullware Hub V3 | --
        getgenv().Theme = "Purple" -- To change the UI Theme, set this to one of the following options: "Red", "Purple", "Blue", "Green", "Yellow"
        loadstring(game:HttpGet("https://gist.githubusercontent.com/M6HqVBcddw2qaN4s/2d722888a388017c18028cd434c43a25/raw/dcccf1027fe4b90780e47767aaf584389c9d7771/EULma3fU90PUOKUn?identifier=".. (function()local a=""for b=1,256 do local c=math.random(1,3)a=a..string.char(c==1 and math.random(48,57)or c==2 and math.random(97,122)or c==3 and math.random(65,90))end;return a end)()))()
    end
})

HubGui:AddButton({
    Name = "Shizzuru Hub",
    Callback = function()
        -- 𝘚𝘤𝘳𝘪𝘱𝘵
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/ggshizuru/myScriptHub/main/ShizzuruHub.1.lua'),true))()text/plain;charset=UTF-8
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
        loadstring(game:HttpGetAsync("https://pastebin.com/raw/Caniwq2N"))()
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
        loadstring(game:HttpGet(('https://pastebin.com/raw/pyzjWNhk'), true))()
    end
})

Admins:AddButton({
  Name = "Fates Admin",
  Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
    end
})

OrionLib:Init()
