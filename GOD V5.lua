local a = false

function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.J and gameProcessedEvent == false then
     if a == false then
       a = true
game.Players.LocalPlayer.Character.BodyEffects:FindFirstChild('K.O'):Destroy()


local Alt = Instance.new("BoolValue")
Alt.Name = "K.O"
Alt.Parent = game.Players.LocalPlayer.Character.BodyEffects

     elseif a == true then
       a = false
     for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v:Destroy()
            end
end
       
     end
   end
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)