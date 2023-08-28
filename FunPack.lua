local LocalPlayer = game:GetService("Players").LocalPlayer
local OriginalKeyUpValue = 0

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://2788838708"

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

game:GetService("UserInputService").InputBegan:connect(function(i, XD)
	if i.UserInputType == Enum.UserInputType.Keyboard and XD == false then
		if i.KeyCode == Enum.KeyCode.Y then
			local Character = LocalPlayer.Character
			local Humanoid = Character:FindFirstChildOfClass("Humanoid")

			function rm()
				for i,v in pairs(Character:GetDescendants()) do
					if v:IsA("BasePart") or v:IsA("MeshPart") then
						if v.Name ~= "Head" then
							for i,cav in pairs(v:GetDescendants()) do
								if cav:IsA("Attachment") then
									if cav:FindFirstChild("OriginalPosition") then
										cav.OriginalPosition:Destroy()
									end
								end
							end
							for i,v in pairs(v:GetChildren()) do
								if v.Name == "OriginalSize" then
									v:Destroy()
								end
							end
							if v:FindFirstChild("AvatarPartScaleType") then
								v:FindFirstChild("AvatarPartScaleType"):Destroy()
							end
						end
					end
				end
			end
			
			play(862491729, true, true)
			Humanoid:LoadAnimation(Anim):Play()
        wait(0.2)
        rm()
        Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
        wait(0.2)

        rm()
        Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
        wait(0.010)

        rm()
        Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
        wait(0.010)

        rm()
        Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
        wait(0.010)
		end
	end
end)

local LocalPlayer = game:GetService("Players").LocalPlayer
local OriginalKeyUpValue = 0

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://2788838708"

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

LocalPlayer.Chatted:Connect(function(msg)
    if msg == "I'm gonna rip you in half now!" then
        local Character = LocalPlayer.Character
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")

        function rm()
            for i,v in pairs(Character:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("MeshPart") then
                    if v.Name ~= "Head" then
                        for i,cav in pairs(v:GetDescendants()) do
                            if cav:IsA("Attachment") then
                                if cav:FindFirstChild("OriginalPosition") then
                                    cav.OriginalPosition:Destroy()
                                end
                            end
                        end
                        for i,v in pairs(v:GetChildren()) do
                            if v.Name == "OriginalSize" then
                                v:Destroy()
                            end
                        end
                        if v:FindFirstChild("AvatarPartScaleType") then
                            v:FindFirstChild("AvatarPartScaleType"):Destroy()
                        end
                    end
                end
            end
        end

        Humanoid:LoadAnimation(Anim):Play()
    rm()
    Humanoid:FindFirstChild("HeadScale"):Destroy()
    wait(1)

    rm()
    Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
    wait(1)

    rm()
    Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
    wait(1)

    rm()
    Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
    wait(1)
    end
end)

local OriginalKeyUpValue = 0;

function StopAudio()
    game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND'):Stop();
end;

function Stop(i, v)
    local w = coroutine.wrap(function()
        wait(game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').TimeLength-0.1)
        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').SoundId == 'rbxassetid://'..i and OriginalKeyUpValue == v then
            StopAudio();
        end;
    end);
    w();
end;

local OriginalKeyUpValue = 0;

function StopAudio()
    game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND'):Stop();
end;

function Stop(i, v)
    local w = coroutine.wrap(function()
        wait(game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').TimeLength-0.1)
        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').SoundId == 'rbxassetid://'..i and OriginalKeyUpValue == v then
            StopAudio();
        end;
    end);
    w();
end;

function Play(i, v, w)
    if game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack'):FindFirstChild('[Boombox]') then
        local Tool = nil;
        if game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool') and w == true then
            Tool = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool')
            game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Parent = game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack');
        end;
        game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack'):FindFirstChild('[Boombox]').Parent = game:GetService('Players').LocalPlayer.Character;
        game:GetService('ReplicatedStorage'):FindFirstChild('MainEvent'):FireServer('Boombox', i);
        game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]').RequiresHandle = false;
        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]'):FindFirstChild('Handle') then
            game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]'):FindFirstChild('Handle'):Destroy();
        end
        game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]').Parent = game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack')
        if game:GetService('Players').LocalPlayer:FindFirstChildOfClass('PlayerGui'):FindFirstChild('MainScreenGui'):FindFirstChild('BoomboxFrame') then
            game:GetService('Players').LocalPlayer:FindFirstChildOfClass('PlayerGui'):FindFirstChild('MainScreenGui'):FindFirstChild('BoomboxFrame').Visible = false;
        end;
        if Tool ~= true then
            if Tool then
                Tool.Parent = game:GetService('Players').LocalPlayer.Character
            end;
        end;
        if v == true then
            game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):WaitForChild('BOOMBOXSOUND');
            local x = coroutine.wrap(function()
                repeat wait() until game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').SoundId == 'rbxassetid://'..i and game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue + 1;
                Stop(i, OriginalKeyUpValue);
            end);
            x();
        end;
    end;
end;

function Play2(v)
    Play(v, true, true);
end;

game:GetService('Players').LocalPlayer.Chatted:Connect(function(v)
    if v == "I'm gonna rip you in half now!" then
        wait(0.5)
        Play2(7148332723);
    end;
end);

local LocalPlayer = game:GetService("Players").LocalPlayer
local OriginalKeyUpValue = 0

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3380627692"

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

local LocalPlayer = game:GetService("Players").LocalPlayer
local OriginalKeyUpValue = 0

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3380627692"

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

game:GetService("UserInputService").InputBegan:connect(function(i, XD)
	if i.UserInputType == Enum.UserInputType.Keyboard and XD == false then
		if i.KeyCode == Enum.KeyCode.T then
			local Character = LocalPlayer.Character
			local Humanoid = Character:FindFirstChildOfClass("Humanoid")

local v = '_DEADSHOT';
game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents'):FindFirstChild('SayMessageRequest'):FireServer(v, 'All');

			function rm()
				for i,v in pairs(Character:GetDescendants()) do
					if v:IsA("BasePart") or v:IsA("MeshPart") then
						if v.Name ~= "Head" then
							for i,cav in pairs(v:GetDescendants()) do
								if cav:IsA("Attachment") then
									if cav:FindFirstChild("OriginalPosition") then
										cav.OriginalPosition:Destroy()
									end
								end
							end
							for i,v in pairs(v:GetChildren()) do
								if v.Name == "OriginalSize" then
									v:Destroy()
								end
							end
							if v:FindFirstChild("AvatarPartScaleType") then
								v:FindFirstChild("AvatarPartScaleType"):Destroy()
							end
						end
					end
				end
			end
			
			play(7229541025, true, true)
			Humanoid:LoadAnimation(Anim):Play()
		end
	end
end)

local MyStand = "preachdied"
local LocalPlayer = game:GetService("Players").LocalPlayer
local OriginalKeyUpValue = 0
local CoreUI = Instance.new("ScreenGui")
CoreUI.Parent = game.CoreGui
local SaveLocation = nil
local RigWalk = nil
local RigIdle = nil
local InTimeErase = false

getgenv().Toggled = false
local UIS = game:GetService("UserInputService")
UIS.InputBegan:connect(function(input,gameProcessed)
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if input.KeyCode == Enum.KeyCode.T then
			if UIS:GetFocusedTextBox() == nil then
				if getgenv().Toggled == false then
					getgenv().Toggled = true
				else
					getgenv().Toggled = true
				end;end;end;end;end)


local LocalPlayer = game:GetService("Players").LocalPlayer
local Cookies = LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
local OriginalKeyUpValue = 0
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://2788290270"
local Anim2 = Instance.new("Animation")
Anim2.AnimationId = "rbxassetid://3716468774"
local Anim3 = Instance.new("Animation")
Anim3.AnimationId = "rbxassetid://2788292075"
local CoreUI = Instance.new("ScreenGui")
CoreUI.Parent = game.CoreGui
local SaveLocation = nil
local RigWalk = nil
local RigIdle = nil
local InTimeErase = false

local Pointing = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
Pointing.AnimationId = "rbxassetid://507770453"

local Posing = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
Posing.AnimationId = "rbxassetid://3333136415"

local Poter = LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Pointing)
Poter.Looped = true
Poter.Priority = Enum.AnimationPriority.Action

local Pose = LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Posing)
Pose.Looped = true
Pose.Priority = Enum.AnimationPriority.Action

local WalkAnimation = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
WalkAnimation.AnimationId = "rbxassetid://2510198475"

local Idle = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
Idle.AnimationId = "rbxassetid://507766388"

local Position = LocalPlayer.Character.HumanoidRootPart.CFrame

function FoV()
	local fov = coroutine.wrap(function()
		local Camera = workspace.Camera
		for i = 1, 20 do
			Camera.FieldOfView = 8*i
			wait(0.01)
		end
		for i = 1, 20 do
			Camera.FieldOfView = 160-i*4.5
			wait(0.01)
		end
	end)
	fov()
end

local WalkSpeed = false

function Lighting()
	if game.Lighting:FindFirstChild("ERASE") == nil then
		local sound5 = Instance.new("Sound", CoreUI)
		sound5.Volume = 0.1
		sound5.Name = "ERASE"
		sound5.Looped = true
		sound5.SoundId = "rbxassetid://3167092959"
		sound5:Play()

		game.Lighting.Sky.Parent = workspace
		game:GetObjects("rbxassetid://6546113226")[1].Parent=game.Lighting

	else
		workspace.Sky.Parent = game.Lighting
		CoreUI:FindFirstChild("ERASE"):Destroy()
		game.Lighting:FindFirstChild("ERASE"):Destroy()
	end
end

function TimeEraseUI()
	local sound5 = Instance.new("Sound", CoreUI)
	sound5.Volume = 0.1
	sound5.SoundId = "rbxassetid://6546128175"
	sound5:Play()

	local Image = Instance.new("ImageLabel", CoreUI)
	Image.Image = "http://www.roblox.com/asset/?id=6546043746"
	Image.BackgroundTransparency = 1
	Image.AnchorPoint = Vector2.new(0.5, 0.5)
	Image.Size = UDim2.fromScale(1, 1)
	Image.Position = UDim2.fromScale(-0.5, 0.5)
	delay(0, function()
		for i = 0, 1, 0.1 do
			Image.Position = UDim2.fromScale(-Image.Position.X.Scale+i, 0.5)
			Image.ImageTransparency = Image.ImageTransparency+i
			wait(.01)
		end
		Image:Destroy()
		sound5:Destroy()
	end)
end

function ModelCharacter()
	if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") == nil then
		local MODEL = Instance.new("Model", workspace)
		MODEL.Name = LocalPlayer.Name.."StringKOD"

		LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()

		for i, v in pairs(LocalPlayer.Character:GetChildren()) do 
			if (v:IsA("BasePart")  or v:IsA("MeshPart")) and v.Parent:FindFirstChildOfClass("Humanoid") and v.Name ~= "HumanoidRootPart" then
				local Part = v:Clone()
				Part.Parent = MODEL
				Part.Name = v.Name
				Part.Material = Enum.Material.ForceField
				Part.CFrame = v.CFrame
				Part.Transparency = 0.5 
				Part.BrickColor = BrickColor.Red()
				Part.CanCollide = false
				Part.Anchored = true
				for i, v  in pairs(Part:GetChildren()) do 
					if v.ClassName ~= "SpecialMesh" then
						v:Destroy()
					end
				end
			end
		end
		local NewCharacter = game:GetObjects("rbxassetid://6547055500")[1]
		NewCharacter.Parent = MODEL
		NewCharacter.Name = "Idaro"

		workspace.Camera.CameraSubject = NewCharacter:FindFirstChildOfClass("Humanoid")
		SaveLocation = LocalPlayer.Character.HumanoidRootPart.CFrame
		InTimeErase = true
		NewCharacter.HumanoidRootPart.CFrame = SaveLocation

		RigIdle = NewCharacter:FindFirstChildOfClass("Humanoid"):LoadAnimation(Idle)
		RigIdle.Looped = true
		RigIdle.Priority = Enum.AnimationPriority.Action
		RigWalk = NewCharacter:FindFirstChildOfClass("Humanoid"):LoadAnimation(WalkAnimation)
		RigWalk.Looped = true
		RigWalk.Priority = Enum.AnimationPriority.Action
		WalkSpeed = true
		RigIdle:Play()
	else
		InTimeErase = false
		WalkSpeed = false
		workspace.Camera.CameraSubject =  LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		LocalPlayer.Character.HumanoidRootPart.CFrame =  workspace:FindFirstChild(LocalPlayer.Name.."StringKOD").Idaro.HumanoidRootPart.CFrame
		workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):Destroy()
	end
end

function Slide()
	local XD = LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Anim)
	XD:Play()
	XD.TimePosition = 0.15
	XD.Looped = false
	XD:AdjustSpeed(1.1)
end

function LOLXD()
	local XD = LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Anim3)
	XD:Play()
	XD.TimePosition = 0.15
	XD.Looped = false
	XD:AdjustSpeed(1.8)
end

function Noooo()
	local XD = LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Anim2)
	XD:Play()
	XD.Looped = false
end

function AddVelocity(Vel, Char)
	Char.HumanoidRootPart.Velocity = Char.HumanoidRootPart.Velocity+Vel
end

local IsJump = false

function Jumping()
	if IsJump == false then
		return false
	else
		return true
	end
end

local Mouse = LocalPlayer:GetMouse()

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
		end

		return old(self, ...)
	end
	)

local MoveDirection = Vector3.new(0,0,0)
local WSpped = 0 
local LeftSpeed = 0
local UpSpeed = 0

function IdleRigXD()
	if RigIdle and RigWalk.IsPlaying and WSpped == 0 and LeftSpeed == 0 and UpSpeed == 0 then
		RigIdle:Play()
		RigWalk:Stop()
	end
end

function WalkRigXD()
	if RigWalk and RigIdle.IsPlaying then
		RigIdle:Stop()
		RigWalk:Play()
	end
end

Mouse.KeyDown:Connect(function(KeyDownXD)
	if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") then
		if KeyDownXD == "w" then
			WSpped = -1
			WalkRigXD()
		elseif KeyDownXD == "a" then
			LeftSpeed = -1
			WalkRigXD()
		elseif KeyDownXD == "d" then
			LeftSpeed = 1
			WalkRigXD()
		elseif KeyDownXD == "s" then
			WSpped = 1
			WalkRigXD()
		end
	end
end)

Mouse.KeyUp:Connect(function(KeyDownXD)
	if KeyDownXD == "w" then
		WSpped = 0
		IdleRigXD()
	elseif KeyDownXD == "a" then
		LeftSpeed = 0
		IdleRigXD()
	elseif KeyDownXD == "d" then
		LeftSpeed = -0
		IdleRigXD()
	elseif KeyDownXD == "s" then
		WSpped = 0
		IdleRigXD()
	end
end)

local CD = false
_G.sonic = false
local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(i, XD)
	if LocalPlayer.Name == MyStand then
		if XD == false then
			if i.KeyCode == Enum.KeyCode.Space then
				if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") == nil then
					if Jumping() == true and not Poter.IsPlaying and not Pose.IsPlaying then
						AddVelocity(LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*150, LocalPlayer.Character)
						IsJump = false
						Cookies:Stop()
						CD = true
						play(6543434995, true, true)
						Slide()
						repeat wait() until workspace:FindPartOnRayWithWhitelist(Ray.new(LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(0, -4 * LocalPlayer.Character.HumanoidRootPart.Size.y, 0)), { workspace.MAP })
						CD = false
					end
				else
					workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):FindFirstChild("Idaro"):FindFirstChildOfClass("Humanoid"):ChangeState(3)
				end
			elseif i.KeyCode == Enum.KeyCode.Q and LocalPlayer:GetMouse().Target then
				play(7680555226, true, true)
				LOLXD()
				       	if mouse.Target then 
        		local part = mouse.Target
                local partSize = part.Size
                local halfSize = partSize.Y/2
                player.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.X,part.Position.Y + halfSize + 3,mouse.Hit.Z) * CFrame.Angles(math.rad(player.Character.HumanoidRootPart.Orientation.X),math.rad(player.Character.HumanoidRootPart.Orientation.Y),math.rad(player.Character.HumanoidRootPart.Orientation.Z))
                if not player.Character.LeftHand:FindFirstChild('LeftWrist') then
                    player.Character.LeftHand.Position = player.Character.LeftLowerArm.Position
                    player.Character.RightHand.Position = player.Character.RightLowerArm.Position
                end
            end
        end
    end
			elseif i.KeyCode == Enum.KeyCode.Z and _G.sonic == false then
				_G.sonic = true
				play(7711222302, true, true)
				repeat
					game["Run Service"].RenderStepped:Wait();
					LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Name = "Humz"
					LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed + 1
					game:GetService("Workspace"):FindFirstChildOfClass("Camera").FieldOfView = game:GetService("Workspace"):FindFirstChildOfClass("Camera").FieldOfView + 1
				until _G.sonic == false
				play(7711223382, true, true)
				LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Name = "Humanoid"
				for v = 1, 48 do
					game:GetService('Workspace').CurrentCamera.FieldOfView = game:GetService('Workspace').CurrentCamera.FieldOfView - 1
					game:GetService('RunService').RenderStepped:Wait()
				end
			elseif i.KeyCode == Enum.KeyCode.Z and _G.sonic == true then
				_G.sonic = false
			end
		end)

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

local function rm()
	for i, v in pairs(LocalPlayer.Character:GetDescendants()) do
		if v.Name == "OriginalPosition" then
			v:Destroy()
		elseif v.Name == "OriginalSize" then
			v:Destroy()
		elseif v.Name == "AvatarPartScaleType" then
			v:Destroy()
		end
	end
end

local TimeErase, CanCel = "Time erase!", "Time erase!"
local Transform, CancEl = "Transform!", "Transform!"
local Menacing, CanceL = "Pose!", "Pose!"
local noooooooo = "noo"
local XD = false
local LOL = false
local LMFAO = false
local LMFAO2 = false
game:GetService("Players")[MyStand].Chatted:Connect(function(MSG)
	if MSG == Menacing and LMFAO2 == false and LocalPlayer.Name ~= MyStand then
		print(MSG)
		LMFAO2 = true
	elseif MSG == CanceL and LMFAO2 == true and LocalPlayer.Name ~= MyStand then
		print(MSG)
		LMFAO2 = false
	end
end)
LocalPlayer.Chatted:Connect(function(MSG)
	if LocalPlayer.Name == MyStand then
		if MSG:sub(1, 11) == TimeErase and XD == false and not Poter.IsPlaying and not Pose.IsPlaying then
			XDDDD(XD)
		elseif MSG == CanCel and XD == true and not Poter.IsPlaying and not Pose.IsPlaying then
			XDDDD(XD)
		elseif MSG == "Rage!" then
			rm()
			wait(0.5)
			LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):FindFirstChild("BodyTypeScale"):Destroy()
			wait(1)

			rm()
			wait(0.5)
			LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):FindFirstChild("BodyWidthScale"):Destroy()
			wait(1)

			rm()
			wait(0.5)
			LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):FindFirstChild("BodyDepthScale"):Destroy()
			wait(1)

			rm()
			wait(0.5)
			LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):FindFirstChild("HeadScale"):Destroy()
			wait(1)
		elseif MSG == Transform and LOL == false then
		    
		    for _, v in pairs(game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):GetChildren()) do
    if string.find(v.Name, 'Scale') and v.Name ~= 'HeadScale' then
        v:Destroy();
    end;
end;
			LOL = true
			Position = LocalPlayer.Character.HumanoidRootPart.Position
			LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Medium Armor] - $1000"].Head.CFrame + Vector3.new(0, 3, 0)
			if (LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.Ignored.Shop["[Medium Armor] - $1000"].Head.Position).Magnitude <= 50 then
				wait(.17)
				fireclickdetector(game.Workspace.Ignored.Shop["[Medium Armor] - $1000"].ClickDetector, 4)
				wait()
				LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Position)
			end
			if LOLL ~= true then
				LOLL = true
				LocalPlayer.Character.BodyEffects.Armor.Changed:Connect(function(v)
					if LOL then
						play(7674657423, true, true)
					end
					if v == 0 and LOL then
						Position = LocalPlayer.Character.HumanoidRootPart.Position
						LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Medium Armor] - $1000"].Head.CFrame + Vector3.new(0, 3, 0)
						if (LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.Ignored.Shop["[Medium Armor] - $1000"].Head.Position).Magnitude <= 50 then
							wait(.17)
							fireclickdetector(game.Workspace.Ignored.Shop["[Medium Armor] - $1000"].ClickDetector, 4)
							wait()
							LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Position)
						end
					end
				end)
			end
		elseif MSG == CancEl and LOL == true then
			LOL = false
		elseif MSG == noooooooo then
			Noooo()
			play(7468719353, true, true)
			wait(1.2)
			for i, v in pairs(LocalPlayer.Character:GetChildren()) do
				if v:IsA("MeshPart") or v:IsA("Accessory") then
					v:Destroy()
				end
			end
		elseif MSG == Menacing and LMFAO == false then
			LMFAO = true
			play(2976247028, false, true)
		elseif MSG == CanceL and LMFAO == true then
			LMFAO = false
			StopAudio()
		end
	end
end)

function XDDDD(XDR)
	if XDR == false then
		XD = true
		play(6546133414, true, true)
		wait(1.5)
		TimeEraseUI()
		FoV()
		Lighting()
		ModelCharacter()
	else
		XD = false
		InTimeErase = false
		play(6543435253, true, true)
		TimeEraseUI()
		ModelCharacter()
		Lighting()
		FoV()
	end
end

function Jump(...)
	(...).Jumping:Connect(function()
		if CD == false and not Poter.IsPlaying and not Pose.IsPlaying and LocalPlayer.Name == MyStand then
			CD = true
			delay(1, function()
				CD = false
			end)
			Cookies:Play(0, 1, 1.4)
			AddVelocity(LocalPlayer.Character.HumanoidRootPart.CFrame.UpVector*120, LocalPlayer.Character)
			play(6543436906, true, true)
			delay(0, function()
				IsJump = true
				wait(1) 
				if IsJump == true then
					IsJump = false
				end
			end)
		end
	end)
end

Jump(LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))

LocalPlayer.CharacterAdded:Connect(function(Character)
	wait(1)
	if Character.Name == LocalPlayer.Name then
		Jump(Character:FindFirstChildOfClass("Humanoid"))
		Poter = Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Pointing)
		Poter.Looped = true
		Poter.Priority = Enum.AnimationPriority.Action
		Pose = Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Posing)
		Pose.Looped = true
		Pose.Priority = Enum.AnimationPriority.Action

		Cookies = Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
	end
end)

game["Run Service"].Heartbeat:Connect(function()
	if InTimeErase then
		for i, v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") then
				v.CFrame = CFrame.new(math.random(200, 500), math.random(200, 500), math.random(200, 500))
				v.Velocity = Vector3.new(0,0,0)
			end
		end

		if LocalPlayer.Character:FindFirstChild("Combat") and XD == true then
			XD = false
			XDDDD(true)
		end

		if WalkSpeed == true then
			MoveDirection = Vector3.new(LeftSpeed, UpSpeed, WSpped)
			workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):FindFirstChild("Idaro"):FindFirstChildOfClass("Humanoid"):Move(MoveDirection, true)
		end
	else
		if LocalPlayer.Character:FindFirstChild("[Flashlight]") then
			if workspace.Players:FindFirstChild(MyStand) then
				if not Poter.IsPlaying then
					Poter:Play()
					Poter:AdjustSpeed(0)
					Poter.TimePosition = 1.2
				end
				local lol = workspace.Players:FindFirstChild(MyStand).HumanoidRootPart.CFrame * CFrame.new(0, 0.5, 1.25)
				LocalPlayer.Character.HumanoidRootPart.CFrame = lol
			end
		else
			if Poter.IsPlaying then
				Poter:Stop()
			end
		end
	end
	if LMFAO then
		if not Pose.IsPlaying then
			Pose:Play()
			Pose:AdjustSpeed(0)
			Pose.TimePosition = 3
		end
	end
	if LMFAO2 then
		if not Poter.IsPlaying then
			Poter:Play()
			Poter:AdjustSpeed(0)
			Poter.TimePosition = 1.2
		end
		local lol = game:GetService("Players")[MyStand].Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.5, 1.25)
		LocalPlayer.Character.HumanoidRootPart.CFrame = lol
	end
end)

local OriginalKeyUpValue = 0;

function StopAudio()
    game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND'):Stop();
end;

function Stop(i, v)
    local w = coroutine.wrap(function()
        wait(game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').TimeLength-0.1)
        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').SoundId == 'rbxassetid://'..i and OriginalKeyUpValue == v then
            StopAudio();
        end;
    end);
    w();
end;

function Play(i, v, w)
    if game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack'):FindFirstChild('[Boombox]') then
        local Tool = nil;
        if game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool') and w == true then
            Tool = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool')
            game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Parent = game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack');
        end;
        game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack'):FindFirstChild('[Boombox]').Parent = game:GetService('Players').LocalPlayer.Character;
        game:GetService('ReplicatedStorage'):FindFirstChild('MainEvent'):FireServer('Boombox', i);
        game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]').RequiresHandle = false;
        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]'):FindFirstChild('Handle') then
            game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]'):FindFirstChild('Handle'):Destroy();
        end
        game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]').Parent = game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack')
        if game:GetService('Players').LocalPlayer:FindFirstChildOfClass('PlayerGui'):FindFirstChild('MainScreenGui'):FindFirstChild('BoomboxFrame') then
            game:GetService('Players').LocalPlayer:FindFirstChildOfClass('PlayerGui'):FindFirstChild('MainScreenGui'):FindFirstChild('BoomboxFrame').Visible = false;
        end;
        if Tool ~= true then
            if Tool then
                Tool.Parent = game:GetService('Players').LocalPlayer.Character
            end;
        end;
        if v == true then
            game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):WaitForChild('BOOMBOXSOUND');
            local x = coroutine.wrap(function()
                repeat wait() until game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').SoundId == 'rbxassetid://'..i and game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue + 1;
                Stop(i, OriginalKeyUpValue);
            end);
            x();
        end;
    end;
end;

function Play2(v)
    Play(v, true, true);
end;

game:GetService('Players').LocalPlayer.Chatted:Connect(function(v)
    if v == 'Good Grief.' then
        Play2(6603016929);
    elseif v == 'Diavolo Da!' then
        Play2(6553075707);
    elseif v == 'WRYY!' then
        Play2(6661495281);
    elseif v == 'You fool.' then
        Play2(2554775814);
    elseif v == 'Heart Attack Has No Weakness.' then
        Play2(3077251681);
    elseif v == 'King Crimson!' then
        Play2(3373956700);
    elseif v == 'Za Warudo.' then
        Play2(3084535090);
    elseif v == 'Yes YES!' then
        Play2(3378133256);
    elseif v == 'Hey HEy HEY!' then
        Play2(2652135070);
    end;
end);

local LocalPlayer = game:GetService("Players").LocalPlayer
local OriginalKeyUpValue = 0

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"

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

game:GetService("UserInputService").InputBegan:connect(function(i, XD)
	if i.UserInputType == Enum.UserInputType.Keyboard and XD == false then
		if i.KeyCode == Enum.KeyCode.Z then
			local Character = LocalPlayer.Character
			local Humanoid = Character:FindFirstChildOfClass("Humanoid")

			function rm()
				for i,v in pairs(Character:GetDescendants()) do
					if v:IsA("BasePart") or v:IsA("MeshPart") then
						if v.Name ~= "Head" then
							for i,cav in pairs(v:GetDescendants()) do
								if cav:IsA("Attachment") then
									if cav:FindFirstChild("OriginalPosition") then
										cav.OriginalPosition:Destroy()
									end
								end
							end
							for i,v in pairs(v:GetChildren()) do
								if v.Name == "OriginalSize" then
									v:Destroy()
								end
							end
							if v:FindFirstChild("AvatarPartScaleType") then
								v:FindFirstChild("AvatarPartScaleType"):Destroy()
							end
						end
					end
				end
			end
			
			Humanoid:LoadAnimation(Anim):Play()
		end
	end
end)