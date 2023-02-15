repeat wait() until game.Loaded
game:GetService("RunService"):Set3dRenderingEnabled(false)
setfpscap(10)
task.wait(5)


if game.PlaceId == 5411459567 then
    repeat task.wait(1) until game.Workspace.Message
end
_G.MinTimer = 60

local function notify(text)
    game.StarterGui:SetCore("SendNotification", {
        Title = "RZiln's AFK hop",
        Duration = 10,
        Text = text
    })
end

if game.GameId == 578392296 then
    if game.PlaceId ~= 5411459567 then
        queue_on_teleport(
            'loadstring(game:HttpGet("https://raw.githubusercontent.com/ikuTenss/the-zaza/main/r", true))()')
        game:GetService('TeleportService'):Teleport(5411459567)
    end

    local function timerCheck()
        local timer = game.Workspace.Message.Text:split(" ")
        local time = tonumber(timer[1])
        return time
    end

    if timerCheck() <= _G.MinTimer then
        repeat
            task.wait()
        until timerCheck() > _G.MinTimer
        task.wait(1)
        queue_on_teleport(
            'loadstring(game:HttpGet("https://raw.githubusercontent.com/ikuTenss/the-zaza/main/r", true))()')
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RZiln/GayBloxScripts/master/ABA/ServerHop.lua", true))()
    else
        queue_on_teleport(
            'loadstring(game:HttpGet("https://raw.githubusercontent.com/ikuTenss/the-zaza/main/r", true))()')
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RZiln/GayBloxScripts/master/ABA/ServerHop.lua", true))()
    end

end
