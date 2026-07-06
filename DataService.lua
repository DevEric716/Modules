local DataStoreService = game:GetService("DataStoreService")
local PlayerDataStore = DataStoreService:GetDataStore("PlayerStats_V1")

local DataService = {}

function DataService.SaveData(userId, data)
local success, result = pcall(function()
return PlayerDataStore:SetAsync("User_" .. userId, data)
end)
