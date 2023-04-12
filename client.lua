ESX = nil

local PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end
    
    PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

local Template = {
    {x = -425.73, y = 6356.89, z = 13.33},
    {x = -425.73, y = 6356.89, z = 13.33},
    {x = -425.73, y = 6356.89, z = 13.33}
}