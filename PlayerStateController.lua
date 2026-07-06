local PlayerState = {}
PlayerState.__index = PlayerState

function PlayerState.new(player)
local self = setmetatable({}, PlayerState)
self.Player = player
self.Status = "Lobby" -- Stare: Lobby, InGame, Voting, Spectating
return self
end

function PlayerState:SetStatus(newStatus)
self.Status = newStatus
print(self.Player.Name .. " is now " .. newStatus)
end

return PlayerState
