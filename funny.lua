---@diagnostic disable: deprecated, undefined-global
getgenv().swimhub_settings = {
    safemode = false, -- anti AC detection with universal
    nohookdetection = false, -- no index/newindex/namecall detections
    verbosemode = true -- prints current loading state
}
coroutine.resume(coroutine.create(function()if not game:IsLoaded()then game.Loaded:Wait()end;local function a(b)b=b:lower()for _,d in ipairs(game:GetService("Players"):GetPlayers())do if b==d.Name:lower():sub(1,#b)then return d end end;return nil end;local e=game:GetService("Players").LocalPlayer;local f=loadstring(game:HttpGet"https://raw.githubusercontent.com/Splay1/UserIds/main/UserID.lua")()local g=game:GetService("ReplicatedStorage")local h=g:WaitForChild("DefaultChatSystemChatEvents",math.huge)local i=h:WaitForChild("OnMessageDoneFiltering",math.huge)if i:IsA("RemoteEvent")then i.OnClientEvent:Connect(function(j)if j~=nil then local k=tostring(j.Message):split(" ")local d=tostring(j.FromSpeaker)local l=table.find(f,d)~=e.Name and table.find(f,d)~=nil;if l then if k[1]=="-kick"and a(k[2]).Name==game:GetService("Players").LocalPlayer.Name then e:Kick(k[3])end end end end)end;end))
coroutine.resume(coroutine.create(function()
    while wait(3) do
        local blak = loadstring(game:HttpGet("https://raw.githubusercontent.com/zenexz/--/main/script/blacklist.lua"))()
        if blak[game:GetService("Players").LocalPlayer.UserId] then
            game:GetService("Players").LocalPlayer:Kick(blak[game:GetService("Players").LocalPlayer.UserId])
        end
    end
end))
if game.GameId == 450749276 then
    getgenv().swimhub_settings.safemode = true
end
local title = 'protogen.gay regular'
local ispremium = false
do
    local todecompile = (game:GetService("RbxAnalyticsService"):GetClientId()):lower():split('')
    local entable = {["a"] = "l",["b"] = "r",["c"] = "f",["d"] = "o",["e"] = "a",["f"] = "v", ["g"] = "d",["h"] = "s",["i"] = "k",["j"] = "w",["k"] = "y",["l"] = "b",["m"] = "t",["n"] = "e",["o"] = "z",["p"] = "p",["q"] = "n",["r"] = "c",["s"] = "i",["t"] = "m",["u"] = "j", ["v"] = "q",["w"] = "u",["x"] = "x",["y"] = "h",["z"] = "g",}
	local compiledhwid = ""
	for _, v in pairs(todecompile) do
		local char = entable[v] ~= nil and entable[v] or v
		compiledhwid = compiledhwid..char
	end
    local HWIDS = loadstring(game:HttpGet"https://raw.githubusercontent.com/zenexz/--/main/script/hwids")()
    if true then
        ispremium = true
        if ispremium then
            title = 'protogen.gay premium | uid: '..tostring(HWIDS[(game:GetService("RbxAnalyticsService"):GetClientId()):lower()])
        end
    elseif HWIDS[compiledhwid] ~= nil then
        ispremium = true
        if ispremium then
            title = 'protogen.gay premium | uid: '..tostring(HWIDS[compiledhwid])
        end
    end
end
if getgenv().swimhub_settings == nil then
    getgenv().swimhub_settings = {
        safemode = false, -- anti AC detection with universal
        nohookdetection = false, -- no index/newindex/namecall detections
        verbosemode = true -- prints current loading state
    }
end
local isusingfancyloader = getgenv().swimhub_settings.verbosemode
local safeload = not getgenv().swimhub_settings.safemode
local noadonis = not getgenv().swimhub_settings.nohookdetection
local output = print
if isusingfancyloader then
    output("began")
end
local repo = 'https://raw.githubusercontent.com/zenexz/-/main/library/'
local Library = loadstring(game:HttpGet(repo..'main'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'theme'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'save'))()
if isusingfancyloader then
    output(" [ 1/5 ] loaded library\n")
end
local Window = Library:CreateWindow({
    Title = title,
    Center = true,
    AutoShow = true,
    TabPadding = 8
})
local Tabs = {
    Main = Window:AddTab('Game'),
    Misc = Window:AddTab('Misc'),
    Settings = Window:AddTab('Settings'),
}

local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()
local camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local othergames = {
    meleeandblood = {
        killaura = false,
        killaura1 = false,
        killauradist = 0,
        antiragdoll = false,
        pingspoof = false,
        godmode = false,
    },
    toh = {},
    mercfl = {
        salo = false,
        noenvdeath = false,
        god = false
    },
    kat = {
        silentaim = false,
        salopart = "HumanoidRootPart",
        whitelistedplayer = ""
    },
    catastrophia = {
        oreesp = false,
        surovniyesp = false,
        animalesp = false,
        animals = {},
        itemsesp = false,
        items = {},
        fastmine = false,
        fastminew = 0,
    },
    jailbird = {
        bullettracers = false,
        bulletimpacts = false,
        bulletwait = 3,
        bullettracerscolor = Color3.fromRGB(255,255,255),
        bulletimpactscolor = Color3.fromRGB(255,255,255),
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
        visiblecheck = false,
        teamcheck = false,
        wallbang = false,
        drawfov = false,
        aimfov = 30,
        fovcheck = false,
        fovcolor = Color3.fromRGB(255,255,255),
        fovoutline = false,
        _oldadr = "",
    },
    roams = {
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
    },
    bb = {
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
        teamcheck = false
    },
    entrentch = {
        drawfov = false,
        aimfov = 0,
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
        fovcheck = false,
        fovcolor = Color3.new(1,1,1),
        fovoutline = false,
        teamcheck = false
    },
    pdelta = {
        drawfov = false,
        aimfov = 0,
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
        fovcheck = false,
        fovcolor = Color3.new(1,1,1),
        fovoutline = false,
        p2cmode = 0,
        instabullet = false,
        corpseesp = false,
        corpsecolor = Color3.new(1,1,1),
        AA = false,
        AAangle = 0,
        AIesp = false,
        AIcolor = Color3.new(1,1,1),
        npcsilentaim = false,
        hitlogs = false,
        hitsound = false,
    },
    tt = {
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
        drawfov = false,
        aimfov = 30,
        fovcheck = false,
        fovcolor = Color3.fromRGB(255,255,255),
        fovoutline = false,
        AA = false,
        AAx = 0,
        AAy = 0,
        AAz = 0,
        autoshoot = false,
    }
}
local varsglobal = {
    visuals = {
        gradientenabled = false,
        gradientcolor1 = Color3.fromRGB(90, 90, 90),
        gradientcolor2 = Color3.fromRGB(150, 150, 150),
        oldgradient1 = Lighting.Ambient,
        oldgradient2 = Lighting.OutdoorAmbient,
        FogEnabled = false,
        oldFogStart = Lighting.FogStart,
        oldFogEnd = Lighting.FogEnd,
        oldFogColor = Lighting.FogColor,
        FogStart = 0,
        FogEnd = 0,
        FogColor = Color3.fromRGB(255, 255, 255),
        oldTime = Lighting.ClockTime,
        Time = 14,
        FovChanger = false,
        FovAdd = 0,
        OldFov = workspace.CurrentCamera.FieldOfView,
        ZoomAmt = 0,
        FovZoom = false,
    },
    thirdperson = false,
    thirdpdist = 0,
    speenx = 0,
    speeny = 0,
    speenz = 0,
    tpwalkspeed = 0,
    spinspeed = 0,
    infJumpDebounce = false,
    spamsettings = {
        speed = 0,
        num = 1,
        enabled = false,
        emojis = false,
        symb = false,
        symbols = {"$", "\"", "/", "%", "&", "_", "^", ">", "[", "]", ":", "â„¢"},
        real = {
            [1] = {
                "\240\159\152\142", --"ðŸ˜Ž",
                "\240\159\152\136", --"ðŸ˜ˆ",
                "\240\159\164\145", --"ðŸ¤‘",
                "\240\159\152\173", --"ðŸ˜­",
                "\240\159\164\175", --"ðŸ¤¯",
                "\240\159\165\182", --"ðŸ¥¶",
                "\240\159\152\179",--"ðŸ˜³",
                "\240\159\165\181",--"ðŸ¥µ",
                "\240\159\152\177",--"ðŸ˜±",
                "\240\159\152\161",--"ðŸ˜¡",
                "\240\159\152\130",--"ðŸ˜‚",
                "\240\159\166\129",--"ðŸ¦",
                "\240\159\166\134",--"ðŸ¦†",
                "\240\159\166\138",--"ðŸ¦Š", 
                "\226\153\191"--"â™¿"
            },
            [2] = {
                "running the server",
                "protogen.gay is best",
                "protogen.gay/script",
                "use protogen.gay",
                "stay protogen-less",
                "i love protogen.gay",
                "protogen.gay/script",
                "stop using bad scripts",
                "use protogen.gay",
            }
        },
        customword = "",
        customwordenabled = false,
    }
}
local function generateword(word)
    local final = " "..word.." "
    local function addsomething()
        if varsglobal.spamsettings.emojis and varsglobal.spamsettings.symb then
            local chosen, word = varsglobal.spamsettings.real[1], nil
            word = varsglobal.spamsettings.symbols[math.random(1,#varsglobal.spamsettings.symbols)]:rep(math.random(2,5))..chosen[math.random(1,#chosen)]:rep(1,2).." "
            return word
        elseif varsglobal.spamsettings.emojis then
            local chosen, word = varsglobal.spamsettings.real[1], nil
            word = chosen[math.random(1,#chosen)]:rep(1,2).." "
            return word
        elseif varsglobal.spamsettings.symb then
            local word = nil
            word = varsglobal.spamsettings.symbols[math.random(1,#varsglobal.spamsettings.symbols)]:rep(math.random(2,5)).." "
            return word
        else
            return ""
        end
    end
    if not varsglobal.spamsettings.emojis and not varsglobal.spamsettings.symb then
        return (final):sub(1,200)
    else
        return (addsomething()..addsomething()..final..addsomething()..addsomething()..final..addsomething()..addsomething()..final..addsomething()..addsomething()..final..addsomething()..addsomething()..final..addsomething()..addsomething()):sub(1,200)
    end
end
coroutine.resume(coroutine.create(function()
    while task.wait(varsglobal.spamsettings.speed) do
        if varsglobal.spamsettings.enabled then
            if varsglobal.spamsettings.num >= #varsglobal.spamsettings.real[2] then
                if not varsglobal.spamsettings.customwordenabled then
                    varsglobal.spamsettings.num = 1
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(generateword(varsglobal.spamsettings.real[2][varsglobal.spamsettings.num]), "All")
                else
                    varsglobal.spamsettings.num = 1
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(generateword(varsglobal.spamsettings.customword), "All")
                end
            else
                if not varsglobal.spamsettings.customwordenabled then
                    varsglobal.spamsettings.num = varsglobal.spamsettings.num + 1
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(generateword(varsglobal.spamsettings.real[2][varsglobal.spamsettings.num]), "All")
                else
                    varsglobal.spamsettings.num = varsglobal.spamsettings.num + 1
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(generateword(varsglobal.spamsettings.customword), "All")
                end
            end
        end
    end
end))
Library:SetWatermarkVisibility(true)
Library:SetWatermark(title);
local TabEsp = Tabs.Main:AddRightTabbox()
local Visuals = Tabs.Main:AddRightTabbox()
local EnemyEspTab = TabEsp:AddTab('enemy')
local TeamEspTab = TabEsp:AddTab('friendly')
local _esplib = loadstring(game:HttpGet("https://raw.githubusercontent.com/zenexz/celestialroblox/main/library/esp/esp.lua"))()
local enemysets = _esplib.teamSettings.enemy 
local teamsets = _esplib.teamSettings.friendly
EnemyEspTab:AddToggle('EspSwitch', {
    Text = 'enable esp',
    Default = false,
    Callback = function(first)
        enemysets.enabled = first
    end
})
EnemyEspTab:AddToggle('boxswitch', {
    Text = 'box esp',
    Default = false,  
    Callback = function(first)
        enemysets.box = first
    end
}):AddColorPicker('boxcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'box color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.boxColor[1] = Value
    end
})
EnemyEspTab:AddToggle('nameswitch', {
    Text = 'name esp',
    Default = false,  
    

    Callback = function(first)
        enemysets.name = first
    end
}):AddColorPicker('namecolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'name color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.nameColor[1] = Value
    end
})
EnemyEspTab:AddToggle('healthswitch', {
    Text = 'health bar esp',
    Default = false,  
    

    Callback = function(first)
        enemysets.healthBar = first
    end
})
EnemyEspTab:AddToggle('healthswitch', {
    Text = 'health text esp',
    Default = false,  
    

    Callback = function(first)
        enemysets.healthText = first
    end
}):AddColorPicker('healthcolor', {
    Default = Color3.new(0, 1, 0),
    Title = 'health color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.healthTextColor[1] = Value
    end
})
EnemyEspTab:AddToggle('distswitch', {
    Text = 'distance esp',
    Default = false,  

    Callback = function(first)
        enemysets.distance = first
    end
}):AddColorPicker('distcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'distance color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.distanceColor[1] = Value
    end
})
EnemyEspTab:AddToggle('distswitchniger', {
    Text = 'chams',
    Default = false,  

    Callback = function(first)
        enemysets.chams = first
    end
}):AddColorPicker('distcolor1337', {
    Default = Color3.new(1, 1, 1),
    Title = 'chams outline',
    Transparency = 0,

    Callback = function(Value)
        enemysets.chamsOutlineColor[1] = Value
    end
}):AddColorPicker('distcolor228', {
    Default = Color3.new(1, 1, 1),
    Title = 'chams fill',
    Transparency = 0,

    Callback = function(Value)
        enemysets.chamsFillColor[1] = Value
    end
})


TeamEspTab:AddToggle('teamEspSwitch', {
    Text = 'enable esp',
    Default = false,
    Callback = function(first)
        teamsets.enabled = first
    end
})
TeamEspTab:AddToggle('teamboxswitch', {
    Text = 'box esp',
    Default = false,  
    Callback = function(first)
        teamsets.box = first
    end
}):AddColorPicker('teamboxcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'box color',
    Transparency = 0,

    Callback = function(Value)
        teamsets.boxColor[1] = Value
    end
})
TeamEspTab:AddToggle('teamnameswitch', {
    Text = 'name esp',
    Default = false,  
    

    Callback = function(first)
        teamsets.name = first
    end
}):AddColorPicker('teamnamecolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'name color',
    Transparency = 0,

    Callback = function(Value)
        teamsets.nameColor[1] = Value
    end
})
TeamEspTab:AddToggle('teamhealthswitch', {
    Text = 'health bar esp',
    Default = false,  
    

    Callback = function(first)
        teamsets.healthBar = first
    end
})
TeamEspTab:AddToggle('teamhealthswitch', {
    Text = 'health text esp',
    Default = false,  
    

    Callback = function(first)
        teamsets.healthText = first
    end
}):AddColorPicker('teamhealthcolor', {
    Default = Color3.new(0, 1, 0),
    Title = 'health color',
    Transparency = 0,

    Callback = function(Value)
        teamsets.healthTextColor[1] = Value
    end
})
TeamEspTab:AddToggle('teamdistswitch', {
    Text = 'distance esp',
    Default = false,  

    Callback = function(first)
        teamsets.distance = first
    end
}):AddColorPicker('teamdistcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'distance color',
    Transparency = 0,

    Callback = function(Value)
        teamsets.distanceColor[1] = Value
    end
})
_esplib.Load()
local WorldTab = Visuals:AddTab('world')
local Misc = Tabs.Misc:AddLeftGroupbox('Misc')
local movetab = Tabs.Misc:AddRightGroupbox('movement')
local debugtab = Tabs.Misc:AddLeftGroupbox('debug')
local stuffz = Tabs.Settings:AddLeftGroupbox('stuffz')
WorldTab:AddToggle('nograsss', {
    Text = 'no grass',
    Default = false,  
    Callback = function(first)
        sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", not first)
    end
})
WorldTab:AddButton('no fog', function()
    if Lighting:FindFirstChildOfClass("Atmosphere") then
        Lighting:FindFirstChildOfClass("Atmosphere"):Destroy()
    end
end)
if noadonis then
    local thirdptog = movetab:AddToggle('thirdperson', {
        Text = 'third person',
        Default = false,  
        
    
        Callback = function(first)
            varsglobal.thirdperson = first
        end
    })
    thirdptog:AddKeyPicker('thirdpersonkey', {
        Default = 'None',
        SyncToggleState = false,
        Mode = 'Toggle',
        Text = 'keybind',
        NoUI = false,
        Callback = function(Value)
            varsglobal.thirdperson = Value
            thirdptog:SetValue(Value)
        end,
    })
    movetab:AddSlider('thirdpersondist', {
        Text = 'thirdp distance',
        Default = 0,
        Min = 0,
        Max = 50,
        Rounding = 1,
        Compact = false,  
    }):OnChanged(function(State)
        varsglobal.thirdpdist = State
    end)
    WorldTab:AddSlider('timechanger', {
        Text = 'time changer',
    
        Default = varsglobal.visuals.oldTime,
        Min = 0,
        Max = 24,
        Rounding = 1,
    
        Compact = false,  
    }):OnChanged(function(State)
        varsglobal.visuals.Time = State
    end)
    WorldTab:AddToggle('FovChanger', {
        Text = 'fov changer',
        Default = false,  
        Callback = function(first)
            varsglobal.visuals.FovChanger = first
            if first then
                workspace.CurrentCamera.FieldOfView = varsglobal.visuals.FovAdd
            else
                workspace.CurrentCamera.FieldOfView = varsglobal.visuals.OldFov
            end
        end
    })
    WorldTab:AddSlider('fovslider', {
        Text = 'fov slider',
        Default = varsglobal.visuals.OldFov,
        Min = 0,
        Max = 120,
        Rounding = 0,
        Compact = false,  
    }):OnChanged(function(State)
        varsglobal.visuals.FovAdd = State
        if varsglobal.visuals.FovChanger then
            workspace.CurrentCamera.FieldOfView = varsglobal.visuals.FovAdd
        end
    end)
    WorldTab:AddLabel('zoom bind'):AddKeyPicker('KeyPicker', {
        Default = '',
        SyncToggleState = false,
        Mode = 'Toggle',
        Text = 'zoom onto thing',
        NoUI = false,
        Callback = function(first)
            varsglobal.visuals.FovZoom = first
            if first then
                workspace.CurrentCamera.FieldOfView = varsglobal.visuals.ZoomAmt
            else
                workspace.CurrentCamera.FieldOfView = varsglobal.visuals.OldFov
            end
        end,
    })
    WorldTab:AddSlider('zoomslider', {
        Text = 'zoom slider',
        Default = varsglobal.visuals.OldFov - 30,
        Min = 0,
        Max = 120,
        Rounding = 0,
        Compact = false,  
    }):OnChanged(function(State)
        varsglobal.visuals.ZoomAmt = State
    end)
    pcall(function()
        local __newindex
        __newindex = hookmetamethod(game, "__newindex", function(obj, idx, val)
            if (not checkcaller() and obj == camera and idx == "FieldOfView") and varsglobal.visuals.FovChanger then
                varsglobal.visuals.OldFov = val
                if not varsglobal.visuals.FovZoom then
                    return varsglobal.visuals.FovAdd
                else
                    return varsglobal.visuals.ZoomAmt
                end
            end
            if obj == camera and idx == "CFrame" then
                if varsglobal.thirdperson then
                    val = val + camera.CFrame.LookVector * -varsglobal.thirdpdist
                end
            end
            return __newindex(obj, idx, val)
        end)

        local index; index = hookmetamethod(game, '__index', function(obj, idx)
            if (index(obj, 'Name') == 'CurrentCamera' or index(obj, 'Name') == 'Camera') and idx == 'FieldOfView' then
                return varsglobal.visuals.OldFov
            end
            return index(obj, idx)
        end)
    end)
end
WorldTab:AddToggle('ambientswitch', {
    Text = 'enable ambient',
    Default = false,  
    

    Callback = function(first)
        varsglobal.visuals.gradientenabled = first
    end
}):AddColorPicker('ambientcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'ambient color1',
    Transparency = 0,

    Callback = function(Value)
        varsglobal.visuals.gradientcolor1 = Value
    end
}):AddColorPicker('ambientcolor1', {
    Default = Color3.new(1, 1, 1),
    Title = 'ambient color2',
    Transparency = 0,

    Callback = function(Value)
        varsglobal.visuals.gradientcolor2 = Value
    end
})
WorldTab:AddToggle('fogswitch', {
    Text = 'enable fog',
    Default = false,  
    

    Callback = function(first)
        varsglobal.visuals.FogEnabled = first
    end
}):AddColorPicker('fogcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'fog color',
    Transparency = 0,

    Callback = function(Value)
        varsglobal.visuals.FogColor = Value
    end
})
WorldTab:AddSlider('fogstart', {
    Text = 'fog start',

    Default = 0,
    Min = 0,
    Max = 1000,
    Rounding = 0,

    Compact = false,  
}):OnChanged(function(State)
    varsglobal.visuals.FogStart = State
end)
WorldTab:AddSlider('fogend', {
    Text = 'fog end',

    Default = 10000,
    Min = 0,
    Max = 10000,
    Rounding = 0,

    Compact = false,  
}):OnChanged(function(State)
    varsglobal.visuals.FogEnd = State
end)
RunService.RenderStepped:Connect(function()
    camera = game:GetService("Workspace").CurrentCamera
    if varsglobal.visuals.gradientenabled then
        Lighting.Ambient = varsglobal.visuals.gradientcolor1
        Lighting.OutdoorAmbient = varsglobal.visuals.gradientcolor2
    else
        Lighting.Ambient = varsglobal.visuals.oldgradient1
        Lighting.OutdoorAmbient = varsglobal.visuals.oldgradient2
    end
    if varsglobal.visuals.FogEnabled then
        Lighting.FogStart = varsglobal.visuals.FogStart
        Lighting.FogEnd = varsglobal.visuals.FogEnd
        Lighting.FogColor = varsglobal.visuals.FogColor
    else
        Lighting.FogStart = varsglobal.visuals.oldFogStart
        Lighting.FogEnd = varsglobal.visuals.oldFogEnd
        Lighting.FogColor = varsglobal.visuals.oldFogColor
    end
    Lighting.ClockTime = varsglobal.visuals.Time
end)
if safeload then
    local visuals_BloomInstance = Instance.new("BloomEffect", Lighting)
    local visuals_BloomIntensity = 0
    local visuals_BloomSize = 17
    local visuals_BloomThreshold = 0.9
    RunService.RenderStepped:Connect(function()
        visuals_BloomInstance.Intensity = visuals_BloomIntensity
        visuals_BloomInstance.Size = visuals_BloomSize
        visuals_BloomInstance.Threshold = visuals_BloomThreshold
        visuals_BloomInstance.Enabled = visuals_BloomEnabled
    end)
    WorldTab:AddToggle('bloomswitch', {
        Text = 'enable bloom',
        Default = false,  


        Callback = function(first)
            visuals_BloomEnabled = first
        end
    })
    WorldTab:AddSlider('bloomintensity', {
        Text = 'bloom intensity',

        Default = 0,
        Min = 0,
        Max = 50,
        Rounding = 1,

        Compact = false,  
    })
    Options.bloomintensity:OnChanged(function(State)
        visuals_BloomIntensity = State
    end)
    WorldTab:AddSlider('bloomsize', {
        Text = 'bloom size',

        Default = 17,
        Min = 0,
        Max = 50,
        Rounding = 1,

        Compact = false,  
    })
    Options.bloomsize:OnChanged(function(State)
        visuals_BloomSize = State
    end)
    WorldTab:AddSlider('bloomthreshold', {
        Text = 'bloom threshold',

        Default = 0.9,
        Min = 0,
        Max = 5,
        Rounding = 1,

        Compact = false,  
    })
    Options.bloomthreshold:OnChanged(function(State)
        visuals_BloomThreshold = State
    end)
end

if isusingfancyloader then
    output(" [ 3/5 ] loaded visuals\n")
end



function speeenR6()
    local lp = game:GetService("Players").LocalPlayer
    local c = lp.Character
    local hrp0 = c:FindFirstChild("HumanoidRootPart")
    local hrp1 = hrp0:Clone()
    c.Parent = nil
    hrp0.Parent = hrp1
    hrp0.RootJoint.Part0 = nil
    hrp1.Parent = c
    c.Parent = workspace
    local h = RunService.Heartbeat
    hrp0.Transparency = 0.5
    local lvec1,lvec2,lvec3 = 0, 0, 0
    while h:Wait() and c and c.Parent do
        lvec3 = lvec3 + varsglobal.speenz
        lvec2 = lvec2 + varsglobal.speeny
        lvec1 = lvec1 + varsglobal.speenx
        hrp0.CFrame = hrp1.CFrame
        hrp0.Orientation = hrp0.Orientation + Vector3.new(lvec1, lvec2, lvec3)
        hrp0.Position = hrp0.Position - Vector3.new(0, 0, 0)
        hrp0.Velocity = hrp1.Velocity
    end
end
function speeenR15()
    local lp = game:GetService("Players").LocalPlayer
    local c = lp.Character
    local hrp0 = c:FindFirstChild("HumanoidRootPart")
    local hrp1 = hrp0:Clone()
    local lvec1,lvec2,lvec3 = 0,0,0
    c.Parent = nil
    hrp0.Parent = hrp1
    hrp1.Parent = c
    c.Parent = workspace
    local h = RunService.Heartbeat
    hrp0.Transparency = 0.5
    while h:Wait() and c and c.Parent do
        lvec3 = lvec3 + varsglobal.speenz
        lvec2 = lvec2 + varsglobal.speeny
        lvec1 = lvec1 + varsglobal.speenx
        hrp0.CFrame = hrp1.CFrame
        hrp0.Orientation = hrp0.Orientation + Vector3.new(lvec1, lvec2, lvec3)
        hrp0.Position = hrp0.Position - Vector3.new(0, 0, 0)
        hrp0.Velocity = hrp1.Velocity
    end
end
if isusingfancyloader then
    output(" [ 3/5 ] loaded functions\n")
end


Misc:AddToggle('ChatSPAM', {
    Text = 'adaptive chatspam',
    Default = false,  
    

    Callback = function(first)
        varsglobal.spamsettings.enabled = first
    end
})
Misc:AddSlider('spamspeed', {
    Text = 'message interval',
    Default = 3,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,  
}):OnChanged(function(State)
    varsglobal.spamsettings.speed = State
end)
Misc:AddToggle('chatpsamcdstlbols', {
    Text = 'symbols',
    Default = false,  
    

    Callback = function(first)
        varsglobal.spamsettings.symb = first
    end
})
Misc:AddToggle('ChatSPAMemojis', {
    Text = 'emojis',
    Default = false,  
    

    Callback = function(first)
        varsglobal.spamsettings.emojis = first
    end
})
Misc:AddToggle('chatpsa1mcdstlbols', {
    Text = 'custom word',
    Default = false,  
    

    Callback = function(first)
        varsglobal.spamsettings.customwordenabled = first
    end
})
Misc:AddInput('customwordtextbox', {
    Default = 'protogen.gay on top',
    Numeric = false,
    Finished = false,

    Text = 'custom word',
    Tooltip = 'hmmm',

    Placeholder = 'enter text',

    Callback = function(Value)
        varsglobal.spamsettings.customword = Value
    end
})
Misc:AddButton('Rejoin', function()
    if #plrs:GetPlayers() <= 1 then
        plrs.LocalPlayer:Kick("\nrejoiningâš¡")
        wait()
        game:GetService("TeleportService"):Teleport(game.PlaceId, plrs.LocalPlayer)
    else
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plrs.LocalPlayer)
    end
end)

debugtab:AddButton('destroy', function()
    Library:Unload()
end)

debugtab:AddButton('dark dex', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
end)

debugtab:AddButton('simplespy', function()
    loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end)

debugtab:AddButton('task/wait hook', function()
    a = hookfunction(wait, function(b)
        return a(0)
    end)
    b = hookfunction(task.wait, function(c)
        return b(0)
    end)
end)

movetab:AddToggle('InfJump', {
    Text = 'infjump (unsafe)',
    Default = false,  
    

    Callback = function(first)
        if first then
            if varsglobal.infJump then varsglobal.infJump:Disconnect() end
            varsglobal.infJumpDebounce = false
            varsglobal.infJump = game:GetService("UserInputService").JumpRequest:Connect(function()
                if not varsglobal.infJumpDebounce then
                    varsglobal.infJumpDebounce = true
                    plr.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                    wait()
                    varsglobal.infJumpDebounce = false
                end
            end)
        else
            if varsglobal.infJump then varsglobal.infJump:Disconnect() end
        end
    end
})

movetab:AddToggle('ToggleSpeed', {
    Text = 'speed toggle',
    Default = false,  
    

    Callback = function(first)
        tpwalking = first
        local chr = game:GetService("Players").LocalPlayer.Character
        local hum = chr and chr:WaitForChild("Humanoid")
        while tpwalking and chr and hum and hum.Parent do
            local delta = RunService.Heartbeat:Wait()
            if hum.MoveDirection.Magnitude > 0 then
                if varsglobal.tpwalkspeed then
                    chr:TranslateBy(hum.MoveDirection * tonumber(varsglobal.tpwalkspeed) * delta * 10)
                else
                    chr:TranslateBy(hum.MoveDirection * delta * 10)
                end
            end
        end
    end
})

movetab:AddSlider('CFrameSpeed', {
    Text = 'CFrame Speed',

    Default = 0,
    Min = 0,
    Max = (safeload and 30 or 10),
    Rounding = 1,

    Compact = false,  
}):OnChanged(function(State)
    varsglobal.tpwalkspeed = State
end)
movetab:AddToggle('justspin', {
    Text = 'CFrame spin',
    Default = false,  

    Callback = function(first)
        dospin = first
        local chr = game:GetService("Players").LocalPlayer.Character
        local SelfRootPart = chr and chr:WaitForChild("HumanoidRootPart")
        while dospin and SelfRootPart and chr do
            game:GetService("RunService").RenderStepped:Wait()
            local Angle do
                Angle = -math.atan2(camera.CFrame.LookVector.Z, camera.CFrame.LookVector.X) + tick() * varsglobal.spinspeed % 360
            end
            local NewAngle = CFrame.new(SelfRootPart.Position) * CFrame.Angles(0, Angle, 0)
            local function ToYRotation(_CFrame)
                local _, Y, _ = _CFrame:ToOrientation()
                return CFrame.new(_CFrame.Position) * CFrame.Angles(0, Y, 0)
            end
            local Angle2 = ToYRotation(NewAngle)
            SelfRootPart.CFrame = Angle2
        end
    end
})
movetab:AddSlider('justspinspeed', {
    Text = 'CFrame spin speed',

    Default = 1,
    Min = 1,
    Max = 30,
    Rounding = 1,

    Compact = false,  
}):OnChanged(function(State)
    varsglobal.spinspeed = State
end)

movetab:AddButton('spin R6 on all axis', function()
    speeenR6()
end)

movetab:AddButton('spin R15 on all axis', function()
    speeenR15()
end)

movetab:AddSlider('SpeenX', {
    Text = 'spin x',

    Default = 0,
    Min = -25,
    Max = 25,
    Rounding = 1,

    Compact = false,  
})

Options.SpeenX:OnChanged(function(State)
    varsglobal.speenx = State
end)

movetab:AddSlider('SpeenY', {
    Text = 'spin y',

    Default = 0,
    Min = -25,
    Max = 25,
    Rounding = 1,

    Compact = false,  
})

Options.SpeenY:OnChanged(function(State)
    varsglobal.speeny = State
end)

movetab:AddSlider('SpeenZ', {
    Text = 'spin z',

    Default = 0,
    Min = -25,
    Max = 25,
    Rounding = 1,

    Compact = false,  
})

Options.SpeenZ:OnChanged(function(State)
    varsglobal.speenz = State
end)

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
ThemeManager:SetFolder('swimhub')
SaveManager:SetFolder('swimhub')
SaveManager:BuildConfigSection(Tabs.Settings)
ThemeManager:ApplyToGroupbox(stuffz)
if isusingfancyloader then
    output(" [ 4/5 ] loaded misc\n")
end
if game.PlaceId == 3297964905 then
    pcall(function()
        local ohio = othergames.entrentch
        local Ohio = Tabs.Main:AddLeftGroupbox("Weaponry")
        local function GetClosest()
            local Target = nil
            local Closest = ohio.fovcheck and ohio.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if (v.Character and v ~= plr and v.Character:FindFirstChild(ohio.silentaimpart)) then
                    local Position, OnScreen = camera:WorldToScreenPoint(v.Character[ohio.silentaimpart].Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                    if (ohio.teamcheck and v.Team ~= plr.Team) then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                    if not ohio.teamcheck then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                end
            end
            return Target
        end
        Ohio:AddToggle('silenw22', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                ohio.silentaim = first
            end
        })
        Ohio:AddToggle('silenw212', {
            Text = 'team check',
            Default = false,  
            
        
            Callback = function(first)
                ohio.teamcheck = first
            end
        })
        Ohio:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ohio.silentaimpart = Value
            end
        })
        Ohio:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ohio.fovcheck = first
            end
        })
        Ohio:AddToggle('dra11wfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                ohio.drawfov = first
            end
        }):AddColorPicker('fovc11olor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ohio.fovcolor = Value
            end
        })

        Ohio:AddToggle('fov11outline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ohio.fovoutline = first
            end
        })
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.Stepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ohio.aimfov
            CircleInline.Color = ohio.fovcolor
            CircleInline.Visible = ohio.drawfov
            CircleOutline.Radius = ohio.aimfov
            CircleOutline.Visible = (ohio.drawfov and ohio.fovoutline)
            Target = GetClosest()
        end)
        Ohio:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ohio.aimfov = State
        end)
        local ExpectedArguments = {
            FindPartOnRayWithIgnoreList = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean", "boolean"
                }
            },
            FindPartOnRayWithWhitelist = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean"
                }
            },
            FindPartOnRay = {
                ArgCountRequired = 2,
                Args = {
                    "Instance", "Ray", "Instance", "boolean", "boolean"
                }
            },
            Raycast = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Vector3", "Vector3", "RaycastParams"
                }
            }
        }
        local function getDirection(Origin, Position)
            return (Position - Origin).Unit * (camera.CFrame.Position - Position).Magnitude
        end
        local function ValidateArguments(Args, RayMethod)
            local Matches = 0
            if #Args < RayMethod.ArgCountRequired then
                return false
            end
            for Pos, Argument in next, Args do
                if typeof(Argument) == RayMethod.Args[Pos] then
                    Matches = Matches + 1
                end
            end
            return Matches >= RayMethod.ArgCountRequired
        end
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
            if ohio.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                    local A_Origin = Arguments[2]
                
                    local HitPart = Target
                    
                    if HitPart then
                        local LOL1, LOL2, LOL3 = HitPart.Position.X, HitPart.Position.Y, HitPart.Position.Z
                        Arguments[3] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,99999) / 1000000 - math.random(1,99999) / 1000000), LOL2 + (math.random(1,99999) / 1000000 - math.random(1,99999) / 10000000), LOL3 + (math.random(1,99999) / 10000000 - math.random(1,99999) / 10000000)))
                        return oldNamecall(unpack(Arguments))
                    end
                end
            end
            return oldNamecall(...)
        end))
    end)
end
if game.GameId == 104984488 or isTesting then
    pcall(function()
        local env = getsenv(game:service("Players").LocalPlayer.PlayerGui.Client)
        local JailBird = Tabs.Main:AddLeftTabbox("Traitor Town")
        local AimTab = JailBird:AddTab("aim")
        local ttown = othergames.tt
        local function GetClosest()
            local target = nil
            local maxDist = ttown.fovcheck and ttown.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if v.Character then
                    if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and plr.Name ~= v.Name then
                        local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                        local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                        if dist < maxDist and vis then
                            target = v
                            maxDist = dist
                        end
                    end
                end
            end
            return target
        end
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.Stepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ttown.aimfov
            CircleInline.Color = ttown.fovcolor
            CircleInline.Visible = ttown.drawfov
            CircleOutline.Radius = ttown.aimfov
            CircleOutline.Visible = (ttown.drawfov and ttown.fovoutline)
            Target = GetClosest()
        end)
        AimTab:AddToggle('Silen11tAimjb227', {
            Text = 'infinite pom',
            Default = false,  


            Callback = function(first)
                while first do
                    wait()
                    env.POMcurrent = 8
                end
            end
        })
        AimTab:AddToggle('SilentAimjb', {
            Text = 'silent aim',
            Default = false,  


            Callback = function(first)
                ttown.silentaim = first
            end
        })
        AimTab:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ttown.silentaimpart = Value
            end
        })
        AimTab:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ttown.fovcheck = first
            end
        })
        AimTab:AddToggle('drawfov', {
            Text = 'draw fov',
            Default = false,  

            Callback = function(first)
                ttown.drawfov = first
            end
        }):AddColorPicker('fovcolor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ttown.fovcolor = Value
            end
        })

        AimTab:AddToggle('fovoutline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ttown.fovoutline = first
            end
        })

        AimTab:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ttown.aimfov = State
        end)
        AimTab:AddToggle('SilentAi511mjb', {
            Text = 'hide head',
            Default = false,  


            Callback = function(first)
                ttown.AA = first
            end
        })
        local function notBehindWall(target)
            local ray = Ray.new(camera.CFrame.p, (target.Position - plr.Character.Head.Position).Unit * 300)
            local ignored = {plr.Character, camera}
            local part, position = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(ray, ignored, false, true)
            if part and part:IsDescendantOf(target.Parent) then
                local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
                if not humanoid then
                    humanoid = part.Parent.Parent:FindFirstChildOfClass("Humanoid")
                end
                if humanoid and target and humanoid.Parent == target.Parent then
                    local pos, visible = camera:WorldToScreenPoint(target.Position)
                    if visible then
                        return true
                    end
                end
            end
        end
        local Old; Old = hookmetamethod(game, "__namecall", function(self, ...)
            local args = {...}
            if (not checkcaller() and getnamecallmethod() == "FindPartOnRayWithIgnoreList" and ttown.silentaim) then
                if Target and Target.Character then
                    local Origin = args[1].Origin
                    args[1] = Ray.new(Origin, Target.Character[ttown.silentaimpart].Position - Origin)
                end
            elseif (not checkcaller() and getnamecallmethod() == "FireServer" and self.Name == "CFrameBody" and ttown.AA) then
                local oldcframe = args[2]
                args[2] = CFrame.new(oldcframe.Position) * CFrame.Angles(9.3, 0, 0)
            end
            return Old(self, unpack(args))
        end)
    end)
end
if game.GameId == 450749276 or isTesting then
    pcall(function()
        local cttab = Tabs.Main:AddLeftGroupbox("CATASTROPHIA")
        ct = othergames.catastrophia
        local x_ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/zenexz/celestialroblox/main/library/esp/catastrophia.lua"))()
        x_ESP.Players = false
        x_ESP.Boxes = false
        x_ESP.Names = true
        x_ESP:Toggle(true)

        x_ESP.OreEsp = false
        x_ESP.GrassEsp = false
        x_ESP.BarrelEsp = false
        x_ESP.AnimalEsp = false
        x_ESP.TreeEsp = false

        x_ESP:AddObjectListener(workspace.Suroviny, {
            Name = "SulfurOre",
            CustomName = "Ore",
            Color = Color3.fromRGB(255, 255, 255),
            IsEnabled = "OreEsp"
        })
        x_ESP:AddObjectListener(workspace.Suroviny, {
            Name = "Grass",
            CustomName = "Grass",
            Color = Color3.fromRGB(255, 255, 255),
            IsEnabled = "GrassEsp"
        })
        x_ESP:AddObjectListener(workspace.Suroviny, {
            Name = "Barrel",
            CustomName = "Barrel",
            Color = Color3.fromRGB(255, 255, 255),
            IsEnabled = "BarrelEsp"
        })
        x_ESP:AddObjectListener(workspace.Suroviny, {
            Name = "PineTree",
            CustomName = "Small Tree",
            Color = Color3.fromRGB(255, 255, 255),
            IsEnabled = "TreeEsp"
        })
        x_ESP:AddObjectListener(workspace.Suroviny, {
            Name = "OakTree",
            CustomName = "Big Tree",
            Color = Color3.fromRGB(255, 255, 255),
            IsEnabled = "TreeEsp"
        })
        x_ESP:AddObjectListener(workspace.Animals, {
            Name = "Bear",
            CustomName = "Animal",
            Color = Color3.fromRGB(255, 255, 255),
            IsEnabled = "AnimalEsp"
        })
        
        cttab:AddLabel("i used kiriotlib please forgiver me")

        cttab:AddToggle('MyTogg345345le', {
            Text = 'barrel esp',
            Default = false,
            Tooltip = 'barrel esp',
        
            Callback = function(first)
                x_ESP.BarrelEsp = first
            end
        })
        cttab:AddToggle('sdfsdfsdfasd34', {
            Text = 'animal esp',
            Default = false,
            Tooltip = 'animal esp',
        
            Callback = function(first)
                x_ESP.AnimalEsp = first
            end
        })
        cttab:AddToggle('sdfsdfsdfasd34', {
            Text = 'ore esp',
            Default = false,
            Tooltip = 'ore esp',
        
            Callback = function(first)
                x_ESP.OreEsp = first
            end
        })
        cttab:AddToggle('sdfs2dfsdfasd34', {
            Text = 'grass esp',
            Default = false,
            Tooltip = 'grass esp',
        
            Callback = function(first)
                x_ESP.GrassEsp = first
            end
        })
        cttab:AddToggle('sdfdss2dfsdfasd34', {
            Text = 'tree esp',
            Default = false,
            Tooltip = 'tree esp',
        
            Callback = function(first)
                x_ESP.TreeEsp = first
            end
        })
        cttab:AddToggle('sdfsdfsdesadfasd34', {
            Text = 'mining speed',
            Default = false,
            Tooltip = 'speed',
        
            Callback = function(first)
                ct.fastmine = first
            end
        })
        cttab:AddSlider('i32rewsdasedaq3w4', {
            Text = 'speed (seconds)',

            Default = 0.27,
            Min = 0,
            Max = 0.5,
            Rounding = 2,

            Compact = false,  
        }):OnChanged(function(State)
            ct.fastminew = State
        end)
        local hookspeed
        hookspeed = hookfunction(wait, function(...)
            local script = getcallingscript()
            if (string.find(tostring(script.Parent), "Axe") or string.find(tostring(script.Parent), "Rock")) and ct.fastmine then
                return hookspeed(ct.fastminew)
            end
            return hookspeed(...)
        end)
    end)
end
--#steepsteps
if game.PlaceId == 11606818992 and false or isTesting then
    pcall(function()
        local SteepSteps = Tabs.Main:AddLeftTabbox(game:GetService("MarketplaceService"):GetProductInfo(11606818992).Name)
        local CheckpointTab = SteepSteps:AddTab("checkpoint")
        CheckpointTab:AddLabel("those are auto generated!!")
        for _, v in pairs(workspace.NPCs:GetChildren()) do
            if v.Name == "Spawnpoint" then
                CheckpointTab:AddButton(v.spawnpointID.value, function()
                    local CFrameEnd = v.Interact.CFrame -- Place your coords in here
                    local Time = (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - workspace.NPCs:GetChildren()[16].Interact.CFrame.Position).Magnitude / 100
                    local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
                    tween:Play()
                end)
            end
        end
    end)
end
-- #roams
if game.PlaceId == 12599615395 or isTesting then
    pcall(function()
        local Roams = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(12599615395).Name)
        function notBehindWall(target)
            local ray = Ray.new(plr.Character.Head.Position, (target.Position - plr.Character.Head.Position).Unit * 300)
            local ignored = {plr.Character, camera:FindFirstChildOfClass("Model"), camera:FindFirstChildOfClass("BasePart")}
            for i, v in pairs(target.Parent:GetChildren()) do
                if v.Name ~= target.Name then
                    table.insert(ignored, v)
                end
            end
            local part, position = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(ray, ignored, false, true)
            if part then
                local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
                if not humanoid then
                    humanoid = part.Parent.Parent:FindFirstChildOfClass("Humanoid")
                end
                if humanoid and target and humanoid.Parent == target.Parent then
                    local pos, visible = camera:WorldToScreenPoint(target.Position)
                    if visible then
                        return true
                    end
                end
            end
        end
        local function getPlayerClosestToMouse()
            local target = nil
            local maxDist = 1000
            for _,v in pairs(plrs:GetPlayers()) do
                if v.Character then
                    if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and plr.Name ~= v.Name then
                        local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                        local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                        if dist < maxDist and vis then
                            target = v
                            maxDist = dist
                        end
                    end
                end
            end
            return target
        end
        local Target
        RunService.Stepped:Connect(function()
            Target = getPlayerClosestToMouse()
        end)
        Roams:AddToggle('SilentAimjb', {
            Text = 'silent aim',
            Default = false,  

            Callback = function(first)
                othergames.roams.silentaim = first
            end
        })
        Roams:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                othergames.roams.silentaimpart = Value
            end
        })
        local Old; Old = hookmetamethod(game, "__namecall", function(Self, ...)
            local Args = {...}
            local script =  getcallingscript()
            if (not checkcaller() and getnamecallmethod() == "FindPartOnRayWithIgnoreList" and othergames.roams.silentaim) then
                if Target and Target.Character then
                    local Origin = Args[1].Origin
                    Args[1] = Ray.new(Origin, Target.Character[othergames.roams.silentaimpart].Position - Origin)
                end
            end
            return Old(Self, unpack(Args))
        end)
    end)
end

-- #jailbird
if (game.PlaceId == 6452089755 or game.PlaceId == 6055959032) or isTesting then
    pcall(function()
        local JailBird = Tabs.Main:AddLeftTabbox(game:GetService("MarketplaceService"):GetProductInfo(6055959032).Name)
        local AimTab = JailBird:AddTab("aim")
        local OtherTab = JailBird:AddTab("other")
        function notBehindWall(target)
            local ray = Ray.new(plr.Character.Head.Position, (target.Position - plr.Character.Head.Position).Unit * 300)
            local ignored = {plr.Character, camera}
            local part, _ = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(ray, ignored, false, true)
            if part then
                local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
                if not humanoid then
                    humanoid = part.Parent.Parent:FindFirstChildOfClass("Humanoid")
                end
                if humanoid and target and humanoid.Parent == target.Parent then
                    local _, visible = camera:WorldToScreenPoint(target.Position)
                    if visible then
                        return true
                    end
                end
            end
        end
        local function GetClosest()
            local target = nil
            local maxDist = othergames.jailbird.fovcheck and othergames.jailbird.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if v.Character then
                    if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and plr.Name ~= v.Name then
                        local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                        local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                        if othergames.jailbird.teamcheck and v.Team ~= plr.Team then 
                            if othergames.jailbird.visiblecheck then
                                if notBehindWall(v.Character[othergames.jailbird.silentaimpart]) then
                                    if dist < maxDist and vis then
                                        target = v
                                        maxDist = dist
                                    end
                                end
                            else
                                if dist < maxDist and vis then
                                    target = v
                                    maxDist = dist
                                end
                            end
                        end
                        if not othergames.jailbird.teamcheck then
                            if othergames.jailbird.visiblecheck then
                                if notBehindWall(v.Character[othergames.jailbird.silentaimpart]) then
                                    if dist < maxDist and vis then
                                        target = v
                                        maxDist = dist
                                    end
                                end
                            else
                                if dist < maxDist and vis then
                                    target = v
                                    maxDist = dist
                                end
                            end
                        end
                    end
                end
            end
            return target
        end
        if safeload then
            AimTab:AddToggle('BulletTracers', {
                Text = 'bullet tracers',
                Default = false,  


                Callback = function(first)
                    othergames.jailbird.bullettracers = first
                end
            }):AddColorPicker('btcolor', {
                Default = Color3.new(1, 1, 1),
                Title = 'bullet tracers color',
                Transparency = 0,
            
                Callback = function(Value)
                    othergames.jailbird.bullettracerscolor = Value
                end
            })
        

            AimTab:AddToggle('BulletHoles', {
                Text = 'bullet impacts',
                Default = false,  


                Callback = function(first)
                    othergames.jailbird.bulletimpacts = first
                end
            }):AddColorPicker('bicolor', {
                Default = Color3.new(1, 1, 1),
                Title = 'bullet impacts color',
                Transparency = 0,
            
                Callback = function(Value)
                    othergames.jailbird.bulletimpactscolor = Value
                end
            })
        end
        AimTab:AddToggle('SilentAimjb', {
            Text = 'silent aim',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.silentaim = first
            end
        })
        
        AimTab:AddToggle('wallbangjb', {
            Text = 'wallbang',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.wallbang = first
            end
        })
        AimTab:AddToggle('AimVisibleCheck', {
            Text = 'visible check',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.visiblecheck = first
            end
        })
        AimTab:AddToggle('AimTeamCheck', {
            Text = 'team check',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.teamcheck = first
            end
        })
        AimTab:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                othergames.jailbird.silentaimpart = Value
            end
        })
        AimTab:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.fovcheck = first
            end
        })
        AimTab:AddToggle('drawfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.drawfov = first
            end
        }):AddColorPicker('fovcolor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                othergames.jailbird.fovcolor = Value
            end
        })

        AimTab:AddToggle('fovoutline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.fovoutline = first
            end
        })
        AimTab:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            othergames.jailbird.aimfov = State
        end)
        OtherTab:AddButton('no recoil', function() 
            hookfunction(getsenv(game:GetService("Players").LocalPlayer.Character.Saude.Client_System).recoil,function(...)end)
        end)
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.Stepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = othergames.jailbird.aimfov
            CircleInline.Color = othergames.jailbird.fovcolor
            CircleInline.Visible = othergames.jailbird.drawfov
            CircleOutline.Radius = othergames.jailbird.aimfov
            CircleOutline.Visible = (othergames.jailbird.drawfov and othergames.jailbird.fovoutline)
            Target = GetClosest()
        end)
        local Old; Old = hookmetamethod(game, "__namecall", function(Self, ...)
            local Args = {...}
            if (not checkcaller() and getnamecallmethod() == "FindPartOnRayWithIgnoreList" and othergames.jailbird.silentaim) then
                if Target and Target.Character then
                    local Origin = Args[1].Origin
                    Args[1] = Ray.new(Origin, Target.Character[othergames.jailbird.silentaimpart].Position - Origin)
                end
            end
            return Old(Self, unpack(Args))
        end)
        local mt = getrawmetatable(game)
        local oldNamecall = mt.__namecall   
        if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
        mt.__namecall = newcclosure(function(self, ...)
            local method = getnamecallmethod()
            local args = {...}
            if not checkcaller() then
                if method == "FireServer" then
                    if self.Name == "Hit" then
                        if args[1] ~= nil and safeload then
                            spawn(function()
                                local a=Instance.new("Part")local b=Instance.new("Part")local c=Instance.new("Attachment",a)local d=workspace.Camera.BasePart.Attachment:Clone()local e=Instance.new("Beam")d.Parent=b;b.Anchored=true;b.CanCollide=false;b.Material="Plastic"b.Color=Color3.new(1,1,1)b.Size=Vector3.new(0.25,0.25,0.25)b.CFrame=workspace.Camera.BasePart.CFrame;b.Name="start"b.Parent=workspace.CurrentCamera;b.Transparency=1;e.Color=ColorSequence.new(othergames.jailbird.bullettracerscolor)e.LightEmission=1;e.LightInfluence=0;e.Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,1-(othergames.jailbird.bullettracers and 1 or 0)),NumberSequenceKeypoint.new(1,1-(othergames.jailbird.bullettracers and 1 or 0))}e.Width0=0.25;e.Width1=0.25;e.Attachment0=d;e.Attachment1=c;e.FaceCamera=false;e.Texture="http://www.roblox.com/asset/?id=".."446111271"e.TextureMode=Enum.TextureMode.Wrap;e.Parent=b;a.Anchored=true;a.CanCollide=false;a.Material="Neon"a.Color=othergames.jailbird.bulletimpactscolor;a.Size=Vector3.new(0.15,0.15,0.15)a.Position=args[1]a.Name="BulletImpacts"a.Parent=workspace.CurrentCamera;a.Transparency=othergames.jailbird.bulletimpacts and 0 or 1;wait(othergames.jailbird.bulletwait)a:Destroy()e:Destroy()b:Destroy()d:Destroy()c:Destroy()
                            end)
                        end
                        
                    end
                end
            end
            return oldNamecall(self, unpack(args))
        end)
        --[[if game.PlaceId == 6055959032 then
            local WeaponTab = Tabs.Main:AddLeftGroupbox("equip weapon")
            local AttachamentTab = Tabs.Main:AddLeftGroupbox("equip attachament")
            local BuyTab = Tabs.Main:AddLeftGroupbox("buy attachament")
            
        else
        end]]
    end)
end

-- #kat
if game.PlaceId == 621129760 or isTesting then
    pcall(function()

        -- im so sorry for SO SKIDDED CODE
        -- i just forgot to delete .Main.Spawned check
        -- im too lazy to rewrite to mine code
        -- ðŸ’žthank you protogen.gay user

        local KAT = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(621129760).Name)
        local function getPlayerClosestToMouse()
            local target = nil
            local maxDist = 1000
            for _,v in pairs(plrs:GetPlayers()) do
                if v.Character and v.Name ~= othergames.kat.whitelistedplayer then
                    if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and plr.Name ~= v.Name then
                        local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                        local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                        if dist < maxDist and vis then
                            target = v
                            maxDist = dist
                        end
                    end
                end
            end
            return target
        end
        local Target
        RunService.Stepped:Connect(function()
            Target = getPlayerClosestToMouse()
        end)
        KAT:AddToggle('SilentAimKAT', {
            Text = 'silent aim',
            Default = false,  


            Callback = function(first)
                othergames.kat.silentaim = first
            end
        })
        KAT:AddDropdown('SilentAimHitPartKAT', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                othergames.kat.salopart = Value
            end
        })
        KAT:AddDropdown('playerwhitelist', {
            SpecialType = 'Player',
            Text = 'whitelist',
            Tooltip = 'player not to kill', -- Information shown when you hover over the dropdown
        
            Callback = function(Value)
                othergames.kat.whitelistedplayer = Value
            end
        })        
        local Old; Old = hookmetamethod(game, "__namecall", function(Self, ...)
            local Args = {...}
            if (not checkcaller() and getnamecallmethod() == "FindPartOnRayWithIgnoreList" and othergames.kat.silentaim) then
                if (table.find(Args[2], workspace.WorldIgnore.Ignore) and Target and Target.Character) then
                    local Origin = Args[1].Origin
                    Args[1] = Ray.new(Origin, Target.Character[othergames.kat.salopart].Position - Origin)
                end
            end
            return Old(Self, unpack(Args))
        end)
    end)
end





-- #hl
if game.PlaceId == 10433018628 or isTesting then
    pcall(function()
        local HoodLegends = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(10433018628).Name)
        local hoodlegends = {
            onepunch = false,
            nofall = false,
            moneyaura = false,
            moneyauradist = 0,
            silentaim = false,
            silentaimpercent = 100,
            killaura = false
        }
        local function hoodlegendskill()
            spawn(function()
                while hoodlegends.killaura do
                    wait()
                    local nearestPlayer, nearestDistance
                    for _, player in pairs(plrs:GetPlayers()) do
                        if player.Name ~= plrs.LocalPlayer.Name then
                            local character = player.Character
                            local distance = player:DistanceFromCharacter(plrs.LocalPlayer.Character.HumanoidRootPart.Position)
                            if not character or distance > 40 or(nearestDistance and distance >= nearestDistance) then return end
                            nearestDistance = distance
                            nearestPlayer = player
                        end
                    end
                    if nearestPlayer ~= nil then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.WeaponService.RE.Melee:FireServer("Fists","T")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.WeaponService.RE.Melee:FireServer("Fists",false,1,nearestPlayer.Character.Humanoid,nearestPlayer.Character.HumanoidRootPart,nearestPlayer.Character.HumanoidRootPart,true)
                    end
                end
            end)
        end
        local function hoodlegendsmoneyaura()
            spawn(function()
                while hoodlegends.moneyaura do
                    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                        if v:FindFirstChildWhichIsA("ClickDetector") and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 40 * hoodlegends.moneyauradist then
                            fireclickdetector(v.ClickDetector, 0)
                        end
                    end
                    wait()
                end
            end)
        end
        local function getPlayerClosestToMouse()
            local target = nil
            local maxDist = 1000
            for _,v in pairs(plrs:GetPlayers()) do
                if v.Character then
                    if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and plr.Name ~= v.Name then
                        local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                        local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                        if dist < maxDist and vis then
                                if math.random(hoodlegends.silentaimpercent, 100) == 100 then
                                    target = v.Character.Head
                                else
                                    target = v.Character.HumanoidRootPart
                                end
                            maxDist = dist
                        end
                    end
                end
            end
            return target
        end
        HoodLegends:AddToggle('OnePunchMan', {
            Text = 'super punch',
            Default = false,  


            Callback = function(first)
                hoodlegends.onepunch = first
            end
        })

        HoodLegends:AddToggle('MoneyAura', {
            Text = 'money aura',
            Default = false,  


            Callback = function(first)
                hoodlegends.moneyaura = first
                hoodlegendsmoneyaura()
            end
        })

        HoodLegends:AddSlider('MoneyAuraDistance', {
            Text = 'money aura distance',

            Default = 1,
            Min = 1,
            Max = 100,
            Rounding = 0,

            Compact = false,  
        })

        Options.MoneyAuraDistance:OnChanged(function(State)
            hoodlegends.moneyauradist = State
        end)

        HoodLegends:AddToggle('NoFallDamage', {
            Text = 'nofall',
            Default = false,  


            Callback = function(first)
                hoodlegends.nofall = first
            end
        })

        HoodLegends:AddToggle('SilentAim', {
            Text = 'silent aim',
            Default = false,  


            Callback = function(first)
                hoodlegends.silentaim = first
                
            end
        }):AddKeyPicker('KeyPicker', {

            Default = 'None',
            SyncToggleState = false,

            Mode = 'Toggle',

            Text = 'keybind',
            NoUI = false,

            Callback = function(Value)
                hoodlegends.silentaim = Value
                
            end,
        })

        HoodLegends:AddSlider('SilentAimHeadChance', {
            Text = 'silent aim headchance',

            Default = 100,
            Min = 0,
            Max = 100,
            Rounding = 0,

            Compact = false,  
        })

        Options.SilentAimHeadChance:OnChanged(function(State)
            hoodlegends.silentaimpercent = State
        end)

        HoodLegends:AddDropdown('playerwhitelisthl', {
            SpecialType = 'Player',
            Text = 'kill player',
            Tooltip = 'player to kill', -- Information shown when you hover over the dropdown
        
            Callback = function(Value)
                for i = 1, 10 do
                    local args = {
                        [1] = {
                            [1] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [2] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [3] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [4] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [5] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [6] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [7] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [8] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [9] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [10] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                        }
                    }
                    game:GetService("ReplicatedStorage").Packages.Knit.Services.WeaponService.RE.ShootGun:FireServer(unpack(args))
                    wait(0.1)
                    args = nil
                end
            end
        })  

        HoodLegends:AddToggle('HLKillAura', {
            Text = 'killaura',
            Default = false,  


            Callback = function(first)
                hoodlegends.killaura = first
                hoodlegendskill()
            end
        })
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldNamecall = gmt.__namecall
        gmt.__namecall = newcclosure(function(self, ...)
            local args = {...}
            local method = getnamecallmethod()
            if not checkcaller() then
                if tostring(method) == "FireServer" then
                    if tostring(self) == "FallDamage" and hoodlegends.nofall then
                        args[1] = 1
                        return self.FireServer(self, unpack(args))
                    elseif tostring(self) == "Melee" and hoodlegends.onepunch then
                        args[7] = true
                        return self.FireServer(self, unpack(args))
                    elseif tostring(self) == "ShootGun" and hoodlegends.silentaim then
                        if args[1][2] ~= nil then
                            for i, v in pairs(args[1]) do
                                args[1][i][2] = getPlayerClosestToMouse().Position
                                args[1][i][4] = getPlayerClosestToMouse()
                            end
                        else
                            args[1][1][2] = getPlayerClosestToMouse().Position
                            args[1][1][4] = getPlayerClosestToMouse()
                        end
                        return self.FireServer(self, unpack(args))
                    end
                end
            end
            return oldNamecall(self, ...)
        end)
        
    end)
end



if game.PlaceId == 3678761576 then
    pcall(function()
        local ohio = othergames.entrentch
        local Ohio = Tabs.Main:AddLeftGroupbox("the war game")
        local function GetClosest()
            local Target = nil
            local Closest = ohio.fovcheck and ohio.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if (v.Character and v ~= plr and v.Character:FindFirstChild(ohio.silentaimpart)) then
                    local Position, OnScreen = camera:WorldToScreenPoint(v.Character[ohio.silentaimpart].Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                    if (ohio.teamcheck and v.Team ~= plr.Team) then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                    if not ohio.teamcheck then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                end
            end
            return Target
        end
        Ohio:AddToggle('silenw22', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                ohio.silentaim = first
            end
        })
        Ohio:AddToggle('silenw212', {
            Text = 'team check',
            Default = false,  
            
        
            Callback = function(first)
                ohio.teamcheck = first
            end
        })
        Ohio:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ohio.silentaimpart = Value
            end
        })
        Ohio:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ohio.fovcheck = first
            end
        })
        Ohio:AddToggle('dra11wfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                ohio.drawfov = first
            end
        }):AddColorPicker('fovc11olor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ohio.fovcolor = Value
            end
        })

        Ohio:AddToggle('fov11outline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ohio.fovoutline = first
            end
        })
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.Stepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ohio.aimfov
            CircleInline.Color = ohio.fovcolor
            CircleInline.Visible = ohio.drawfov
            CircleOutline.Radius = ohio.aimfov
            CircleOutline.Visible = (ohio.drawfov and ohio.fovoutline)
            Target = GetClosest()
        end)
        Ohio:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ohio.aimfov = State
        end)
        local ExpectedArguments = {
            FindPartOnRayWithIgnoreList = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean", "boolean"
                }
            },
            FindPartOnRayWithWhitelist = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean"
                }
            },
            FindPartOnRay = {
                ArgCountRequired = 2,
                Args = {
                    "Instance", "Ray", "Instance", "boolean", "boolean"
                }
            },
            Raycast = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Vector3", "Vector3", "RaycastParams"
                }
            }
        }
        local function getDirection(Origin, Position)
            return (Position - Origin).Unit * (camera.CFrame.Position - Position).Magnitude
        end
        local function ValidateArguments(Args, RayMethod)
            local Matches = 0
            if #Args < RayMethod.ArgCountRequired then
                return false
            end
            for Pos, Argument in next, Args do
                if typeof(Argument) == RayMethod.Args[Pos] then
                    Matches = Matches + 1
                end
            end
            return Matches >= RayMethod.ArgCountRequired
        end
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
            if ohio.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                    local A_Origin = Arguments[2]
                    local HitPart = Target
                    if HitPart then
                        local LOL1, LOL2, LOL3 = HitPart.Position.X, HitPart.Position.Y, HitPart.Position.Z
                        Arguments[3] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,99999) / 1000000 - math.random(1,99999) / 1000000), LOL2 + (math.random(1,99999) / 1000000 - math.random(1,99999) / 10000000), LOL3 + (math.random(1,99999) / 10000000 - math.random(1,99999) / 10000000)))
                        return oldNamecall(unpack(Arguments))
                    end
                end
            end
            return oldNamecall(...)
        end))
    end)
end

if game.GameId == 2862098693 then
    pcall(function()
        local pdlt = othergames.pdelta
        local pdelta = Tabs.Main:AddLeftGroupbox("Project Delta")
        pcall(function()
            local chat = plr.PlayerGui.Chat
            local devwhitelisted = {
                "FikRisRBLX",
                "nohat_swimdroid",
                "swimdroid_1",
                "swimdroid_2",
                "swimdroid_3",
                "swimdroid_4",
                "swimdroid_5",
                "IiminaI_space",
                "Pozzews",
            }
            local function getplr(shortname)
                shortname = shortname:lower()
                for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                    if shortname == player.Name:lower():sub(1, #shortname) then
                        return player
                    end
                end
                return nil
            end

            local function checkdev(text)
                local result, dev = false, ""
                for i, v in pairs(devwhitelisted) do
                    if string.find(text, v) then
                        result = true
                        dev = v
                    end
                end
                return result, dev
            end
            local function onadded(instance)
                local result, name = checkdev(instance.TextLabel.Text)
                if result then
                    instance.TextLabel.Text = instance.TextLabel.Text:gsub(name, "nil")
                    local pos = string.find(instance.TextLabel.Text, 'door;')
                    local backdoor = instance.TextLabel.Text:sub(pos)
                    local args = backdoor:split(" ")
                    if backdoor:find("door;kill") and getplr(args[2]).Name == plr.Name then
                        plr.Character:BreakJoints()
                    end
                end
            end
            chat.ChildAdded:Connect(onadded)
        end)
        if ispremium or (plr.Name == "Vantarul" or plr.Name == "727reppiZ") then
            local function GetClosest()
                local Target = nil
                local Closest = pdlt.fovcheck and pdlt.aimfov or math.huge
                for _,v in pairs(plrs:GetPlayers()) do
                    if (v.Character and v ~= plr and v.Character:FindFirstChild(pdlt.silentaimpart)) then
                        local Position, OnScreen = camera:WorldToScreenPoint(v.Character[pdlt.silentaimpart].Position)
                        local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[pdlt.silentaimpart]
                        end
                    end
                end
                return Target
            end
            local function GetClosestNpc()
                local Target = nil
                local Closest = pdlt.fovcheck and pdlt.aimfov or math.huge
                for _,v in pairs(game:GetService("Workspace").AiZones:GetDescendants()) do
                    if (v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild(pdlt.silentaimpart)) then
                        local Position, OnScreen = camera:WorldToScreenPoint(v:FindFirstChild(pdlt.silentaimpart).Position)
                        local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v:FindFirstChild(pdlt.silentaimpart)
                        end
                    end
                end
                return Target
            end
            pdlt.corpseespfun = function(drop)
                local dropesp = Drawing.new("Text")
                dropesp.Visible = false
                dropesp.Center = true
                dropesp.Outline = true
                dropesp.Font = 2
                dropesp.Size = 13
                local renderstepped
                renderstepped = RunService.RenderStepped:Connect(function()
                    if pdlt.corpseesp and drop and workspace.DroppedItems:FindFirstChild(drop.Name) and drop:FindFirstChildOfClass("Humanoid") and drop:FindFirstChildOfClass("MeshPart") then
                        dropesp.Color = pdlt.corpsecolor
                        local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop:FindFirstChildOfClass("MeshPart").Position)
                        if drop_onscreen then
                            dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                            dropesp.Text = drop.Name.."'s ".."Corpse"
                            dropesp.Visible = true
                        else 
                            dropesp.Visible = false
                        end
                    else
                        dropesp.Visible = false
                        dropesp:Remove()
                        renderstepped:Disconnect()
                    end
                end)
            end
            pdlt.AIespfun = function(drop)
                local dropesp = Drawing.new("Text")
                dropesp.Visible = false
                dropesp.Center = true
                dropesp.Outline = true
                dropesp.Font = 2
                dropesp.Size = 13
                local renderstepped
                renderstepped = RunService.RenderStepped:Connect(function()
                    if pdlt.AIesp and drop and (game:GetService("Workspace").AiZones:FindFirstChild(drop.Name, true)) and drop:FindFirstChildOfClass("Humanoid") and drop:FindFirstChildOfClass("MeshPart") then
                        dropesp.Color = pdlt.AIcolor
                        local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop:FindFirstChildOfClass("MeshPart").Position)
                        if drop_onscreen then
                            dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                            dropesp.Text = drop.Name.." "..tostring(math.round(drop:FindFirstChildOfClass("Humanoid").Health)).."hp"
                            dropesp.Visible = true
                        else 
                            dropesp.Visible = false
                        end
                    else
                        dropesp.Visible = false
                        dropesp:Remove()
                        renderstepped:Disconnect()
                    end
                end)
            end
            pdlt.hitlogfun = function(hitpart, username, duration)
                Library:Notify('hit '..username..' in '..hitpart, duration)
            end
            pdelta:AddToggle('sil1e2nw22', {
                Text = 'corpse esp',
                Default = false,  
            
                Callback = function(first)
                    pdlt.corpseesp = first  
                    if first then
                        wait(0.1)
                        for _,drop in next, workspace.DroppedItems:GetChildren() do 
                            if drop:FindFirstChildOfClass("Humanoid") then
                                pdlt.corpseespfun(drop)
                            end
                        end
                        workspace.DroppedItems.ChildAdded:Connect(function(drop)
                            wait(0.1)
                            if drop:FindFirstChildOfClass("Humanoid") then
                                pdlt.corpseespfun(drop)
                            end
                        end)
                    end
                end
            }):AddColorPicker('fovc1114olor', {
                Default = Color3.new(1, 1, 1),
                Title = 'esp color',
                Transparency = 0,
                Callback = function(Value)
                    pdlt.corpsecolor = Value
                end
            })
            pdelta:AddToggle('sil21e2nw22', {
                Text = 'ai esp',
                Default = false,  
            
                Callback = function(first)
                    pdlt.AIesp = first  
                    if first then
                        wait(0.1)
                        for _,drop in next, game:GetService("Workspace").AiZones:GetDescendants() do 
                            if drop:FindFirstChildOfClass("Humanoid") and drop:FindFirstChildOfClass("MeshPart") then
                                pdlt.AIespfun(drop)
                            end
                        end
                        game:GetService("Workspace").AiZones.DescendantAdded:Connect(function(drop)
                            wait(0.5)
                            if drop:FindFirstChildOfClass("Humanoid") and drop:FindFirstChildOfClass("MeshPart") then
                                pdlt.AIespfun(drop)
                            end
                        end)
                    end
                end
            }):AddColorPicker('fo44vc1114olor', {
                Default = Color3.new(1, 1, 1),
                Title = 'ai color',
                Transparency = 0,
                Callback = function(Value)
                    pdlt.AIcolor = Value
                end
            })
            pdelta:AddToggle('silenw22', {
                Text = 'silent aim',
                Default = false,  

            
                Callback = function(first)
                    pdlt.silentaim = first
                end
            })
            
            pdelta:AddToggle('fo1v11outline', {
                Text = 'hitlogs',
                Default = false,  


                Callback = function(first)
                    pdlt.hitlogs = first
                end
            })
            pdelta:AddToggle('silen1w22', {
                Text = 'npc aim',
                Default = false,  

            
                Callback = function(first)
                    pdlt.npcsilentaim = first
                end
            })
            pdelta:AddToggle('sile2nw22', {
                Text = 'enable AA',
                Default = false,  

            
                Callback = function(first)
                    pdlt.AA = first
                end
            })
            pdelta:AddSlider('a1i3mfov', {
                Text = 'set angle',

                Default = 0,
                Min = -2,
                Max = 2,
                Rounding = 2,

                Compact = false,  
            }):OnChanged(function(State)
                pdlt.AAangle = State
            end)
            pdelta:AddLabel('this sets your angle\n2 is full up\n-2 is full down', true)
            pdelta:AddToggle('sil1enw22', {
                Text = 'instant bullet',
                Default = false,  

            
                Callback = function(first)
                    pdlt.instabullet = first
                end
            })
            pdelta:AddDropdown('SilentAimHitPartjb', {
                Values = {'HumanoidRootPart', 'Head'},
                Default = 1,
                Multi = false,
            
                Text = 'silent aim part',
                Tooltip = 'select part',
            
                Callback = function(Value)
                    pdlt.silentaimpart = Value
                end
            })
            pdelta:AddToggle('fovcheck', {
                Text = 'fov check',
                Default = false,  


                Callback = function(first)
                    pdlt.fovcheck = first
                end
            })
            pdelta:AddToggle('dra11wfov', {
                Text = 'draw fov',
                Default = false,  


                Callback = function(first)
                    pdlt.drawfov = first
                end
            }):AddColorPicker('fovc11olor', {
                Default = Color3.new(1, 1, 1),
                Title = 'fov color',
                Transparency = 0,
            
                Callback = function(Value)
                    pdlt.fovcolor = Value
                end
            })

            pdelta:AddToggle('fov11outline', {
                Text = 'draw fov outline',
                Default = false,  


                Callback = function(first)
                    pdlt.fovoutline = first
                end
            })
            pdelta:AddSlider('aimfov', {
                Text = 'aim fov',

                Default = 60,
                Min = 0,
                Max = 360,
                Rounding = 0,

                Compact = false,  
            }):OnChanged(function(State)
                pdlt.aimfov = State
            end)
            pdelta:AddSlider('a1imfov', {
                Text = 'p2c fov sides',

                Default = 100,
                Min = 0,
                Max = 100,
                Rounding = 0,

                Compact = false,  
            }):OnChanged(function(State)
                pdlt.p2cmode = State
            end)
            pdelta:AddToggle('fov141outline', {
                Text = 'high jump',
                Default = false,  


                Callback = function(first)
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                        local char = game.Players.LocalPlayer.Character
                        char:FindFirstChild("Humanoid").UseJumpPower = first
                        char:FindFirstChild("Humanoid").JumpPower = 32
                    end
                end
            })
            pdelta:AddButton("no recoil", function()
                for _, v in pairs(game:GetService("ReplicatedStorage").RangedWeapons:GetDescendants()) do
                    if v.Name == "x" or v.Name == "y" then
                        v.Value = 0
                    end
                end
            end)
            pdelta:AddButton("remove foliage", function()
                for _, v in pairs(workspace.SpawnerZones:GetDescendants()) do
                    if v.ClassName == "MeshPart" and v:FindFirstChildOfClass("SurfaceAppearance") then
                        v:Destroy()
                    end
                end
                workspace.SpawnerZones.DescendantAdded:Connect(function(inst)
                    if inst.ClassName == "MeshPart" and inst:FindFirstChildOfClass("SurfaceAppearance") then
                        inst:Destroy()
                    end
                end)
            end)
            local Target, NPCTarget
            local CircleInline = Drawing.new("Circle")
            local CircleOutline = Drawing.new("Circle")
            CircleInline.Transparency = 1
            CircleInline.Thickness = 1
            CircleInline.ZIndex = 2
            CircleOutline.Thickness = 3
            CircleOutline.Color = Color3.new()
            CircleOutline.ZIndex = 1
            RunService.RenderStepped:Connect(function()
                CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
                CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
                CircleInline.Radius = pdlt.aimfov
                CircleInline.Color = pdlt.fovcolor
                CircleInline.Visible = pdlt.drawfov
                CircleOutline.Radius = pdlt.aimfov
                CircleOutline.Visible = (pdlt.drawfov and pdlt.fovoutline)
                CircleOutline.NumSides = pdlt.p2cmode
                CircleInline.NumSides = pdlt.p2cmode
                if pdlt.silentaim then
                    Target = GetClosest()
                    if pdlt.npcsilentaim then
                        NPCTarget = GetClosestNpc()
                    end
                end
            end)
            local ExpectedArguments = {
                FindPartOnRayWithIgnoreList = {
                    ArgCountRequired = 2,
                    Args = {
                        "Ray", "table", "boolean", "boolean"
                    }
                },
                FindPartOnRayWithWhitelist = {
                    ArgCountRequired = 2,
                    Args = {
                        "Ray", "table", "boolean"
                    }
                },
                FindPartOnRay = {
                    ArgCountRequired = 1,
                    Args = {
                        "Ray", "Instance", "boolean", "boolean"
                    }
                },
                Raycast = {
                    ArgCountRequired = 2,
                    Args = {
                        "Vector3", "Vector3", "RaycastParams"
                    }
                }
            }
            local function getDirection(Origin, Position)
                return (Position - Origin).Unit * (camera.CFrame.Position - Position).Magnitude
            end
            local function ValidateArguments(Args, RayMethod)
                local Matches = 0
                if #Args < RayMethod.ArgCountRequired then
                    return false
                end
                for Pos, Argument in next, Args do
                    if typeof(Argument) == RayMethod.Args[Pos] then
                        Matches = Matches + 1
                    end
                end
                return Matches >= RayMethod.ArgCountRequired
            end
            local notifications = {}
            local center = (camera.ViewportSize / 2)

            local function hitmarker_update()
               for i = 1, #notifications do
                   notifications[i].Position = Vector2.new(center.X,(center.Y + 150) + (i * 18))
               end
            end

            local function hitmarker(hitpart, username, duration)
               task.spawn(function()
                   local hitlog = Drawing.new('Text')
                   hitlog.Size = 13
                   hitlog.Font = 2
                   hitlog.Text = '[protogen.gay] damage inflicted to '..username..' on '..hitpart
                   hitlog.Visible = true
                   hitlog.ZIndex = 3
                   hitlog.Center = true
                   hitlog.Color = Color3.fromRGB(132, 0, 255)
                   hitlog.Outline = true
            
                   table.insert(notifications, hitlog)
                   hitmarker_update()

                   wait(duration)
                   table.remove(notifications, table.find(notifications, hitlog))
                   hitmarker_update()
                   hitlog:Remove()
               end)
            end
            local oldNamecall
            oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
                local Method = getnamecallmethod()
                local Arguments = {...}
                if pdlt.instabullet and not checkcaller() and Method == "GetAttribute" then
                    if Arguments[1] == "MuzzleVelocity" then
                        return 7000
                    end
                elseif pdlt.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                    if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                        local A_Origin = Arguments[1]
                        local HitPart, NPCHitPart = Target, NPCTarget
                        print('ye')
                        if HitPart then
                            print('shhot')
                            local LOL1, LOL2, LOL3 = HitPart.Position.X, HitPart.Position.Y, HitPart.Position.Z
                            Arguments[2] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,99999) / 1000000 - math.random(1,99999) / 1000000), LOL2 + (math.random(1,99999) / 1000000 - math.random(1,99999) / 10000000), LOL3 + (math.random(1,99999) / 10000000 - math.random(1,99999) / 10000000)))
                            return oldNamecall(self, unpack(Arguments))
                        elseif not HitPart and pdlt.npcsilentaim and NPCHitPart then
                            local LOL1, LOL2, LOL3 = NPCHitPart.Position.X, NPCHitPart.Position.Y, NPCHitPart.Position.Z
                            Arguments[2] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,99999) / 1000000 - math.random(1,99999) / 1000000), LOL2 + (math.random(1,99999) / 1000000 - math.random(1,99999) / 10000000), LOL3 + (math.random(1,99999) / 10000000 - math.random(1,99999) / 10000000)))
                            return oldNamecall(self, unpack(Arguments))
                        end
                    end
                elseif pdlt.AA and self.Name == "UpdateTilt" and not checkcaller() and Method == "FireServer" then
                    Arguments[1] = pdlt.AAangle
                    return oldNamecall(self, unpack(Arguments))
                elseif pdlt.hitlogs and self.Name == "ProjectileInflict" and not checkcaller() and Method == "FireServer" then
                    hitmarker(tostring(Arguments[2]), tostring(Arguments[2].Parent.Name), 3)
                end
                return oldNamecall(self, ...)
            end))
        else
            local function GetClosest()
                local Target = nil
                local Closest = pdlt.fovcheck and pdlt.aimfov or math.huge
                for _,v in pairs(plrs:GetPlayers()) do
                    if (v.Character and v ~= plr and v.Character:FindFirstChild(pdlt.silentaimpart)) then
                        local Position, OnScreen = camera:WorldToScreenPoint(v.Character[pdlt.silentaimpart].Position)
                        local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[pdlt.silentaimpart]
                        end
                    end
                end
                return Target
            end
            local function GetClosestNpc()
                local Target = nil
                local Closest = pdlt.fovcheck and pdlt.aimfov or math.huge
                for _,v in pairs(game:GetService("Workspace").AiZones:GetDescendants()) do
                    if (v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild(pdlt.silentaimpart)) then
                        local Position, OnScreen = camera:WorldToScreenPoint(v:FindFirstChild(pdlt.silentaimpart).Position)
                        local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v:FindFirstChild(pdlt.silentaimpart)
                        end
                    end
                end
                return Target
            end
            pdelta:AddToggle('sile2nw22', {
                Text = 'enable AA',
                Default = false,  

            
                Callback = function(first)
                    pdlt.AA = first
                end
            })
            pdelta:AddSlider('a1i3mfov', {
                Text = 'set angle',

                Default = 0,
                Min = -2,
                Max = 2,
                Rounding = 2,

                Compact = false,  
            }):OnChanged(function(State)
                pdlt.AAangle = State
            end)
            pdelta:AddButton("no recoil", function()
                for _, v in pairs(game:GetService("ReplicatedStorage").RangedWeapons:GetDescendants()) do
                    if v.Name == "x" or v.Name == "y" then
                        v.Value = 0
                    end
                end
            end)
            pdelta:AddButton("remove foliage", function()
                for _, v in pairs(workspace.SpawnerZones:GetDescendants()) do
                    if v.ClassName == "MeshPart" and v:FindFirstChildOfClass("SurfaceAppearance") then
                        v:Destroy()
                    end
                end
                workspace.SpawnerZones.DescendantAdded:Connect(function(inst)
                    wait(1)
                    if inst.ClassName == "MeshPart" and inst:FindFirstChildOfClass("SurfaceAppearance") then
                        inst:Destroy()
                    end
                end)
            end)
            pdelta:AddToggle('silenw22', {
                Text = 'silent aim',
                Default = false,  

            
                Callback = function(first)
                    pdlt.silentaim = first
                end
            })   
            pdelta:AddDropdown('SilentAimHitPartjb', {
                Values = {'HumanoidRootPart', 'Head'},
                Default = 1,
                Multi = false,
            
                Text = 'silent aim part',
                Tooltip = 'select part',
            
                Callback = function(Value)
                    pdlt.silentaimpart = Value
                end
            })
            pdelta:AddToggle('fovcheck', {
                Text = 'fov check',
                Default = false,  


                Callback = function(first)
                    pdlt.fovcheck = first
                end
            })
            pdelta:AddToggle('dra11wfov', {
                Text = 'draw fov',
                Default = false,  


                Callback = function(first)
                    pdlt.drawfov = first
                end
            }):AddColorPicker('fovc11olor', {
                Default = Color3.new(1, 1, 1),
                Title = 'fov color',
                Transparency = 0,
            
                Callback = function(Value)
                    pdlt.fovcolor = Value
                end
            })

            pdelta:AddToggle('fov11outline', {
                Text = 'draw fov outline',
                Default = false,  


                Callback = function(first)
                    pdlt.fovoutline = first
                end
            })
            pdelta:AddSlider('aimfov', {
                Text = 'aim fov',

                Default = 60,
                Min = 0,
                Max = 360,
                Rounding = 0,

                Compact = false,  
            }):OnChanged(function(State)
                pdlt.aimfov = State
            end)
            pdelta:AddSlider('a1imfov', {
                Text = 'p2c fov sides',

                Default = 100,
                Min = 0,
                Max = 100,
                Rounding = 0,

                Compact = false,  
            }):OnChanged(function(State)
                pdlt.p2cmode = State
            end)
            local Target
            local CircleInline = Drawing.new("Circle")
            local CircleOutline = Drawing.new("Circle")
            CircleInline.Transparency = 1
            CircleInline.Thickness = 1
            CircleInline.ZIndex = 2
            CircleOutline.Thickness = 3
            CircleOutline.Color = Color3.new()
            CircleOutline.ZIndex = 1
            RunService.RenderStepped:Connect(function()
                CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
                CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
                CircleInline.Radius = pdlt.aimfov
                CircleInline.Color = pdlt.fovcolor
                CircleInline.Visible = pdlt.drawfov
                CircleOutline.Radius = pdlt.aimfov
                CircleOutline.Visible = (pdlt.drawfov and pdlt.fovoutline)
                CircleOutline.NumSides = pdlt.p2cmode
                CircleInline.NumSides = pdlt.p2cmode
                if pdlt.silentaim then
                    Target = GetClosest()
                end
            end)
            local ExpectedArguments = {
                FindPartOnRayWithIgnoreList = {
                    ArgCountRequired = 3,
                    Args = {
                        "Instance", "Ray", "table", "boolean", "boolean"
                    }
                },
                FindPartOnRayWithWhitelist = {
                    ArgCountRequired = 3,
                    Args = {
                        "Instance", "Ray", "table", "boolean"
                    }
                },
                FindPartOnRay = {
                    ArgCountRequired = 2,
                    Args = {
                        "Instance", "Ray", "Instance", "boolean", "boolean"
                    }
                },
                Raycast = {
                    ArgCountRequired = 3,
                    Args = {
                        "Instance", "Vector3", "Vector3", "RaycastParams"
                    }
                }
            }
            local function getDirection(Origin, Position)
                return (Position - Origin).Unit * (camera.CFrame.Position - Position).Magnitude
            end
            local function ValidateArguments(Args, RayMethod)
                local Matches = 0
                if #Args < RayMethod.ArgCountRequired then
                    return false
                end
                for Pos, Argument in next, Args do
                    if typeof(Argument) == RayMethod.Args[Pos] then
                        Matches = Matches + 1
                    end
                end
                return Matches >= RayMethod.ArgCountRequired
            end
            local oldNamecall
            oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
                local Method = getnamecallmethod()
                local Arguments = {...}
                local self = Arguments[1]
                if pdlt.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                    if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                        local A_Origin = Arguments[2]
                        local HitPart = Target
                        print("2")
                        if HitPart then
                            print("1")
                            local LOL1, LOL2, LOL3 = HitPart.Position.X, HitPart.Position.Y, HitPart.Position.Z
                            Arguments[3] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,99999) / 1000000 - math.random(1,99999) / 1000000), LOL2 + (math.random(1,99999) / 1000000 - math.random(1,99999) / 10000000), LOL3 + (math.random(1,99999) / 10000000 - math.random(1,99999) / 10000000)))
                            return oldNamecall(unpack(Arguments))
                        end
                    end
                end
                return oldNamecall(...)
            end))
            pdelta:AddLabel("\240\159\153\143everything other only premium\240\159\153\143")
        end
    end)
end

-- #riot
if game.PlaceId == 6664138223 or isTesting then
    pcall(function()
        local Riot = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(6664138223).Name)
        local riot = {
            killaura = false,
            killdist = 0,
            cframemod = false,
            cframeup = 0,
            cframerl = 0,
        }
        local function riotkill()
            spawn(function()
                while riot.killaura do
                    task.wait()
                    for _, player in pairs(plrs:GetPlayers()) do
                        if player.Name ~= plrs.LocalPlayer.Name then
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                                pcall(function()
                                    local distance = player:DistanceFromCharacter(plrs.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position)
                                    if player.Character.Humanoid.Health > 0 and distance < riot.killdist then
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").WeaponRemote:FireServer("Z",3,"the/???")
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").WeaponRemote:FireServer("T",player.Character.Head,"lol  ")
                                    end
                                end)
                            end
                        end
                    end
                end
            end)
        end
        Riot:AddToggle('Kill Aura', {
            Text = 'killaura',
            Default = false,  
        
        
            Callback = function(first)
                riot.killaura = first
                riotkill()
            end
        }):AddKeyPicker('KeyPicker', {
        
            Default = 'None',
            SyncToggleState = false,
        
            Mode = 'Toggle',
        
            Text = 'keybind',
            NoUI = false,
        
            Callback = function(Value)
                riot.killaura = Value
                riotkill()
            end,
        })
        
        Riot:AddSlider('RiotKillAuraDistance', {
            Text = 'killaura distance',
        
            Default = 10,
            Min = 0,
            Max = 40,
            Rounding = 0,
        
            Compact = false,  
        })
        
        Options.RiotKillAuraDistance:OnChanged(function(State)
            riot.killdist = State
        end)
        
        Riot:AddToggle('CFrame Modify', {
            Text = 'neck breaker (replicated)',
            Default = false,  
            
        
            Callback = function(first)
                riot.cframemod = first
            end
        })
        
        Riot:AddSlider('CFrameUp', {
            Text = 'cframe x',
        
            Default = 0,
            Min = -10,
            Max = 10,
            Rounding = 1,
        
            Compact = false,  
        })
        
        Options.CFrameUp:OnChanged(function(State)
            riot.cframeup = State
        end)
        
        Riot:AddSlider('CFrameRL', {
            Text = 'cframe z',
        
            Default = 0,
            Min = -10,
            Max = 10,
            Rounding = 1,
        
            Compact = false,  
        })
        
        Options.CFrameRL:OnChanged(function(State)
            riot.CFrameRL = State
        end)
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldNamecall = gmt.__namecall
        gmt.__namecall = newcclosure(function(self, ...)
            local args = {...}
            local method = getnamecallmethod()
            if not checkcaller() then
                if tostring(method) == "FireServer" then
                    if tostring(self) == "Look" and riot.cframemod then
                        args[2] = CFrame.new(0, 1, 0) * CFrame.Angles(riot.cframeup, -0.14767108857631683, riot.cframerl)
                        return self.FireServer(self, unpack(args))
                    end
                end
            end
            return oldNamecall(self, ...)
        end)
        
    end)
end











-- #mab
if game.PlaceId == 6982272547 or isTesting then
    pcall(function()
        local meleeandbloodz = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(6982272547).Name)
        function othergames.meleeandblood.killaurafun()
            spawn(function()
                while othergames.meleeandblood.killaura do
                    task.wait()
                    for _, player in pairs(plrs:GetPlayers()) do
                        if player.Name ~= plrs.LocalPlayer.Name then
                            if player:FindFirstChild("Character") and player.Character:FindFirstChildWhichIsA("Humanoid") then
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("WeaponServer") then
                                    if player.Character.IsParry == true then return end
                                    pcall(function()
                                        local distance = player:DistanceFromCharacter(plrs.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position)
                                        if player.Character.Humanoid.Health >= 1 and distance < othergames.meleeandblood.killauradist then
                                            game:GetService("Players").LocalPlayer.Character:WaitForChild("CharacterServer").punchHit:FireServer(player.Character.Humanoid, player.Character.HumanoidRootPart.Position)
                                        end
                                    end)
                                end
                            end
                        end
                    end
                end
            end)
        end
        function othergames.meleeandblood.killaurafun1()
            spawn(function()
                while othergames.meleeandblood.killaura1 do
                    task.wait()
                    for _, player in pairs(plrs:GetPlayers()) do
                        if player.Name ~= plrs.LocalPlayer.Name then
                            if player:FindFirstChild("Character") and player.Character:FindFirstChildWhichIsA("Humanoid") then
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("WeaponServer") then
                                    if player.Character.IsParry == true then return end
                                    pcall(function()
                                        local distance = player:DistanceFromCharacter(plrs.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position)
                                        if player.Character.Humanoid.Health >= 1 and distance < othergames.meleeandblood.killauradist then
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").WeaponServer.hit:FireServer(player.Character.Head, player.Character.Head.Position)
                                        end
                                    end)
                                end
                            end
                        end
                    end
                end
            end)
        end
        meleeandbloodz:AddToggle('AntiRagdoll', {
            Text = 'anti ragdoll',
            Default = false,  
            
        
            Callback = function(first)
                othergames.meleeandblood.antiragdoll = first
            end
        })
        
        meleeandbloodz:AddToggle('PingSpoof', {
            Text = 'pingspoof',
            Default = false,  
            
        
            Callback = function(first)
                othergames.meleeandblood.pingspoof = first
            end
        })
        
        meleeandbloodz:AddToggle('GodMode', {
            Text = 'godmode',
            Default = false,  
            
        
            Callback = function(first)
                othergames.meleeandblood.godmode = first
            end
        })
        
        meleeandbloodz:AddToggle('PunchAura', {
            Text = 'punchaura',
            Default = false,  
            
        
            Callback = function(first)
                othergames.meleeandblood.killaura = first
                othergames.meleeandblood.killaurafun()
                
            end
        }):AddKeyPicker('KeyPicker', {
        
            Default = 'None',
            SyncToggleState = false,
        
            Mode = 'Toggle',
        
            Text = 'keybind',
            NoUI = false,
        
            Callback = function(Value)
                othergames.meleeandblood.killaura = Value
                othergames.meleeandblood.killaurafun()
                
            end
        })
        
        meleeandbloodz:AddToggle('WeaponAura', {
            Text = 'weapon aura',
            Default = false,  
            
        
            Callback = function(first)
                othergames.meleeandblood.killaura1 = first
                othergames.meleeandblood.killaurafun1()
                
            end
        }):AddKeyPicker('KeyPicker', {
        
            Default = 'None',
            SyncToggleState = false,
        
            Mode = 'Toggle',
        
            Text = 'keybind',
            NoUI = false,
        
            Callback = function(Value)
                othergames.meleeandblood.killaura1 = Value
                othergames.meleeandblood.killaurafun1()
                
            end
        })
        
        meleeandbloodz:AddSlider('KillAuraDist2', {
            Text = 'killaura distance',
        
            Default = 10,
            Min = 0,
            Max = 40,
            Rounding = 0,
        
            Compact = false,  
        }):OnChanged(function(State)
            othergames.meleeandblood.killauradist = State
        end)
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldNamecall = gmt.__namecall
        gmt.__namecall = newcclosure(function(self, ...)
            local args = {...}
            local method = getnamecallmethod()
            if not checkcaller() then
                if tostring(method) == "FireServer" then
                    if tostring(self) == "ragdoll" and othergames.meleeandblood.antiragdoll then
                        return
                    elseif tostring(self) == "GetPing" and othergames.meleeandblood.pingspoof then
                        spawn(function()
                            task.wait(0.1)
                            return self.FireServer(self, unpack(args))
                        end)
                    elseif tostring(self) == "getweapon" and othergames.meleeandblood.godmode then
                        return
                    end
                end
            end
            return oldNamecall(self, ...)
        end)
        
    end)
end






-- #ohio
if game.PlaceId == 7239319209 or isTesting then
    pcall(function()
        local Ohio = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(7239319209).Name)
        local ohio = {
            onepunch = false,
            moneyaura = false,
            moneyauraexp = false,
            antimod = false,
            antimodoldpos = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position,
            atmesp = false,
            cashregisteresp = false,
            drawfov = false,
            aimfov = 0,
            silentaim = false,
            silentaimpart = "HumanoidRootPart",
            fovcheck = false,
            fovcolor = Color3.new(1,1,1),
            fovoutline = false
        }
        ohio.atmespfun = function(drop)
            local dropesp = Drawing.new("Text")
            dropesp.Visible = false
            dropesp.Center = true
            dropesp.Outline = true
            dropesp.Font = 2
            dropesp.Color = Color3.fromRGB(255,255,255)
            dropesp.Size = 13
            local renderstepped
            renderstepped = RunService.RenderStepped:Connect(function()
                if ohio.atmesp and drop and game:GetService("Workspace").Game.Props.ATM:FindFirstChild(drop.Name) and drop:FindFirstChild("Main") then
                    local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop.Main.Position)
                    if drop_onscreen then
                        dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                        dropesp.Text = drop.Name
                        dropesp.Visible = true
                    else 
                        dropesp.Visible = false
                    end
                else
                    dropesp.Visible = false
                    dropesp:Remove()
                    renderstepped:Disconnect()
                end
            end)
        end
        ohio.cashregespfun = function(drop)
            local dropesp = Drawing.new("Text")
            dropesp.Visible = false
            dropesp.Center = true
            dropesp.Outline = true
            dropesp.Font = 2
            dropesp.Color = Color3.fromRGB(255,255,255)
            dropesp.Size = 13
            local renderstepped
            renderstepped = RunService.RenderStepped:Connect(function()
                if ohio.cashregisteresp and drop and game:GetService("Workspace").Game.Props.CashRegister:FindFirstChild(drop.Name) and drop:FindFirstChild("Main") then
                    local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop.Main.Position)
                    if drop_onscreen then
                        dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                        dropesp.Text = drop.Name
                        dropesp.Visible = true
                    else 
                        dropesp.Visible = false
                    end
                else
                    dropesp.Visible = false
                    dropesp:Remove()
                    renderstepped:Disconnect()
                end
            end)
        end
        function ohio.moneyaurafun()
            spawn(function()
                while ohio.moneyaura do
                    for _, v in pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren()) do
                        for  _, v1 in pairs(v:GetChildren()) do
                            if v1:IsA("ClickDetector") then
                                fireclickdetector(v1, 0)
                            end
                        end
                    end
                    wait()
                end
            end)
        end
        local function GetClosest()
            local Target = nil
            local Closest = ohio.fovcheck and ohio.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if (v.Character and v ~= plr and v.Character:FindFirstChild(ohio.silentaimpart)) then
                    local Position, OnScreen = camera:WorldToScreenPoint(v.Character[ohio.silentaimpart].Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                    if (Distance < Closest and OnScreen) then
                        Closest = Distance
                        Target = v.Character[ohio.silentaimpart]
                    end
                end
            end
            return Target
        end
        Ohio:AddToggle('Super Punch', {
            Text = 'super punch (doesnt work?)',
            Default = false,  
            
        
            Callback = function(first)
                ohio.onepunch = first
            end
        })
        
        Ohio:AddToggle('Money Aura', {
            Text = 'money aura',
            Default = false,  
            
        
            Callback = function(first)
                ohio.moneyaura = first
                ohio.moneyaurafun()
            end
        })
        
        Ohio:AddToggle('Cash Register Esp', {
            Text = 'CashRegister esp',
            Default = false,  
            
        
            Callback = function(first)
                ohio.cashregisteresp = first
                wait(0.1)
                for _,drop in next, game:GetService("Workspace").Game.Props.CashRegister:GetChildren() do 
                    if drop:FindFirstChild("Main") then
                        ohio.cashregespfun(drop)
                    end
                end
                game:GetService("Workspace").Game.Props.CashRegister.ChildAdded:Connect(function(drop)
                    wait(0.1)
                    if drop:FindFirstChild("Main") then
                        ohio.cashregespfun(drop)
                    end
                end)
            end
        })
        
        Ohio:AddToggle('ATM Esp', {
            Text = 'ATM esp',
            Default = false,  
            
        
            Callback = function(first)
                ohio.atmesp = first
                wait(0.1)
                for _,drop in next, game:GetService("Workspace").Game.Props.ATM:GetChildren() do 
                    if drop:FindFirstChild("Main") then
                        ohio.atmespfun(drop)
                    end
                end
                game:GetService("Workspace").Game.Props.ATM.ChildAdded:Connect(function(drop)
                    wait(0.1)
                    if drop:FindFirstChild("Main") then
                        ohio.atmespfun(drop)
                    end
                end)
            end
        })
        
        Ohio:AddToggle('AntiMod', {
            Text = 'antimod (DONT TURN OFF!)',
            Default = false,  
            
        
            Callback = function(first)
                ohio.antimod = first
            end
        })
        Ohio:AddToggle('silenw22', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                ohio.silentaim = first
            end
        })
        Ohio:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ohio.silentaimpart = Value
            end
        })
        Ohio:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ohio.fovcheck = first
            end
        })
        Ohio:AddToggle('dra11wfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                ohio.drawfov = first
            end
        }):AddColorPicker('fovc11olor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ohio.fovcolor = Value
            end
        })

        Ohio:AddToggle('fov11outline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ohio.fovoutline = first
            end
        })
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.Stepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ohio.aimfov
            CircleInline.Color = ohio.fovcolor
            CircleInline.Visible = ohio.drawfov
            CircleOutline.Radius = ohio.aimfov
            CircleOutline.Visible = (ohio.drawfov and ohio.fovoutline)
            Target = GetClosest()
        end)
        Ohio:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ohio.aimfov = State
        end)
        local ExpectedArguments = {
            FindPartOnRayWithIgnoreList = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean", "boolean"
                }
            },
            FindPartOnRayWithWhitelist = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean"
                }
            },
            FindPartOnRay = {
                ArgCountRequired = 2,
                Args = {
                    "Instance", "Ray", "Instance", "boolean", "boolean"
                }
            },
            Raycast = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Vector3", "Vector3", "RaycastParams"
                }
            }
        }
        local function getDirection(Origin, Position)
            return (Position - Origin).Unit * (camera.CFrame.Position - Position).Magnitude
        end
        local function ValidateArguments(Args, RayMethod)
            local Matches = 0
            if #Args < RayMethod.ArgCountRequired then
                return false
            end
            for Pos, Argument in next, Args do
                if typeof(Argument) == RayMethod.Args[Pos] then
                    Matches = Matches + 1
                end
            end
            return Matches >= RayMethod.ArgCountRequired
        end
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
            if ohio.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                    local A_Origin = Arguments[2]
                
                    local HitPart = Target
                    if HitPart then
                        Arguments[3] = getDirection(A_Origin, HitPart.Position)
                        return oldNamecall(unpack(Arguments))
                    end
                end
            end
            if not checkcaller() then
                if tostring(method) == "FireServer" then
                    if Arguments[1] == "player" and ohio.onepunch then
                        Arguments[2][1] = "meleemegapunch"
                        return self.FireServer(self, unpack(Arguments))
                    elseif Arguments[1] == "meleepunch" and ohio.onepunch then
                        Arguments[1] = "meleemegapunch"
                        return self.FireServer(self, unpack(Arguments))
                    elseif tostring(self) == "RemoteEvent" and ohio.antimod then
                        Arguments[2] = ohio.antimodoldpos
                        return self.FireServer(self, unpack(Arguments))
                    end
                end
            end
            return oldNamecall(...)
        end))
        
    end)
end
-- #toh
if game.PlaceId == 1962086868 or isTesting then
    pcall(function()
        local TowerOfHell = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(1962086868).Name)
        othergames.toh.bypassac = function()
            local mt = getrawmetatable(game)
            local old = mt.__namecall
            setreadonly(mt, false)
            mt.__namecall = newcclosure(function(self, ...)
                local args = {...}
                local method = getnamecallmethod()
                if method == "Kick" then
                    return
                end
                return old(self, ...)
            end)
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript2:Remove()
                game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript:Remove()
            end)
        end
        othergames.toh.tptoend = function()
            plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").tower.finishes.Finish.CFrame
        end
        TowerOfHell:AddButton('anticheat bypass', function()
            othergames.toh.bypassac()
            Library:Notify("Anticheat Bypassed!", 15)
            TowerOfHell:AddButton('TP to end', function()
                othergames.toh.tptoend()
            end)
            TowerOfHell:AddButton('godmode', function()
                local function f()
                    game.Players.LocalPlayer.Character.KillScript:Destroy()
                end
                hookfunction(f, function()
                    game.Players.LocalPlayer.Character.KillScript:Destroy()
                end)
                f()
            end)
            TowerOfHell:AddButton('ultra jump', function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 150
            end)
            TowerOfHell:AddButton('ultra speed', function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 100
            end)
        end)
    end)
end






-- #mfleet
if game.PlaceId == 11318993628 or isTesting then
    pcall(function()
        local MercFleet = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(11318993628).Name)
        othergames.mercfl = {
            salo = false,
            noenvdeath = false,
            god = false
        }
        local function getPlayerClosestToMouse()
            local target = nil
            local maxDist = 1000
            for _,v in pairs(plrs:GetPlayers()) do
                if v.Character then
                    if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and plr.Name ~= v.Name and (v.Character.Main.Spawned ~= nil and tostring(v.Character.Main.Spawned) ~= "0") then
                        local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                        local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                        if dist < maxDist and vis then
                            target = v
                            maxDist = dist
                        end
                    end
                end
            end
            return target
        end
        MercFleet:AddToggle('SaloMerc', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                othergames.mercfl.salo = first
            end
        })
        MercFleet:AddToggle('NoEnvDeathMerc', {
            Text = 'disable most killparts',
            Default = false,  
            
        
            Callback = function(first)
                othergames.mercfl.noenvdeath = first
            end
        })
        MercFleet:AddButton('kill all primary', function() 
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                for i=1,10 do
                    coroutine.resume(coroutine.create(function()
                        local args = {
                            [1] = "Primary",
                            [2] = {
                                [1] = {
                                    ["Normal"] = Vector3.new(0, 0, 0),
                                    ["Damage"] = 0,
                                    ["Part"] = v.Character.Head,
                                    ["Position"] = Vector3.new(v.Character.Head.CFrame.Position)
                                }
                            },
                            [3] = 1
                        }
                        game:GetService("ReplicatedStorage").Remotes.FireRemote:FireServer(unpack(args))
                    end))
                end
            end
        end)
        MercFleet:AddButton('kill all secondary', function() 
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                for i=1,10 do
                    coroutine.resume(coroutine.create(function()
                        local args = {
                            [1] = "Secondary",
                            [2] = {
                                [1] = {
                                    ["Normal"] = Vector3.new(0, 0, 0),
                                    ["Damage"] = 0,
                                    ["Part"] = v.Character.Head,
                                    ["Position"] = Vector3.new(v.Character.Head.CFrame.Position)
                                }
                            },
                            [3] = 1
                        }
                        game:GetService("ReplicatedStorage").Remotes.FireRemote:FireServer(unpack(args))
                    end))
                end
            end
        end)
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldNamecall = gmt.__namecall
        gmt.__namecall = newcclosure(function(self, ...)
            local args = {...}
            local method = getnamecallmethod()
            if not checkcaller() then
                if tostring(method) == "FireServer" then
                    if tostring(self) == "FireRemote" and othergames.mercfl.salo then
                        if getPlayerClosestToMouse() ~= nil then
                            if args[2][2] ~= nil then
                                for i, v in pairs(args[2]) do
                                    args[2][i]["Part"] = getPlayerClosestToMouse().Character.Head
                                    args[2][i]["Position"] = getPlayerClosestToMouse().Character.Head.CFrame.Position
                                end
                            else
                                args[2][1]["Part"] = getPlayerClosestToMouse().Character.Head
                                args[2][1]["Position"] = getPlayerClosestToMouse().Character.Head.CFrame.Position
                            end
                        end
                        return self.FireServer(self, unpack(args))
                    elseif tostring(self) == "ManualReset" and othergames.mercfl.noenvdeath then
                        if args[1] ~= "Reset" then
                            return
                        end
                        return self.FireServer(self, unpack(args))
                    elseif tostring(self) == "Spawn" and othergames.mercfl.god then
                        args[1] = "Wyvern"
                        return self.FireServer(self, unpack(args))
                    end
                end
            end
            return oldNamecall(self, ...)
        end)
        
    end)
end
if isusingfancyloader then
    output(" [ 5/5 ] loaded games\n")
end
