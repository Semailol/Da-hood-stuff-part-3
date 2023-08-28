local user = 'preachdied'
local dropmoney = false
repeat wait() until game.Players:FindFirstChild(user) 


game.Players:FindFirstChild(user).Chatted:Connect(function(msg)

    if msg == ";dropmoney" then
        dropmoney = not dropmoney
    end


    if msg ==";kill" then    
        game.Players.LocalPlayer.Character.Head:Destroy()

    end

    if msg ==";bring" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild('preachdied').Character.HumanoidRootPart.CFrame

    end

    if msg ==";freeze" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = not game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if dropmoney then
        local args = {
            [1] = "DropMoney",
            [2] = "10000" --change to how much money you want to drop
        }
        game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))  
    end
end)