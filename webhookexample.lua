-- Put this on Top of your Script

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local HttpService = game:GetService("HttpService")

local serverUrl = "youreenderlink/execute" -- /execute at the and !!!!

local function sendStats()
    local leaderstats = localPlayer:WaitForChild("leaderstats")
    local stats = {
        strength = leaderstats.Strength.Value,
        rebirths = leaderstats.Rebirths.Value,
        kills = leaderstats.Kills.Value,
        brawls = leaderstats.Brawls.Value,
        durability = localPlayer:WaitForChild("Durability").Value,
        agility = localPlayer:WaitForChild("Agility").Value
    }

    local payload = {
        name = localPlayer.DisplayName,
        username = localPlayer.Name,
        stats = stats
    }

    local req = request or http_request or (syn and syn.request)
    if not req then
        warn("No Http function")
        return
    end

    local success, err = pcall(function()
        req({
            Url = serverUrl,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = HttpService:JSONEncode(payload)
        })
    end)

    if success then
        print("Stats sent")
    else
        warn("Error:", err)
    end
end

sendStats()