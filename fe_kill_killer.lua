    if not game['Loaded'] or not game:GetService('Players')['LocalPlayer'] then
        game['Loaded']:Wait();
        game:WaitForChild(game:GetService('Players'));
        game:GetService('Players'):WaitForChild(game:GetService('Players').LocalPlayer.Name)
    end
    if game.Players.LocalPlayer.UserId == 304178765 then -- the userid of the bot ur using to kill 
    assert(getrawmetatable)
    gmt = getrawmetatable(game)
    setreadonly(gmt, false)
    old = gmt.__namecall
    gmt.__namecall =
        newcclosure(
            function(self, ...)
            local args = {...}
            if tostring(args[1]) == "BreathingHAMON" then
                return
            elseif tostring(args[1]) == "TeleportDetect" then
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
            elseif tostring(args[1]) == "BANREMOTE" then
                return
            elseif tostring(args[1]) == "PERMAIDBAN" then
                return
            elseif tostring(args[1]) == "BR_KICKMOBILE" then
                return
            elseif tostring(args[1]) == "KICKREMOTE" then
                return
            elseif tostring(args[1]) == "BR_KICKPC" then
                return end

            return old(self, ...)
    end)
    --//------------------------------------------------------------------------------------------\\--
    lp = game:GetService("Players").LocalPlayer
    rs = game:GetService("RunService")
    THEGUYWHOUSESTHECOMMAND = game:GetService("Players")["DeborahMiles26"] -- guy who casts
    UIS = game:GetService('UserInputService')
    N = game:GetService("VirtualInputManager")
--//------------------------------------------------------------------------------------------\\--
    function sendNotification(title,text)
        game:GetService("StarterGui"):SetCore("SendNotification",  {
            Title = title;
            Text = text;
            Duration = 1;
            Button1 = "Okay!";
            Callback = NotificationBindable;
        })
    end
    --//------------------------------------------------------------------------------------------\\--
    local newCharacter =  game.Workspace:WaitForChild(lp.Name)
    local spoofFolder = Instance.new('Folder');
    spoofFolder.Name = 'FULLY_LOADED_CHAR';
    spoofFolder.Parent = newCharacter;
    newCharacter:WaitForChild('RagdollConstraints'):Destroy();
    local spoofValue = Instance.new('BoolValue', newCharacter);
    spoofValue.Name = 'RagdollConstraints';         
    lp.Character.BodyEffects.Defense:Destroy()
    Defense = Instance.new("IntValue", lp.Character.BodyEffects)
    Defense.Name = "Defense"
    Defense.Value = 101
    lp.Character:WaitForChild('BodyEffects').Armor:Destroy()
    lp.Character:WaitForChild('BodyEffects')["BreakingParts"]:Destroy()
    local Clone1 = Instance.new("IntValue")
    local Clone2 = Instance.new("Folder")
    Clone1.Name = "Armor"
    Clone1.Value = 101
    Clone1.Parent = lp.Character.BodyEffects
    Clone2.Name = "BreakingParts"
    Clone2.Parent = lp.Character.BodyEffects
    --//------------------------------------------------------------------------------------------\\--
    repeat rs.Stepped:Wait() until not lp.Character:FindFirstChild("ForceField_TESTING")
    sendNotification("JoJo's Bizarre Kill", "LOADED")
    local function GetPlayer(String)
    String = String or 'N/A'
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():match('^'..String:lower()) or v.DisplayName:lower():match('^'..String:lower()) then
                return v
            end
        end
    return false
    end
    --//------------------------------------------------------------------------------------------\\--
     THEGUYWHOUSESTHECOMMAND.Chatted:connect(function(Message)
     local Target = GetPlayer(Message:match(":re %s*(.+)"))
      if not Target then return end
       pcall(function()
       lp.Character.Humanoid:UnequipTools()
       local Humanoid = lp.Character.Humanoid:Clone()
       local Tool1 = lp.Backpack:FindFirstChild("Wallet")
       lp.Character.Humanoid:Destroy()
       Humanoid.Parent = lp.Character
       Tool1.Parent = lp.Character
       lp.Character.Humanoid:ChangeState(15)
       wait()
       for i = 150, 0, -1 do
       rs.Stepped:Wait()
       lp.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame* CFrame.new(-1,0,1)
      end
    end)
    end)
    --//------------------------------------------------------------------------------------------\\--
	local Dir = game:GetService("CoreGui"):FindFirstChild("RobloxPromptGui"):FindFirstChild("promptOverlay")
	Dir.DescendantAdded:Connect(function(Err)
		if Err.Name == "ErrorTitle" then
			Err:GetPropertyChangedSignal("Text"):Connect(function()
				if Err.Text:sub(0, 12) == "Disconnected" then
					if #game.Players:GetPlayers() <= 1 then
						game.Players.LocalPlayer:Kick("\nRejoining...")
						wait()
						game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
					else
						game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
					end
				end
			end)
		end
	end)
else end