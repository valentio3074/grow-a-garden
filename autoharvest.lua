-- Auto raccolta per Grow a Garden (veloce e Solara compatibile)

local function raccogliTutto()
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("ProximityPrompt") and (obj.ActionText == "Harvest" or obj.ObjectText == "Harvest") then
            fireproximityprompt(obj, 0) -- attiva subito senza delay
        end
    end
end

-- raccolta costante: ogni 0.25 secondi
while true do
    task.wait(0.25)
    pcall(raccogliTutto)
end
