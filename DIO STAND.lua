if not game['Loaded'] or not game:GetService('Players')['LocalPlayer'] then
    game['Loaded']:Wait();
    game:WaitForChild(game:GetService('Players'));
    game:GetService('Players'):WaitForChild(game:GetService('Players').LocalPlayer.Name)
end
if game.Players.LocalPlayer.UserId == 247925472 then
setfpscap(1000)
------------------------------------------------------------------------------------------
lp = game:GetService("Players").LocalPlayer
rs = game:GetService("RunService")
ow = game:GetService("Players")["DeborahKelley75"]
UIS = game:GetService('UserInputService')
N = game:GetService("VirtualInputManager")
Players = game:GetService("Players")
mouse = lp:GetMouse()
ClickDetector = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].ClickDetector
Location = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].Head.Position
ClickDetector1 = game:GetService("Workspace").Ignored.Shop["[Knife] - $150"].ClickDetector
Location1 = game:GetService("Workspace").Ignored.Shop["[Knife] - $150"].Head.Position
------------------------------------------------------------------------------------------
local annoying = {"JokeTheFool", "Sherosama", "Papa_Mbaye", "AStrongMuscle", "streetren", "NikoSenpai", "WashedGarage", "iumu", "Benoxa", "Luutyy", "clubstar54", "givkitheth", "kywiexcx", "ATKDrizzy", "dtbbullet", "XavierWildYT", "RogueDaHoodKing", "paxxythecreator", "NatsuDBlaze", "AnqelicMar", "DrBlakMD", "DarkWhirlwind", "coreten", "LegacyCross", "Greed_Ocean","dtblinux","IIIIIIIIIIIIIIIIIIII","yukipukio"} 
game.Players.PlayerAdded:Connect(function(plr)
for i, v in pairs(annoying) do
if plr.Name == v then
lp:Kick("annoying ppl")
end
end
end)
---------------------------------------------
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
        elseif tostring(args[1]) == "KICKREMOTE" then
            return
        elseif tostring(args[1]) == "BR_KICKPC" then
            return end

        return old(self, ...)
end)
------------------------------------------------------------------------------------------
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local tablefind = table.find
local MainEvent = ReplicatedStorage.MainEvent
local SpoofTable = {
    WalkSpeed = 16,
    JumpPower = 50
}
local Flags = {
    "CHECKER_1",
    "TeleportDetect",
    "OneMoreTime"
}
local __namecall
__namecall = hookmetamethod(game, "__namecall", function(...)
    local args = {...}
    local self = args[1]
    local method = getnamecallmethod()
    local caller = getcallingscript()
    if (method == "FireServer" and self == MainEvent and tablefind(Flags, args[2])) then
        return
    end
    if (not checkcaller() and getfenv(2).crash) then
        hookfunction(getfenv(2).crash, function()
            warn("Crash Attempt") 
        end)
    end
        return __namecall(...)
end)
local __index
__index = hookmetamethod(game, "__index", function(t, k)
    if (not checkcaller() and t:IsA("Humanoid") and (k == "WalkSpeed" or k == "JumpPower")) then
        return SpoofTable[k]
    end
    return __index(t, k)
end)
local __newindex
__newindex = hookmetamethod(game, "__newindex", function(t, k, v)
    if (not checkcaller() and t:IsA("Humanoid") and (k == "WalkSpeed" or k == "JumpPower")) then
        SpoofTable[k] = v
        return
    end
        return __newindex(t, k, v)
end)
------------------------------------------------------------------------------------------
repeat wait() until not lp.Character:FindFirstChild("ForceField")
lp.Character.Humanoid.Health = 0
lp.CharacterAdded:Connect(function()
respawn = true
end)
repeat wait() until respawn == true
wait()
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
local Clone1 = Instance.new("IntValue")
Clone1.Name = "Armor"
Clone1.Value = 101
Clone1.Parent = lp.Character.BodyEffects
---------------------------------------------
local function mask()
rs.Stepped:Wait()
lp.Character.HumanoidRootPart.CFrame = CFrame.new(Location)
fireclickdetector(ClickDetector)
end
local function knife()
rs.Stepped:Wait()
lp.Character.HumanoidRootPart.CFrame = CFrame.new(Location1)
fireclickdetector(ClickDetector1)
end
---------------------------------------------
local function GetPlayer(String)
String = String or 'N/A'
for i,v in pairs(game.Players:GetPlayers()) do
       if v.Name:lower():match('^'..String:lower()) or v.DisplayName:lower():match('^'..String:lower()) then
           return v
       end
   end
return false
end
---------------------------------------------
function GetNearest()
	local dist = math.huge
	local Target = nil
	for _, v in pairs(Players:GetPlayers()) do
		if v ~= lp and v ~= ow and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v then
			local TheirCharacter = v.Character
			local CharacterRoot, Visible = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(TheirCharacter.UpperTorso.Position)
			if Visible then
              local dis = (TheirCharacter.HumanoidRootPart.Position - lp.Character.HumanoidRootPart.Position).Magnitude
				if dis < dist  then
					dist = dis
					Target = TheirCharacter
				end
			end
		end
	end
	return Target
end
---------------------------------------------
function play(ID)
if lp.Backpack:FindFirstChild("[Boombox]") then
local Tool = nil
if lp.Character:FindFirstChildOfClass("Tool") then
Tool = lp.Character:FindFirstChildOfClass("Tool")
lp.Character:FindFirstChildOfClass("Tool").Parent = lp.Backpack end
lp.Backpack["[Boombox]"].Parent = lp.Character
lp.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
game:GetService("ReplicatedStorage").MainEvent:FireServer("Boombox",ID)
lp.Character["[Boombox]"].RequiresHandle = false
if lp.Character["[Boombox]"]:FindFirstChild("Handle") then
lp.Character["[Boombox]"].Handle:Destroy() end
lp.Character["[Boombox]"].Parent = lp.Backpack
if Tool ~= true then
if Tool then
Tool.Parent = lp.Character
end 
end 
end
end
---------------------------------------------
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
--------------------------------------------- 

--------------------------------------------- 
local function star()
rs:BindToRenderStep("Star Platinum!", 0 , function()
lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1,1.85,2.5)
end)
end
---------------------------------------------
spawn(function()
rs.RenderStepped:connect(function()
local Particle = lp.Character:WaitForChild("UpperTorso"):FindFirstChild('ElectricuteParticle') or lp.Character.UpperTorso:FindFirstChild('FlamethrowerFireParticle') or lp.Character:FindFirstChild('Christmas_Sock')
if Particle then Particle:Destroy() end
for i,v in pairs(lp.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
if v.Animation.AnimationId == 'rbxassetid://5641749824' or v.Name == 'Block' then
v:Stop() 
end
end
end)
end)
---------------------------------------------
rs.RenderStepped:connect(function()
for i,v in pairs(lp.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
if v.Animation.AnimationId == 'rbxassetid://2788309317' or v.Animation.AnimationId == 'rbxassetid://2788311138' or v.Animation.AnimationId == 'rbxassetid://2788308661' or v.Animation.AnimationId == 'rbxassetid://2788309982' then
v:AdjustSpeed(2.35)
end
end
end)
---------------------------------------------
loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoHacker1337/legohacks/main/PhysicsServiceOnClient.lua"))()
setfflag("HumanoidParallelRemoveNoPhysics", "False")
setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
rs:BindToRenderStep("", Enum.RenderPriority.Camera.Value, function()
for i,v in ipairs(lp.Character:GetDescendants()) do
lp.Character:WaitForChild("Humanoid"):ChangeState(11)
end
end)
---------------------------------------------
spawn(function()
float = Instance.new('Part', game.Workspace)
float.Name = "noclip"
float.Size = Vector3.new(6,0.1,6)
float.Anchored = true
rs:BindToRenderStep("noclip", Enum.RenderPriority.Camera.Value, function()
float.CFrame = lp.Character:WaitForChild("HumanoidRootPart").CFrame + Vector3.new(0,-3.05,0)
end)
end)
---------------------------------------------
spawn(function()
for i,v in pairs(lp.Character:GetChildren()) do
if v:IsA("MeshPart") then
v.ChildAdded:Connect(function(instance)
if instance.ClassName == "Decal" then
instance:Destroy()
end
end)
end
end
end)
---------------------------------------------
spawn(function()
rs.RenderStepped:connect(function()
local forbidden = {'[RPG]','[SMG]','[TacticalShotgun]','[AK47]','[AUG]','[Glock]', '[Shotgun]','[Flamethrower]','[Silencer]','[AR]','[Revolver]','[SilencerAR]','[LMG]','[P90]','[DrumGun]','[Double-Barrel SG]','[Hamburger]','[Chicken]','[Pizza]','[Cranberry]','[Donut]','[Taco]','[Starblox Latte]','[BrownBag]','[Weights]','[HeavyWeights]'}
for _,v in pairs(game.Workspace.Players:GetChildren()) do
if (v:FindFirstChild("UpperTorso").Position - lp.Character:WaitForChild("HumanoidRootPart").Position).Magnitude <= 15 then
if v.Name ~= lp.Name or v.Name ~= ow.Name and v.BodyEffects.Attacking.Value == true and not table.find(forbidden, v:FindFirstChildWhichIsA('Tool').Name ) then
Found = true
game:GetService("ReplicatedStorage").MainEvent:FireServer('Block', lp.Name)
end
end
end
if Found == false then
if lp.Character.BodyEffects:FindFirstChild('Block') then lp.Character.BodyEffects.Block:Destroy() end
end
end)
end)
---------------------------------------------
spawn(function()
while true do
    wait()
    local success, err = pcall(function()
        if lp.Character.BodyEffects.Attacking.Value == true then
            for i,v in pairs(game:GetService('Players'):GetChildren()) do
                if (v.Character.HumanoidRootPart.Position - lp.Character.LeftHand.Position).Magnitude <= 52.5 then
                    if lp.Character:FindFirstChildOfClass("Tool") then
                        if lp.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                            firetouchinterest(lp.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                        else
                            firetouchinterest(lp.Character['RightHand'], v.Character.UpperTorso, 0)
                            firetouchinterest(lp.Character['LeftHand'], v.Character.UpperTorso, 0)
                            firetouchinterest(lp.Character['RightFoot'], v.Character.UpperTorso, 0)
                            firetouchinterest(lp.Character['LeftFoot'], v.Character.UpperTorso, 0)
                            firetouchinterest(lp.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                            firetouchinterest(lp.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                        end
                    end
                end
            end
        end
    end)
end
end)
---------------------------------------------------------------------------------------------------------------------------------------
spawn(function()
lp.Character.Humanoid:WaitForChild("TrailEffects"):Destroy()
end)
---------------------------------------------
spawn(function()
starplat = false
flinging = false
ORA = false
kill = false
left = true
right = false
ora1 = true
ora2 = false
---------------------------------------------
for i,f in pairs(lp.Character.Head:GetChildren()) do
if f:IsA("Decal") and f.Name == "face" then
f.Parent = nil
end
end
---------------------------------------------
repeat mask() until lp.Backpack:FindFirstChild("Mask")
tool = lp.Backpack:FindFirstChild("Mask")
tool1 = lp.Backpack:FindFirstChild("Combat")
tool.Parent = lp.Character
tool:Activate()
tool.Parent = lp.Backpack
tool1.Parent = lp.Character
lp.Character:WaitForChild('In-gameMask'):FindFirstChildWhichIsA("Model"):Destroy()
lp.Character:WaitForChild('In-gameMask'):FindFirstChild('Handle'):Destroy()
rs.Stepped:Wait()
---------------------------------------------
lp.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
lp.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
lp.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
lp.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Landed, false)
lp.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Flying, false)
lp.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
lp.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Seated, false)
lp.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
lp.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Physics, false)
lp.Character:FindFirstChild("Animate"):Destroy()
---------------------------------------------
local hover = Instance.new('Animation', game.Workspace)
hover.AnimationId = 'rbxassetid://3541114300'
local using = lp.Character.Humanoid:LoadAnimation(hover)
using:Play()
---------------------------------------------
spawn(function()
while true do
        for _, v in pairs(lp.Character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
rs.Stepped:wait()
end
end)
---------------------------------------------
spawn(function()
while true do
        for _, v in pairs(ow.Character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
rs.Stepped:wait()
end
end)
end)
---------------------------------------------------------------------------------------------------------------------------------------
while flinging == false do
rs.Stepped:Wait()
lp.Character.PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
lp.Character.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
end
---------------------------------------------------------------------------------------------------------------------------------------
ow.Chatted:connect(function(chat)
    if chat == "Star Platinum Over Heaven!" then
        starplat = true
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0,-50,1.25)
        wait(1.5)
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0,-0.7,1.35)
        wait(0.05)
        play(4458422585)
        star()
    end
---------------------------------------------
    if chat == "/e w" and starplat == true then
        starplat = false
        rs:UnbindFromRenderStep("Star Platinum!")
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0,-0.7,1.35)
        wait(0.075)
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
        game:GetService("ReplicatedStorage").MainEvent:FireServer("BoomboxStop")
    end
---------------------------------------------
---------------------------------------------
    if chat == "Ora!" and starplat == true then
        wait(0.1)
        rs:UnbindFromRenderStep("Star Platinum!")
        starplat = false
        ORA = true
        rs:BindToRenderStep("ORA!", Enum.RenderPriority.Camera.Value, function()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0,0.85,-4.1)
        game:GetService("VirtualUser"):ClickButton1(Vector2.new(0,0))
    end)
end

    if chat == "ORA!" and ORA == true and starplat == false then
        rs:UnbindFromRenderStep("ORA!")
        if ora1 == true and ora2 == false then
        ora1 = false
        ora2 = true
        spawn(function()
        for i,v in pairs(lp.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
        if v.Animation.AnimationId == 'rbxassetid://2788309317' or v.Animation.AnimationId == 'rbxassetid://2788311138' or v.Animation.AnimationId == 'rbxassetid://2788308661' or v.Animation.AnimationId == 'rbxassetid://2788309982' then
        v:Stop()
        end
        end
        if game.Workspace:FindFirstChild("ORA1") then
        local loading = lp.Character.Humanoid:LoadAnimation(game.Workspace.ORA1)
        loading:Play()
        else
        local Idle = Instance.new('Animation', game.Workspace)
        Idle.AnimationId = 'rbxassetid://3033717454'
        Idle.Name = "ORA1"
        local loading = lp.Character.Humanoid:LoadAnimation(Idle)
        loading:Play()
        end
        end)
        rs:BindToRenderStep("ora!", Enum.RenderPriority.Camera.Value, function()
        local x = GetNearest()
        if x.BodyEffects["K.O"].Value == true then
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(x.UpperTorso.Position.X , x.UpperTorso.Position.Y +1.15, x.UpperTorso.Position.Z )
        game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
        end
        end)
        wait(1.85)
        rs:UnbindFromRenderStep("ora!")
        star()
        ORA = false
        starplat = true
    elseif ora2 == true and ora1 == false then
        ora1 = true
        ora2 = false
        spawn(function()
        for i,v in pairs(lp.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
        if v.Animation.AnimationId == 'rbxassetid://2788309317' or v.Animation.AnimationId == 'rbxassetid://2788311138' or v.Animation.AnimationId == 'rbxassetid://2788308661' or v.Animation.AnimationId == 'rbxassetid://2788309982' then
        v:Stop()
        end
        end
        if game.Workspace:FindFirstChild("ORA2") then
        local loading = lp.Character.Humanoid:LoadAnimation(game.Workspace.ORA2)
        loading:Play()
        loading:AdjustSpeed(0.75)
        else
        local Idle = Instance.new('Animation', game.Workspace)
        Idle.AnimationId = 'rbxassetid://3355740058'
        Idle.Name = "ORA2"
        local loading = lp.Character.Humanoid:LoadAnimation(Idle)
        loading:Play()
        loading:AdjustSpeed(0.75)
        end
        end)
        rs:BindToRenderStep("ora!", Enum.RenderPriority.Camera.Value, function()
        local x = GetNearest()
        if x.BodyEffects["K.O"].Value == true then
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(x.UpperTorso.Position.X , x.UpperTorso.Position.Y +1.15, x.UpperTorso.Position.Z )
        game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
        end
        end)
        wait(1.85)
        rs:UnbindFromRenderStep("ora!")
        star()
        ORA = false
        starplat = true
    end
end
---------------------------------------------
if chat == "Yare Yare Daze.." then
    if ORA == true then
        rs:UnbindFromRenderStep("ORA!")
        ORA = false
        starplat = true
        star()
        elseif killing == true then
        killing = false
        starplat = true
        star()
        elseif kill == true then
        rs:UnbindFromRenderStep("x")
        x = false
        kill = false
        Pause()
        starplat = true
        star()
        elseif aura == true then
        aura = false
        Pause()
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
        elseif bring == true then
        bring = false
        Pause()
        rs.Stepped:Wait()
        star()
        N:SendKeyEvent(true,"G",false,game)
    end
end
---------------------------------------------
if chat == "/e r" and starplat == false and ORA == false then
    if left == true and right == false then
        tool1:Activate()
        wait(0.8)
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1.50,1.85,-0.5)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1.45,1.80,-0.6)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1.40,1.75,-0.7)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1.35,1.70,-0.8)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1.30,1.65,-0.9)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1.25,1.60,-1)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1.20,1.55,-1.1)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1.15,1.50,-1.2)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1.10,1.45,-1.3)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1.05,1.40,-1.4)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1,1.35,-1.5)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.95,1.30,-1.6)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.90,1.25,-1.7)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.85,1.20,-1.8)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.80,1.15,-1.9)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.75,1.10,-2)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.70,1.05,-2.1)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.65,1,-2.2)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.60,0.95,-2.3)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.55,0.90,-2.4)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.50,0.85,-2.5)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.45,0.80,-2.6)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.40,0.75,-2.7)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.35,0.70,-2.8)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.30,0.65,-2.9)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.25,0.60,-3.1)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.20,0.55,-3.2)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.15,0.50,-3.3)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.10,0.45,-3.4)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0.5,0.40,-3.5)
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0,-50,0)
        left = false
        right = true
        else
        tool1:Activate()
        wait(0.8)
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-1.50,1.85,-0.5)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-1.45,1.80,-0.6)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-1.40,1.75,-0.7)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-1.35,1.70,-0.8)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-1.30,1.65,-0.9)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-1.25,1.60,-1)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-1.20,1.55,-1.1)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-1.15,1.50,-1.2)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-1.10,1.45,-1.3)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-1.05,1.40,-1.4)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-1,1.35,-1.5)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.95,1.30,-1.6)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.90,1.25,-1.7)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.85,1.20,-1.8)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.80,1.15,-1.9)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.75,1.10,-2)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.70,1.05,-2.1)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.65,1,-2.2)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.60,0.95,-2.3)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.55,0.90,-2.4)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.50,0.85,-2.5)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.45,0.80,-2.6)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.40,0.75,-2.7)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.35,0.70,-2.8)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.30,0.65,-2.9)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.25,0.60,-3.1)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.20,0.55,-3.2)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.15,0.50,-3.3)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.10,0.45,-3.4)
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(-0.5,0.40,-3.5)
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0,-50,0)
        left = true
        right = false  
        end
     end
end)
--------------------------------------------- 
spawn(function()
    ow.Chatted:connect(function(bring)
        local Target = GetPlayer(bring:match("/e b %s*(.+)"))
        if not Target or starplat == false then return end
        tool1:Activate()
        wait(0.8)
        rs:UnbindFromRenderStep("Star Platinum!")
        for i = 140, 0, -1 do
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.UpperTorso.Position.X , Target.Character.UpperTorso.Position.Y +1, Target.Character.UpperTorso.Position.Z )
        if lp.Character.BodyEffects["Grabbed"].Value == nil then
        N:SendKeyEvent(true,"G",false,game)
        end
        end
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(0,1.80,-3)
        wait(0.45)
        N:SendKeyEvent(true,"G",false,game)
        star()
    end)
end)
-------------------------------------------------
spawn(function()
    ow.Chatted:connect(function(Message)
        local Target = GetPlayer(Message:match("Ora! %s*(.+)"))
        if not Target or starplat == false then return end
        x = false
        rs:UnbindFromRenderStep("Star Platinum!")
        local Loop
        local loopFunction = function()
        kill = true
        local success,err = pcall(function()
        local FlingEnemy = Target.Character
        if FlingEnemy and lp.Character then FlingTorso = FlingEnemy.UpperTorso  
        local z = FlingEnemy.HumanoidRootPart.AssemblyAngularVelocity.Magnitude 
        local s = FlingEnemy.HumanoidRootPart.AssemblyLinearVelocity.Magnitude
        local dis = 22.5
        local increase = 1
        for i,v in pairs(lp.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
        if v.Animation.AnimationId == 'rbxassetid://2788289281' then
        v:Stop()
        end
        end
        if FlingEnemy.Humanoid.MoveDirection.X < 0 then
        spawn(function()
        if s or z >= 0 <  25 then
        local dis = 15
        elseif s or z >= 25  < 50 then
        local dis = 20
        elseif s or z >= 50  < 75 then
        local dis = 25
        elseif s or z >= 75  < 100 then
        local dis = 30
        elseif s or z >= 100  < 125 then
        local dis = 35
        elseif s or z >= 125  < 150 then
        local dis = 40
        elseif s or z >= 150  < 175 then
        local dis = 45
        elseif s or z >= 200  < 225 then
        local dis = 50
        elseif s or z >= 225  < 250 then
        local dis = 55
        elseif s or z >= 250  < 275 then
        local dis = 60
        elseif s or z >= 275  < 300 then
        local dis = 65
        elseif s or z >= 300  < 325 then
        local dis = 70
        elseif s or z >= 325  < 350 then
        local dis = 75
        elseif s or z >= 350  < 375 then
        local dis = 80
        elseif s or z >= 375  < 400 then
        local dis = 85
        elseif s or z >= 400  < 425 then
        local dis = 90
        elseif s or z >= 425  < 450 then
        local dis = 95
        elseif s or z >= 450  < 475 then
        local dis = 100
        elseif s or z >= 475  < 500 then
        local dis = 105
        elseif s or z >= 500  < 525 then
        local dis = 110
        elseif s or z >= 525  < 550 then
        local dis = 115
        elseif s or z >= 550  < 575 then
        local dis = 120
        elseif s or z >= 575  < 600 then
        local dis = 125
        elseif s or z >= 600  < 625 then
        local dis = 130
        elseif s or z >= 625  < 650 then
        local dis = 135
        end
        end)
        xchange = -increase
        elseif FlingEnemy.Humanoid.MoveDirection.X > 0  then
        spawn(function()
        if s or z >= 0 <  25 then
        local dis = 15
        elseif s or z >= 25  < 50 then
        local dis = 20
        elseif s or z >= 50  < 75 then
        local dis = 25
        elseif s or z >= 75  < 100 then
        local dis = 30
        elseif s or z >= 100  < 125 then
        local dis = 35
        elseif s or z >= 125  < 150 then
        local dis = 40
        elseif s or z >= 150  < 175 then
        local dis = 45
        elseif s or z >= 200  < 225 then
        local dis = 50
        elseif s or z >= 225  < 250 then
        local dis = 55
        elseif s or z >= 250  < 275 then
        local dis = 60
        elseif s or z >= 275  < 300 then
        local dis = 65
        elseif s or z >= 300  < 325 then
        local dis = 70
        elseif s or z >= 325  < 350 then
        local dis = 75
        elseif s or z >= 350  < 375 then
        local dis = 80
        elseif s or z >= 375  < 400 then
        local dis = 85
        elseif s or z >= 400  < 425 then
        local dis = 90
        elseif s or z >= 425  < 450 then
        local dis = 95
        elseif s or z >= 450  < 475 then
        local dis = 100
        elseif s or z >= 475  < 500 then
        local dis = 105
        elseif s or z >= 500  < 525 then
        local dis = 110
        elseif s or z >= 525  < 550 then
        local dis = 115
        elseif s or z >= 550  < 575 then
        local dis = 120
        elseif s or z >= 575  < 600 then
        local dis = 125
        elseif s or z >= 600  < 625 then
        local dis = 130
        elseif s or z >= 625  < 650 then
        local dis = 135
        end
        end)
        xchange = increase
        else
        spawn(function()
        if s or z >= 0 <  25 then
        local dis = 15
        elseif s or z >= 25  < 50 then
        local dis = 20
        elseif s or z >= 50  < 75 then
        local dis = 25
        elseif s or z >= 75  < 100 then
        local dis = 30
        elseif s or z >= 100  < 125 then
        local dis = 35
        elseif s or z >= 125  < 150 then
        local dis = 40
        elseif s or z >= 150  < 175 then
        local dis = 45
        elseif s or z >= 200  < 225 then
        local dis = 50
        elseif s or z >= 225  < 250 then
        local dis = 55
        elseif s or z >= 250  < 275 then
        local dis = 60
        elseif s or z >= 275  < 300 then
        local dis = 65
        elseif s or z >= 300  < 325 then
        local dis = 70
        elseif s or z >= 325  < 350 then
        local dis = 75
        elseif s or z >= 350  < 375 then
        local dis = 80
        elseif s or z >= 375  < 400 then
        local dis = 85
        elseif s or z >= 400  < 425 then
        local dis = 90
        elseif s or z >= 425  < 450 then
        local dis = 95
        elseif s or z >= 450  < 475 then
        local dis = 100
        elseif s or z >= 475  < 500 then
        local dis = 105
        elseif s or z >= 500  < 525 then
        local dis = 110
        elseif s or z >= 525  < 550 then
        local dis = 115
        elseif s or z >= 550  < 575 then
        local dis = 120
        elseif s or z >= 575  < 600 then
        local dis = 125
        elseif s or z >= 600  < 625 then
        local dis = 130
        elseif s or z >= 625  < 650 then
        local dis = 135
        end
        end)
        xchange = 0
        end
        if FlingEnemy.Humanoid.MoveDirection.Z < 0 then
        spawn(function()
        if s or z >= 0 <  25 then
        local dis = 15
        elseif s or z >= 25  < 50 then
        local dis = 20
        elseif s or z >= 50  < 75 then
        local dis = 25
        elseif s or z >= 75  < 100 then
        local dis = 30
        elseif s or z >= 100  < 125 then
        local dis = 35
        elseif s or z >= 125  < 150 then
        local dis = 40
        elseif s or z >= 150  < 175 then
        local dis = 45
        elseif s or z >= 200  < 225 then
        local dis = 50
        elseif s or z >= 225  < 250 then
        local dis = 55
        elseif s or z >= 250  < 275 then
        local dis = 60
        elseif s or z >= 275  < 300 then
        local dis = 65
        elseif s or z >= 300  < 325 then
        local dis = 70
        elseif s or z >= 325  < 350 then
        local dis = 75
        elseif s or z >= 350  < 375 then
        local dis = 80
        elseif s or z >= 375  < 400 then
        local dis = 85
        elseif s or z >= 400  < 425 then
        local dis = 90
        elseif s or z >= 425  < 450 then
        local dis = 95
        elseif s or z >= 450  < 475 then
        local dis = 100
        elseif s or z >= 475  < 500 then
        local dis = 105
        elseif s or z >= 500  < 525 then
        local dis = 110
        elseif s or z >= 525  < 550 then
        local dis = 115
        elseif s or z >= 550  < 575 then
        local dis = 120
        elseif s or z >= 575  < 600 then
        local dis = 125
        elseif s or z >= 600  < 625 then
        local dis = 130
        elseif s or z >= 625  < 650 then
        local dis = 135
        end
        end)
        zchange = -increase
        elseif FlingEnemy.Humanoid.MoveDirection.Z > 0 then
        spawn(function()
        if s or z >= 0 <  25 then
        local dis = 15
        elseif s or z >= 25  < 50 then
        local dis = 20
        elseif s or z >= 50  < 75 then
        local dis = 25
        elseif s or z >= 75  < 100 then
        local dis = 30
        elseif s or z >= 100  < 125 then
        local dis = 35
        elseif s or z >= 125  < 150 then
        local dis = 40
        elseif s or z >= 150  < 175 then
        local dis = 45
        elseif s or z >= 200  < 225 then
        local dis = 50
        elseif s or z >= 225  < 250 then
        local dis = 55
        elseif s or z >= 250  < 275 then
        local dis = 60
        elseif s or z >= 275  < 300 then
        local dis = 65
        elseif s or z >= 300  < 325 then
        local dis = 70
        elseif s or z >= 325  < 350 then
        local dis = 75
        elseif s or z >= 350  < 375 then
        local dis = 80
        elseif s or z >= 375  < 400 then
        local dis = 85
        elseif s or z >= 400  < 425 then
        local dis = 90
        elseif s or z >= 425  < 450 then
        local dis = 95
        elseif s or z >= 450  < 475 then
        local dis = 100
        elseif s or z >= 475  < 500 then
        local dis = 105
        elseif s or z >= 500  < 525 then
        local dis = 110
        elseif s or z >= 525  < 550 then
        local dis = 115
        elseif s or z >= 550  < 575 then
        local dis = 120
        elseif s or z >= 575  < 600 then
        local dis = 125
        elseif s or z >= 600  < 625 then
        local dis = 130
        elseif s or z >= 625  < 650 then
        local dis = 135
        end
        end)
        zchangess = increase
        else
        zchange = 0
        end        
        if lp.Character then
        if FlingEnemy.BodyEffects["K.O"].Value == false and x == false then
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X + math.random(-dis,dis) + xchange, FlingTorso.Position.Y + 1, FlingTorso.Position.Z + math.random(-dis,dis) + zchange)
        game:GetService("VirtualUser"):ClickButton1(Vector2.new(0,0))
        elseif FlingEnemy.BodyEffects["K.O"].Value == false and x == false and FlingEnemy.BodyEffects["Attacking"].Value == true then
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X + math.random(-dis,dis) + xchange, FlingTorso.Position.Y + 1, FlingTorso.Position.Z + math.random(-dis,dis) + zchange)
        elseif FlingEnemy.BodyEffects["K.O"].Value == true and x == false then
        x = true
        end
        if FlingEnemy.BodyEffects["K.O"].Value == false and x == true and FlingEnemy.BodyEffects["Attacking"].Value == false then 
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X + math.random(-dis,dis) + xchange, FlingTorso.Position.Y + 1, FlingTorso.Position.Z + math.random(-dis,dis) + zchange)
        tool1:Activate()
        elseif FlingEnemy.BodyEffects["K.O"].Value == false and x == true and FlingEnemy.BodyEffects["Attacking"].Value == true then
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X + math.random(-dis,dis) + xchange, FlingTorso.Position.Y + 1, FlingTorso.Position.Z + math.random(-dis,dis) + zchange)
        elseif FlingEnemy.BodyEffects["K.O"].Value == true then 
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X , FlingTorso.Position.Y + 1, FlingTorso.Position.Z )
        game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
        end
        end
        end
        end)
        if err then
        print('KILL ERROR : ' .. err)
        end
        end;
        local Start = function()    
        Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        Pause = function()
        Loop:Disconnect()
        local vectorZero = Vector3.new(0, 0, 0)
        lp.Character.PrimaryPart.Velocity = vectorZero
        lp.Character.PrimaryPart.RotVelocity = vectorZero
        end;
        Start()	
    end)
end)
---------------------------------------------
spawn(function()
ow.Chatted:connect(function(fling)
    local Target = GetPlayer(fling:match("/e f %s*(.+)"))
    if not Target then return end
        flinging = true
        rs.Stepped:Wait()
        local Loop
        local OldFlingPos = lp.Character.HumanoidRootPart.Position
            local loopFunction = function()
                local success,err = pcall(function()
                    local FlingEnemy = Target.Character
                    if FlingEnemy and Target.Character then
                    FlingTorso = FlingEnemy.UpperTorso
                    local dist = 4
                    local increase = 6.50
                    if FlingEnemy.Humanoid.MoveDirection.X < 0 then
                        xchange = -increase
                    elseif FlingEnemy.Humanoid.MoveDirection.X > 0  then
                        xchange = increase
                    else
                        xchange = 0
                    end
                    if FlingEnemy.Humanoid.MoveDirection.Z < 0 then
                        zchange = -increase
                    elseif FlingEnemy.Humanoid.MoveDirection.Z > 0 then
                        zchange = increase
                    else
                        zchange = 0
                    end          
                    if lp.Character then
                        lp.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X + math.random(-dist,dist) + xchange, FlingTorso.Position.Y, FlingTorso.Position.Z + math.random(-dist,dist) + zchange) * CFrame.Angles(math.rad(lp.Character.HumanoidRootPart.Orientation.X + 350),math.rad(lp.Character.HumanoidRootPart.Orientation.Y + 200),math.rad(lp.Character.HumanoidRootPart.Orientation.Z + 240))
                        lp.Character.HumanoidRootPart.Velocity = Vector3.new(500000,500000,500000)
                    end
                end
            end)
            if err then
                print('fling error : ' .. err)
            end
        end;
        local Start1 = function()    
            OldFlingPos = lp.Character.HumanoidRootPart.Position
            Loop1 = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause1 = function()
            Loop1:Disconnect()
            local vectorZero = Vector3.new(0, 0, 0)
            lp.Character.PrimaryPart.Velocity = vectorZero
            lp.Character.PrimaryPart.RotVelocity = vectorZero
            lp.Character.HumanoidRootPart.CFrame = CFrame.new(OldFlingPos) * CFrame.Angles(math.rad(0),math.rad(137.92),math.rad(0))
            end;
        Start1()	
        wait(1.4)
        Pause1()
        flinging = false
    end)
end)
---------------------------------------------
spawn(function()
    ow.Chatted:connect(function(Message)
        local Target = GetPlayer(Message:match("/e a %s*(.+)"))
        if not Target then return end
        aura = true
        local Loop
        local loopFunction = function()
        local success,err = pcall(function()
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Character and v.Character:FindFirstChild("FULLY_LOADED_CHAR") then
        local FlingEnemy = v.Character
        local mag = (Target.Character.UpperTorso.Position - FlingEnemy.UpperTorso.Position).Magnitude
        if v.Name ~= lp.Name and v.Name ~= Target.Name and FlingEnemy.BodyEffects:FindFirstChild("Attacking") and FlingEnemy.BodyEffects:FindFirstChild("Defense") and FlingEnemy.BodyEffects:FindFirstChild("K.O") and FlingEnemy.BodyEffects["K.O"].Value == false and v.DataFolder:FindFirstChild("Information") then
        if FlingEnemy and lp.Character and mag < 40 then FlingTorso = FlingEnemy.UpperTorso
        if not v.DataFolder.Information:FindFirstChild("Crew") or v.DataFolder.Information.Crew.Value ~= Target.DataFolder.Information:FindFirstChild("Crew").Value then
        local dis = 4
        local increase = 8
        if FlingEnemy.Humanoid.MoveDirection.X < 0 then
        xchange = -increase
        elseif FlingEnemy.Humanoid.MoveDirection.X > 0  then
        xchange = 0
        end
        if FlingEnemy.Humanoid.MoveDirection.Z < 0 then
        zchange = -increase
        elseif FlingEnemy.Humanoid.MoveDirection.Z > 0 then
        zchangess = increase
        else
        zchange = 0
        end        
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X + math.random(-dis,dis) + xchange, FlingTorso.Position.Y - 6.2 , FlingTorso.Position.Z + math.random(-dis,dis) + zchange)
        game:GetService("VirtualUser"):ClickButton1(Vector2.new(0,0))
        end
        end
        end
        end
        end
        end)
        if err then
        print('KILL ERROR : ' .. err)
        end
        end;
        local Start = function()    
        Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        Pause = function()
        Loop:Disconnect()
        local vectorZero = Vector3.new(0, 0, 0)
        lp.Character.PrimaryPart.Velocity = vectorZero
        lp.Character.PrimaryPart.RotVelocity = vectorZero
        end;
        Start()	
    end)
end)
---------------------------------------------

spawn(function()
    ow.Chatted:connect(function(Message)
        local Target = GetPlayer(Message:match("/e g %s*(.+)"))
        if not Target or starplat == false then return end
        tool1:Activate()
        wait(0.85)
        rs:UnbindFromRenderStep("Star Platinum!")
        for i = 25, 0, -1 do
        rs.Stepped:Wait()
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.UpperTorso.Position.X , Target.Character.UpperTorso.Position.Y +1, Target.Character.UpperTorso.Position.Z )
        end
        local Loop
        local loopFunction = function()
        bring = true
        local success,err = pcall(function()
        local FlingEnemy = Target.Character
        if FlingEnemy and lp.Character then FlingTorso = FlingEnemy.UpperTorso  
        local dis = 25
        local increase = 1
        if FlingEnemy.Humanoid.MoveDirection.X < 0 then
        xchange = -increase
        elseif FlingEnemy.Humanoid.MoveDirection.X > 0  then
        xchange = increase
        else
        xchange = 0
        end
        if FlingEnemy.Humanoid.MoveDirection.Z < 0 then
        zchange = -increase
        elseif FlingEnemy.Humanoid.MoveDirection.Z > 0 then
        zchangess = increase
        else
        zchange = 0
        end        
        if FlingEnemy.BodyEffects["K.O"].Value == false and lp.Character.BodyEffects["Grabbed"].Value == nil then
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X + math.random(-dis,dis) + xchange, FlingTorso.Position.Y + 1, FlingTorso.Position.Z + math.random(-dis,dis) + zchange)
        game:GetService("VirtualUser"):ClickButton1(Vector2.new(0,0))
        elseif FlingEnemy.BodyEffects["K.O"].Value == true and lp.Character.BodyEffects["Grabbed"].Value == nil then
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X , FlingTorso.Position.Y + 1, FlingTorso.Position.Z )
        N:SendKeyEvent(true,"G",false,game)
        elseif lp.Character.BodyEffects["Grabbed"].Value ~= nil then
        lp.Character.HumanoidRootPart.CFrame = ow.Character.HumanoidRootPart.CFrame*CFrame.new(1,1.85,2.5)
        end
        end
        end)
        if err then
        print('KILL ERROR : ' .. err)
        end
        end;
        local Start = function()    
        Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        Pause = function()
        Loop:Disconnect()
        local vectorZero = Vector3.new(0, 0, 0)
        lp.Character.PrimaryPart.Velocity = vectorZero
        lp.Character.PrimaryPart.RotVelocity = vectorZero
        end;
        Start()	
    end)
end)
---------------------------------------------
---------------------------------------------
spawn(function()
pcall(function()
local LP = game:GetService('Players').LocalPlayer
settings().Physics.PhysicsEnvironmentalThrottle = 1
settings().Rendering.QualityLevel = 'Level01'
UserSettings():GetService('UserGameSettings').MasterVolume = 0
setsimulationradius(0, 0)
for _, v in next, game:GetDescendants() do
    if v:IsA('Workspace') then
        v.Terrain.Elasticity = 0
        v.Terrain.WaterWaveSize = 0
        v.Terrain.WaterWaveSpeed = 0
        v.Terrain.WaterReflectance = 0
        v.Terrain.WaterTransparency = 1
    elseif v:IsA('Lighting') then
        sethiddenproperty(v, 'Technology', 2)
        v.GlobalShadows = false
        v.FogEnd = 1/0
        v.Brightness = 0
    elseif v:IsA('Model') then
        sethiddenproperty(v, 'LevelOfDetail', 1)
    elseif LP and v == LP then
        v.ReplicationFocus = nil
    elseif v:IsA('Decal') or v:IsA('Texture') or v:IsA('Beam') then
        v.Transparency = 1
    elseif v:IsA('Fire') or v:IsA('SpotLight') or v:IsA('Smoke') or v:IsA('Sparkles') then
        v.Enabled = false
    elseif v:IsA('SpecialMesh') then
        v.TextureId = ''
        v.MeshId = ''
    elseif v:IsA('ParticleEmitter') or v:IsA('Trail') then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA('BlurEffect') or v:IsA('SunRaysEffect') or v:IsA('ColorCorrectionEffect') or v:IsA('BloomEffect') or v:IsA('DepthOfFieldEffect')  then
        v.Enabled = false
    elseif v:IsA('BasePart') and not v:IsA('MeshPart') then
        v.Reflectance = 0
        v.Material = 'SmoothPlastic'
    elseif v:IsA('Pants') or v:IsA('Shirt') then
        v[v.ClassName..'Template'] = ''
    elseif v:IsA('Explosion') then
        v.BlastPressure = 0
        v.BlastRadius = 0
        v.Visible = false
        v.Position = Vector3.new(0, 0, 0)
    elseif v:IsA('ForceField') then
        v.Visible = false
    elseif v:IsA('ShirtGraphic') then
        v.Graphic = ''
    elseif v:IsA('MeshPart') then
        v.MeshId = ''
        v.TextureID = ''
        v.Reflectance = 0
        v.Material = 'SmoothPlastic'
    elseif v:IsA('CharacterMesh') then
        v.BaseTextureId = ''
        v.MeshId = ''
        v.OverlayTextureId = ''
    elseif v:IsA('Sound') then
        v.SoundId = ''
        v.Volume = 0
    end
end

local WorkspaceChildAdded;WorkspaceChildAdded = workspace.DescendantAdded:Connect(function(v)
    wait()
    if v:IsA('Model') then
        sethiddenproperty(v, 'LevelOfDetail', 1)
    elseif LP and v == LP then
        v.ReplicationFocus = nil
    elseif v:IsA('Decal') or v:IsA('Texture') or v:IsA('Beam') then
        v.Transparency = 1
    elseif v:IsA('Fire') or v:IsA('SpotLight') or v:IsA('Smoke') or v:IsA('Sparkles') then
        v.Enabled = false
    elseif v:IsA('SpecialMesh') then
        v.TextureId = ''
        v.MeshId = ''
    elseif v:IsA('ParticleEmitter') or v:IsA('Trail') then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA('BlurEffect') or v:IsA('SunRaysEffect') or v:IsA('ColorCorrectionEffect') or v:IsA('BloomEffect') or v:IsA('DepthOfFieldEffect')  then
        v.Enabled = false
    elseif v:IsA('BasePart') and not v:IsA('MeshPart') then
        v.Reflectance = 0
        v.Material = 'SmoothPlastic'
    elseif v:IsA('Pants') or v:IsA('Shirt') then
        v[v.ClassName..'Template'] = ''
    elseif v:IsA('Explosion') then
        v.BlastPressure = 0
        v.BlastRadius = 0
        v.Visible = false
        v.Position = Vector3.new(0, 0, 0)
    elseif v:IsA('ForceField') then
        v.Visible = false
    elseif v:IsA('ShirtGraphic') then
        v.Graphic = ''
    elseif v:IsA('MeshPart') then
        v.MeshId = ''
        v.TextureID = ''
        v.Reflectance = 0
        v.Material = 'SmoothPlastic'
    elseif v:IsA('CharacterMesh') then
        v.BaseTextureId = ''
        v.MeshId = ''
        v.OverlayTextureId = ''
    elseif v:IsA('Sound') then
        v.SoundId = ''
        v.Volume = 0
    end
end)
end)
end)
else end