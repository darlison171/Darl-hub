-- Carrega a Octernal Lib
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/weakhoes/Roblox-UI-Libs/main/Octernal%20Lib/Octernal%20Lib%20Source.lua"))()

-- Cria a Janela
local Window = Library:CreateWindow("Nexus Hub", Vector2.new(492, 598), Enum.KeyCode.RightControl)

-- Função utilitária para criar aba com setores
local function CreateTabWithSectors(name)
    local tab = Window:CreateTab(name)
    return {
        left = tab:CreateSector(name .. " - Esquerda", "left"),
        right = tab:CreateSector(name .. " - Direita", "right")
    }
end

-- TABS e setores
local tabs = {
    autofarm = CreateTabWithSectors("Auto Farm"),
    mastery = CreateTabWithSectors("Mastery & Quests"),
    pvp = CreateTabWithSectors("PvP"),
    bosses = CreateTabWithSectors("Bosses & Raids"),
    raros = CreateTabWithSectors("Itens Raros"),
    teleport = CreateTabWithSectors("Teleports"),
    esp = CreateTabWithSectors("ESP / Visual"),
    config = CreateTabWithSectors("Configurações")
}

-- ========= AUTO FARM =========
tabs.autofarm.left:AddToggle("Ativar Auto Farm", false, function(v) print("Auto Farm:", v) end)
tabs.autofarm.left:AddToggle("Farm Enemies Específicos", false, function(v) print("Farm Específico:", v) end)
tabs.autofarm.right:AddSlider("Delay de Ataque", 0, 10, 1, 1, function(v) print("Delay:", v) end)
tabs.autofarm.right:AddDropdown("Modo de Farm", {"Normal", "Safe", "Burst"}, function(v) print("Modo:", v) end)

-- ========= MASTERY & QUESTS =========
tabs.mastery.left:AddToggle("Auto Mastery", false, function(v) print("Auto Mastery:", v) end)
tabs.mastery.left:AddToggle("Auto Quest", false, function(v) print("Auto Quest:", v) end)
tabs.mastery.right:AddDropdown("Escolher Arma", {"Katana", "CDK", "Saber"}, function(v) print("Arma:", v) end)

-- ========= PVP =========
tabs.pvp.left:AddToggle("Auto PvP (Mobile)", false, function(v) print("Auto PvP:", v) end)
tabs.pvp.left:AddToggle("Auto Bounty", false, function(v) print("Auto Bounty:", v) end)
tabs.pvp.right:AddDropdown("Modo de Ataque", {"Normal", "Skill-Only"}, function(v) print("Modo:", v) end)

-- ========= BOSSES & RAIDS =========
tabs.bosses.left:AddButton("Teleportar para Katakuri", function() print("Katakuri TP") end)
tabs.bosses.left:AddButton("Teleportar para Longma", function() print("Longma TP") end)
tabs.bosses.right:AddToggle("Auto Bosses", false, function(v) print("Auto Bosses:", v) end)
tabs.bosses.right:AddDropdown("Boss", {"Katakuri", "Longma", "Stone"}, function(v) print("Boss:", v) end)

-- ========= ITENS RAROS =========
tabs.raros.left:AddToggle("Buscar CDK", false, function(v) print("Buscar CDK:", v) end)
tabs.raros.left:AddToggle("Buscar Soul Guitar", false, function(v) print("Soul Guitar:", v) end)
tabs.raros.right:AddToggle("Auto God Human", false, function(v) print("God Human:", v) end)
tabs.raros.right:AddToggle("Auto Tushita", false, function(v) print("Tushita:", v) end)

-- ========= TELEPORTS =========
tabs.teleport.left:AddButton("Ir para Third Sea", function() print("Teleport: Third Sea") end)
tabs.teleport.left:AddButton("Ir para Hydra Island", function() print("Teleport: Hydra") end)
tabs.teleport.right:AddDropdown("Ilhas", {"Starter", "Pirate", "Cafe", "Hydra", "Castle"}, function(v) print("Ilha:", v) end)

-- ========= ESP / VISUAL =========
tabs.esp.left:AddToggle("ESP Frutas", false, function(v) print("ESP Frutas:", v) end)
tabs.esp.left:AddToggle("ESP Players", false, function(v) print("ESP Players:", v) end)
tabs.esp.right:AddToggle("ESP Chests", false, function(v) print("ESP Chests:", v) end)
tabs.esp.right:AddToggle("ESP Flores", false, function(v) print("ESP Flores:", v) end)

-- ========= CONFIGURAÇÕES =========
tabs.config.left:AddToggle("Anti-Report", false, function(v) print("Anti-Report:", v) end)
tabs.config.left:AddToggle("Anti-Kick", false, function(v) print("Anti-Kick:", v) end)
tabs.config.right:AddButton("Fechar Script", function() print("Fechando script...") end)

-- Créditos no print (removível)
print("✅ Nexus Hub UI carregada com sucesso! Agora é só conectar seus sistemas.")