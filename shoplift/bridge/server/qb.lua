local QBBridge = {}
QBBridge.__index = QBBridge
local QBCore = nil

function QBBridge:Init()
    QBCore = exports['qb-core']:GetCoreObject()
    if not QBCore then
        return false
    end
    return true
end

function QBBridge:GetPlayer(playerId)
    return QBCore.Functions.GetPlayer(playerId)
end

function QBBridge:GetPlayerFromIdentifier(identifier)
    return QBCore.Functions.GetPlayerByCitizenId(identifier)
end

function QBBridge:AddMoney(playerId, amount, moneyType)
    local Player = self:GetPlayer(playerId)
    if not Player then return false end
    moneyType = moneyType or 'cash'
    if moneyType == 'black_money' then
        local metadata = { worth = amount }
        Player.Functions.AddItem('markedbills', 1, false, metadata)
        TriggerClientEvent('inventory:client:ItemBox', playerId, QBCore.Shared.Items['markedbills'], 'add')
        return true
    end
    Player.Functions.AddMoney(moneyType, amount)
    return true
end

function QBBridge:RemoveMoney(playerId, amount, moneyType)
    local Player = self:GetPlayer(playerId)
    if not Player then return false end
    moneyType = moneyType or 'cash'
    Player.Functions.RemoveMoney(moneyType, amount)
    return true
end

function QBBridge:GetMoney(playerId, moneyType)
    local Player = self:GetPlayer(playerId)
    if not Player then return 0 end
    moneyType = moneyType or 'cash'
    return Player.PlayerData.money[moneyType] or 0
end

function QBBridge:HasMoney(playerId, amount, moneyType)
    return self:GetMoney(playerId, moneyType) >= amount
end

function QBBridge:GetPlayerIdentifier(playerId)
    local Player = self:GetPlayer(playerId)
    if not Player then return nil end
    return Player.PlayerData.citizenid
end

function QBBridge:GetPlayerName(playerId)
    local Player = self:GetPlayer(playerId)
    if not Player then return "Unknown" end
    return Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname
end

function QBBridge:GetFramework()
    return QBCore
end

function QBBridge:AddItem(playerId, item, count, metadata)
    local Player = self:GetPlayer(playerId)
    if not Player then return false end
    count = count or 1
    Player.Functions.AddItem(item, count, false, metadata)
    TriggerClientEvent('inventory:client:ItemBox', playerId, QBCore.Shared.Items[item], 'add')
    return true
end

function QBBridge:RemoveItem(playerId, item, count)
    local Player = self:GetPlayer(playerId)
    if not Player then return false end
    count = count or 1
    Player.Functions.RemoveItem(item, count)
    TriggerClientEvent('inventory:client:ItemBox', playerId, QBCore.Shared.Items[item], 'remove')
    return true
end

return QBBridge