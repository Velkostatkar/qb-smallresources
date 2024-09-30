-- qb-smallresources/client/HelpMeDecideSpin.lua
-- Adding "Help Me Decide" feature to qb-smallresources

local keywords = {
    "attack",
    "defend",
    "run",
    "negotiate",
    "observe",
    "manipulate",
    "assist",
    "provoke"
}

-- Command to display the spinner
RegisterCommand('spin', function()
    if #keywords > 0 then
        ChooseRandomWord()  -- Selects a random word from the predefined keywords
    else
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0},
            multiline = true,
            args = {"Help Me Decide", "No keywords are defined!"}
        })
    end
end)

-- Function to choose a random keyword
function ChooseRandomWord()
    local randomIndex = math.random(1, #keywords)
    local chosenWord = keywords[randomIndex]

    -- Display the selected keyword in the chat
    TriggerEvent('chat:addMessage', {
        color = { 0, 255, 0}, -- Green text
        multiline = true,
        args = {"Help Me Decide", "You chose: " .. chosenWord}
    })
end