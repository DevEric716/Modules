local NetworkHandler = {}

function NetworkHandler.FireClientSafe(player, eventName, ...)
if typeof(player) ~= "Instance" or not player:IsA("Player") then return end
game.ReplicatedStorage.RemoteEvents[eventName]:FireClient(player, ...)
end

function NetworkHandler.OnServerEvent(eventName, callback)
local remote = game.ReplicatedStorage.RemoteEvents:FindFirstChild(eventName)
if remote then
remote.OnServerEvent:Connect(function(player, ...)
if player and player:IsA("Player") then
callback(player, ...)
end
end)
end
end

return NetworkHandler
