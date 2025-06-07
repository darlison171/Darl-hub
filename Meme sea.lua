local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/weakhoes/Roblox-UI-Libs/main/Shadow%20Lib/Shadow.lua"))()
local Window = Library:CreateWindow("Nexus Hub")

-- Abas (Tabs)
local AutoFarmTab = Window:CreateTab("Auto Farm")
local PlayerTab = Window:CreateTab("Player")
local TeleportTab = Window:CreateTab("Teleports")
local ItensTab = Window:CreateTab("Itens")
local ESPTab = Window:CreateTab("ESP")
local ConfigTab = Window:CreateTab("Configurações")

-- Exemplos de componentes em cada aba
AutoFarmTab:CreateToggle("Auto Farm Mobs", false, function(value)
    print("Auto Farm Mobs:", value)
end)

PlayerTab:CreateToggle("Speed Hack", false, function(value)
    print("Speed Hack:", value)
end)

TeleportTab:CreateButton("Ir para Ilha", function()
    print("Teleportando...")
end)

ItensTab:CreateToggle("Auto Coletar Itens", false, function(value)
    print("Auto Coleta:", value)
end)

ESPTab:CreateToggle("Mostrar Chests", false, function(value)
    print("ESP:", value)
end)

ConfigTab:CreateSlider("Volume", 0, 100, 50, function(value)
    print("Volume:", value)
end)