local OriginalKeyUpValue = 0;
local Cooldown = false;

local Fly = Instance.new('Animation');
Fly.AnimationId = 'rbxassetid://3541044388';

local Throw = Instance.new('Animation');
Throw.AnimationId = 'rbxassetid://7009919364';


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

function Tool()
	local Tool = Instance.new('Tool')
	Tool.Name = 'Swing';
	Tool.RequiresHandle = false;
	Tool.Activated:Connect(function()
		if game:GetService('Players').LocalPlayer:GetMouse().Target and Cooldown == false then
			Cooldown = true;
			local Rotation = game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame - game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position;
			local Tween = game:GetService('TweenService'):Create(game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart'), TweenInfo.new(.5, Enum.EasingStyle.Linear), {CFrame = CFrame.new(game:GetService('Players').LocalPlayer:GetMouse().Hit.X, game:GetService('Players').LocalPlayer:GetMouse().Hit.Y + 5, game:GetService('Players').LocalPlayer:GetMouse().Hit.Z) * Rotation})
			Tween:Play();
			game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Fly):Play();
			game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Throw):Play();
			Play(7346242221, true, true)
			Tween.Completed:Wait();
			for _, v in pairs(game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):GetPlayingAnimationTracks()) do
				if v.Animation.AnimationId == Fly.AnimationId then
					v:Stop();
				end;
			end;
			Cooldown = false;
			if not game:GetService('Players').LocalPlayer.Character:FindFirstChild(Tool) then
				Tool.Parent = game:GetService('Players').LocalPlayer.Character;
			end;
		end;
	end);
	Tool.Parent = game:GetService('Players').LocalPlayer:FindFirstChildWhichIsA('Backpack');
end;
game:GetService('Players').LocalPlayer.Character:WaitForChild('FULLY_LOADED_CHAR');
wait(1);
Tool();
game:GetService('Players').LocalPlayer.CharacterAdded:Connect(function(v)
	v:WaitForChild('FULLY_LOADED_CHAR');
	wait(1);
	Tool();
end);