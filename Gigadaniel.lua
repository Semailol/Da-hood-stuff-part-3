local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Tool = Instance.new("Tool")
Tool.RequiresHandle = false
Tool.Name = "GigaDaniel"
local OriginalKeyUpValue = 0

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3716468774"

function StopAudio()
    LocalPlayer.Character.LowerTorso.BOOMBOXSOUND:Stop()
end

function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end

function play(ID, STOP, LMAO)
    if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        if LocalPlayer.Character:FindFirstChildOfClass("Tool") and LMAO == true then
            Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
            LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
        end
        LocalPlayer.Backpack["[Boombox]"].Parent =
            LocalPlayer.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        LocalPlayer.Character["[Boombox]"].RequiresHandle = false
        if LocalPlayer.Character["[Boombox]"]:FindFirstChild("Handle") then
            LocalPlayer.Character["[Boombox]"].Handle:Destroy()
        end
        LocalPlayer.Character["[Boombox]"].Parent =
            LocalPlayer.Backpack
        LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = LocalPlayer.Character
            end
        end
        if STOP == true then
            LocalPlayer.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
            cor()
        end
    end
end

Tool.Activated:Connect(function()
    local Character = LocalPlayer.Character
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")

function Slide()
    local XD = LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Anim)
    XD:Play()
    XD.TimePosition = 0.15
    XD.Looped = false
    XD:AdjustSpeed(0.025)
end

    play(6955550726, true, true)
    Humanoid:LoadAnimation(Anim):Play()
    Slide()
end)
Tool.Parent = LocalPlayer.Backpack