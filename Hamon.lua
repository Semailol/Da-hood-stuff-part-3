game.Players.LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.Visible = true
game.Players.LocalPlayer.CharacterAdded:Connect(function()
game.Players.LocalPlayer.PlayerGui:WaitForChild("MainScreenGui"):WaitForChild("Bar"):WaitForChild("HP"):WaitForChild("Picture"):WaitForChild("Life").Visible = true
end)

assert(getrawmetatable)
gmt = getrawmetatable(game)
setreadonly(gmt, false)
old = gmt.__namecall
gmt.__namecall =
    newcclosure(
        function(self, ...)
        local args = {...}
        if tostring(args[1]) == "TeleportDetect" then
            return
        elseif tostring(args[1]) == "CHECKER_1" then
            return
        elseif tostring(args[1]) == "CHECKER" then
            return
        elseif tostring(args[1]) == "GUI_CHECK" then
            return
        elseif tostring(args[1]) == "OneMoreTime" then
            return
        elseif tostring(args[1]) == "checkingSPEED" then
            return
        end

        return old(self, ...)
    end
    )