local lplr = game.Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = lplr.PlayerGui

local verificationMenu = Instance.new("Frame")
verificationMenu.Name = "VerificationMenu"
verificationMenu.Parent = ScreenGui
verificationMenu.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
verificationMenu.Position = UDim2.new(0.4, 0, 0.4, 0)
verificationMenu.Size = UDim2.new(0.2, 0, 0.2, 0)

local verificationLabel = Instance.new("TextLabel")
verificationLabel.Name = "VerificationLabel"
verificationLabel.Parent = verificationMenu
verificationLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
verificationLabel.BorderSizePixel = 0
verificationLabel.Size = UDim2.new(1, 0, 0.5, 0)
verificationLabel.Font = Enum.Font.SourceSans
verificationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
verificationLabel.TextScaled = true

local verJugadores = Instance.new("TextButton")
verJugadores.Name = "Hecho por Dais & Fer"
verJugadores.Parent = verificationMenu
verJugadores.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
verJugadores.BorderSizePixel = 0
verJugadores.Position = UDim2.new(0, 0, 0.6, 0)
verJugadores.Size = UDim2.new(1, 0, 0.4, 0)
verJugadores.Font = Enum.Font.SourceSans
verJugadores.Text = "Ver Jugadores"
verJugadores.TextColor3 = Color3.fromRGB(255, 255, 255)
verJugadores.TextScaled = true

local allowedPlayers = {"fernanflop091o", "armijosfernando2178", "123daishinkan", "daishinakan2007", "Thamersad172", "elmegafer", "santiago123337pro", "Camila_san2021"}

task.spawn(function()
    while true do
        pcall(function()
            local isAllowed = table.find(allowedPlayers, lplr.Name:lower()) ~= nil
            if isAllowed then
                verificationLabel.Text = "Acceso Abierto"
            else
                verificationLabel.Text = "Acceso Denegado"
            end
        end)
        wait(1)
    end
end)

task.spawn(function()
    while true do
        pcall(function()
            local isAllowed = table.find(allowedPlayers, lplr.Name:lower()) ~= nil
            if isAllowed then
 --Ciclo  depues de verificar " Acceso abierto " xD 👇
             --Incio del Farm/Ciclo
             
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local lplr = Players.LocalPlayer

spawn(function()
    if lplr.PlayerGui:FindFirstChild("Start") then
        ReplicatedStorage.Package.Events.Start:InvokeServer()
        if Workspace.Others:FindFirstChild("Title") then
            Workspace.Others.Title:Destroy()
        end
        local cam = Workspace.CurrentCamera
        cam.CameraType = Enum.CameraType.Custom
        cam.CameraSubject = lplr.Character.Humanoid
        _G.Ready = true
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
        lplr.PlayerGui.Main.Enabled = true
        if lplr.PlayerGui:FindFirstChild("Start") then
            lplr.PlayerGui.Start:Destroy()
        end
        lplr.PlayerGui.Main.bruh.Enabled = false
        lplr.PlayerGui.Main.bruh.Enabled = true
    end
end)

local bb = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
end)

local lplr = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = lplr.PlayerGui

local menuFrame = Instance.new("Frame")
menuFrame.Size = UDim2.new(0.2, 0, 0.2, 0)
menuFrame.Position = UDim2.new(0.4, 0, 0.4, 0)
menuFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
menuFrame.Parent = screenGui

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(1, 0, 0.5, 0)
toggleButton.Position = UDim2.new(0, 0, 0.25, 0)
toggleButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
toggleButton.Font = Enum.Font.SourceSans
toggleButton.Text = "Desactivado"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.TextScaled = true
toggleButton.Parent = menuFrame

local rebStatsActive = false

toggleButton.MouseButton1Click:Connect(function()
    rebStatsActive = not rebStatsActive
    if rebStatsActive then
        toggleButton.Text = "Activado"
        toggleButton.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
    else
        toggleButton.Text = "Desactivado"
        toggleButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    end
end)

local events = game:GetService("ReplicatedStorage").Package.Events
task.spawn(function()
    while true do
        if rebStatsActive then
            pcall(function()
                events.reb:InvokeServer()
            end)
        end
        task.wait(1)
    end
end)




_G.charge = true

spawn(function()
	while _G.charge == true do

		local args = {
			[1] = "Blacknwhite27"
		}

		game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer(unpack(args))
		wait (1)
	end
end)

wait(1)
_G.block = true

spawn(function ()
	while _G.block == true do
		local args = {
			[1] = true
		}

		game:GetService("ReplicatedStorage").Package.Events.block:InvokeServer(unpack(args))
		wait(1)
	end
end)



local lplr = game.Players.LocalPlayer
local data = game.ReplicatedStorage:WaitForChild("Datas"):WaitForChild(lplr.UserId)
local strength = data and data:FindFirstChild("Strength") and data.Strength.Value or 0

local skills = {
    {"Divine Rose Prominence", 200e6},
    {"Astral Instinct", 138e6},
    {"LBSSJ4", 100e6},
    {"SSJR3", 50e6},
    {"SSJB3", 50e6},
    {"True God of Creation", 32e6},
    {"True God of Destruction", 32e6},
    {"God of Destruction", 30e6},
    {"God of Creation", 30e6}
}

spawn(function()
    while true do
        pcall(function()
            if lplr.Status and lplr.Status.Transformation.Value == "None" then
                for _, skill in ipairs(skills) do
                    local skillName, requiredStrength = skill[1], skill[2]
                    if strength >= requiredStrength then
                        game.ReplicatedStorage.Package.Events.equipskill:InvokeServer(skillName)
                        break
                    end
                end
                game.ReplicatedStorage.Package.Events.ta:InvokeServer()
            end
        end)
        wait()
    end
end)



local lplr = game.Players.LocalPlayer
local data = game.ReplicatedStorage:WaitForChild("Datas"):WaitForChild(lplr.UserId)
local strength = data and data:FindFirstChild("Strength") and data.Strength.Value or 0

local skills = {
    {"Divine Rose Prominence", 200e6},
    {"Astral Instinct", 138e6},
    {"LBSSJ4", 100e6},
    {"SSJR3", 50e6},
    {"SSJB3", 50e6},
    {"True God of Creation", 32e6},
    {"True God of Destruction", 32e6},
    {"God of Destruction", 30e6},
    {"God of Creation", 30e6}
}

spawn(function()
    while true do
        pcall(function()
         
            local playerStatus = game.Workspace.Living[lplr.Name].Status
            if playerStatus and playerStatus.Transformation.Value == "None" then
                for _, skill in ipairs(skills) do
                    local skillName, requiredStrength = skill[1], skill[2]
                    if strength >= requiredStrength then
                        game.ReplicatedStorage.Package.Events.equipskill:InvokeServer(skillName)
                        break -- Salir del bucle después de equipar una habilidad
                    end
                end
              
                game.ReplicatedStorage.Package.Events.ta:InvokeServer()
            end
        end)
        wait(0.1) 
    end
end)



local lplr = game.Players.LocalPlayer
local data = game.ReplicatedStorage:WaitForChild("Datas"):WaitForChild(lplr.UserId)

local attacks2 = {
    "Super Dragon Fist", "God Slicer", "Spirit Barrage", "Mach Kick", "Wolf Fang Fist", "High Power Rush",
    "Meteor Strike", "Meteor Charge", "Spirit Breaking Cannon", "Vital Strike", "Flash Kick"
}


task.wait(1)


spawn(function()
    while true do
        pcall(function()
            if data.Quest.Value ~= "" then
                game:GetService("ReplicatedStorage").Package.Events.Hak:InvokeServer("Destruction", {["MouseHit"] = CFrame.new(0, 0, 0), ["FaceMouse"] = true}, "Blacknwhite27")
                game:GetService("ReplicatedStorage").Package.Events.Hak:InvokeServer("Soul Punisher", {["MouseHit"] = CFrame.new(0, 0, 0), ["FaceMouse"] = true}, "Blacknwhite27")
                wait(0.1)
            end
        end)
        wait(0.5)
    end
end)

spawn(function()
    while true do
        pcall(function()
            if data.Quest.Value ~= "" then
                for _, attackName in ipairs(attacks2) do
                    task.spawn(function()
                        pcall(function()
                            game.ReplicatedStorage.Package.Events.mel:InvokeServer(attackName, "Blacknwhite27")
                        end)
                    end)
                end
            end
        end)
        wait(2)
    end
end)


spawn(function()
    while true do
        pcall(function()
            if data.Quest.Value ~= "" then
                local args = {
                    [1] = "Energy Volley",
                    [2] = {
                        ["MouseHit"] = CFrame.new(0, 0, 0),
                        ["FaceMouse"] = true
                    },
                    [3] = "Blacknwhite27"
                }
                game:GetService("ReplicatedStorage").Package.Events.voleys:InvokeServer(unpack(args))
            end
        end)
        wait(2)
    end
end)


spawn(function()
    while true do
        pcall(function()
            game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 1)
        end)
        task.wait(0.2)
    end
end)



local lplr = game.Players.LocalPlayer
local data = game.ReplicatedStorage:WaitForChild("Datas"):WaitForChild(lplr.UserId)

task.spawn(function()
    while true do
        pcall(function()
                local questValue = game.ReplicatedStorage.Datas[lplr.UserId].Quest.Value
                local boss = game.Workspace.Living:FindFirstChild(questValue)
                if boss and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0 then
                    lplr.Character.HumanoidRootPart.CFrame = boss.HumanoidRootPart.CFrame * CFrame.new(0, 0, 4)
                
            end
        end)
        task.wait()
    end
end)


pcall(function()
    local player = game.Players.LocalPlayer
    local data = game.ReplicatedStorage.Datas[player.UserId]
    local events = game:GetService("ReplicatedStorage").Package.Events

    local missions = {
        { name = "Klirin", bossName = "Klirin", requiredValue = 0, endRange = 100000 },
        { name = "Kid Nohag", bossName = "Kid Nohag", requiredValue = 20000, endRange = 200000 },
        { name = "Radish", bossName = "Radish", requiredValue = 100001, endRange = 300000 },
        { name = "Mapa", bossName = "Mapa", requiredValue = 200001, endRange = 400000 },
        { name = "Citizen", bossName = "Evil Saya", requiredValue = 300001, endRange = 700000 },
        { name = "Top X Fighter", bossName = "X Fighter Master", requiredValue = 400001, endRange = 1200000 },
        { name = "Super Vegetable", bossName = "Super Vegetable", requiredValue = 750001, endRange = 5000000 },
        { name = "Perfect Atom", bossName = "Perfect Atom", requiredValue = 3500000, endRange = 8000000 },
        { name = "SSJ2 Wukong", bossName = "SSJ2 Wukong", requiredValue = 5000001, endRange = 25000000 },
        { name = "SSJB Wukong", bossName = "SSJB Wukong", requiredValue = 8000000, endRange = 75000000 },
        { name = "Broccoli", bossName = "Broccoli", requiredValue = 25000001, endRange = 125000000 },
        { name = "SSJG Kakata", bossName = "SSJG Kakata", requiredValue = 75000001, endRange = 125000000 },
        { name = "Vegetable (GoD in-training)", bossName = "Vegetable (GoD in-training)", requiredValue = 125000001, endRange = 350000000 },
        { name = "Wukong (Omen)", bossName = "Wukong (Omen)", requiredValue = 200000001, endRange = 800000000 },
        { name = "Vills (50%)", bossName = "Vills (50%)", requiredValue = 350000001, endRange = 1200000000 },
        { name = "Vis (20%)", bossName = "Vis (20%)", requiredValue = 800000001, endRange = 1700000000 },
        { name = "Vegetable (LBSSJ4)", bossName = "Vegetable (LBSSJ4)", requiredValue = 1200000001, endRange = 2300000000 },
        { name = "Wukong (LBSSJ4)", bossName = "Wukong (LBSSJ4)", requiredValue = 1700000001, endRange = 3000000000 },
        { name = "Vekuta (LBSSJ4)", bossName = "Vekuta (LBSSJ4)", requiredValue = 2300000001, endRange = 3500000000 },
        { name = "Wukong Rose", bossName = "Wukong Rose", requiredValue = 3000000001, endRange = math.huge },
        { name = "Vekuta (SSJBUI)", bossName = "Vekuta (SSJBUI)", requiredValue = 3500000001, endRange = math.huge },
    }

    local missionIndices = {}
    local missionCooldowns = {} -- Tabla para rastrear el tiempo de enfriamiento de las misiones
    local SelectedQuest = nil
    local SelectedMob = nil

    local function assignQuest()
        local checkValue = math.min(data.Strength.Value, data.Energy.Value, data.Defense.Value, data.Speed.Value)
        local validMissions = {}
        for _, mission in ipairs(missions) do
            if checkValue >= mission.requiredValue and checkValue <= mission.endRange then
                -- Ignorar misiones en cooldown
                if not missionCooldowns[mission.name] or os.time() > missionCooldowns[mission.name] then
                    if not validMissions[mission.endRange] then
                        validMissions[mission.endRange] = {}
                    end
                    table.insert(validMissions[mission.endRange], mission)
                end
            end
        end

        for endRange, group in pairs(validMissions) do
            if not missionIndices[endRange] then
                missionIndices[endRange] = 0
            end
            missionIndices[endRange] = (missionIndices[endRange] % #group) + 1
            local mission = group[missionIndices[endRange]]

            SelectedQuest = mission.name
            SelectedMob = mission.bossName
            break
        end
    end

    local function startMission()
        if SelectedQuest then
            local npc = game:GetService("Workspace").Others.NPCs:FindFirstChild(SelectedQuest)
            if npc and npc:FindFirstChild("HumanoidRootPart") then
                player.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame
                events.Qaction:InvokeServer(npc)
                -- Poner la misión en cooldown de 6 segundos
                missionCooldowns[SelectedQuest] = os.time() + 8
            end
        end
    end

    task.spawn(function()
        while true do
            pcall(function()
                local questValue = data.Quest.Value
                if questValue == "" or questValue == "None" then
                    assignQuest()
                    if SelectedQuest then
                        startMission()
                    end
                elseif questValue ~= SelectedQuest then
                    SelectedQuest = questValue
                end
            end)
            task.wait(6)
        end
    end)
end)


local lplr = game.Players.LocalPlayer
local data = game.ReplicatedStorage:WaitForChild("Datas"):WaitForChild(lplr.UserId)
local events = game:GetService("ReplicatedStorage").Package.Events

local hasTeleportedToVills = false
local isInVills = (game.PlaceId == 5151400895) -- Verifica si el jugador ya está en "Vills"

local missions = {
    { name = "SSJG Kakata", bossName = "SSJG Kakata", requiredValue = 75000001, endRange = 1250000000000000 },
   
}

local SelectedQuest = nil
local SelectedMob = nil

local function assignQuest()
    local checkValue = math.min(data.Strength.Value, data.Energy.Value, data.Defense.Value, data.Speed.Value)
    

    if checkValue >= 75000000 then
        for _, mission in ipairs(missions) do
            if checkValue >= mission.requiredValue and checkValue <= mission.endRange then
                SelectedQuest = mission.name
                SelectedMob = mission.bossName
                break
            end
        end
    else
        
        SelectedQuest = nil
        SelectedMob = nil
    end
end

local function startMission()
    if SelectedQuest then
        local npc = game:GetService("Workspace").Others.NPCs:FindFirstChild(SelectedQuest)
        if npc and npc:FindFirstChild("HumanoidRootPart") then
            lplr.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame
            events.Qaction:InvokeServer(npc)
        end
    end
end

task.spawn(function()
    while true do
        pcall(function()
          
            if not isInVills or not hasTeleportedToVills then
                assignQuest()
                local questValue = data.Quest.Value
                if questValue ~= SelectedQuest then
                    startMission()
                end
            end
        end)
        task.wait(0.5)
    end
end)

task.spawn(function()
    while true do
        pcall(function()
            -- Verifica las condiciones para teletransportarse a "Vills"
            if not isInVills and (data.Strength.Value >= 125000000 and data.Energy.Value >= 125000000 and data.Defense.Value >= 125000000 and data.Speed.Value >= 125000000 and data.Zeni.Value >= 15000) then
                if not hasTeleportedToVills then
                    events.TP:InvokeServer("Vills Planet")
                    hasTeleportedToVills = true
                    task.wait(8)
                end
            elseif isInVills and not (data.Strength.Value >= 125000000 and data.Energy.Value >= 125000000 and data.Defense.Value >= 125000000 and data.Speed.Value >= 125000000) then
                -- Si está en Vills pero no cumple con las estadísticas, teletransportarse de regreso a "Earth"
                events.TP:InvokeServer("Earth")
                isInVills = false
                hasTeleportedToVills = false
                task.wait(8)
            end
        end)
        task.wait(1)
    end
end)

task.spawn(function()
    while true do
        pcall(function()
            -- Actualiza el estado de "isInVills" si el jugador está en el lugar correcto
            if game.PlaceId == 5151400895 then
                isInVills = true
                hasTeleportedToVills = true
            end
        end)
        task.wait(1)
    end
end)

--Finde ciclo 👆
            end
        end)
        wait()
    end
end)

verJugadores.MouseButton1Click:Connect(function()
    local isAllowed = table.find(allowedPlayers, lplr.Name:lower()) ~= nil
    if isAllowed then
    -- Aki va el lector de Stats 
    
    else
        verificationLabel.Text = "Acceso No Permitido"
    end
end)