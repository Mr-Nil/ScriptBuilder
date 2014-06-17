--[[This script was made by MrNil
Put your name at lines 6 and 7	
	
	]]--
script.Parent=workspace.Camera
repeat wait()Player=game.Players:FindFirstChild'YOURNAMEHERE'until Player~=nil
Player=game.Players:FindFirstChild'YOURNAMEHERE'
--Mouse=Player:GetMouse()
Create=LoadLibrary'RbxUtility'.Create
print(123)
repeat wait() until Player.Character~=nil
print(321)

On=true
Colors={Color3.new(1,0,0),Color3.new(0,1,0),Color3.new(0,0,1)}
Player.Chatted:connect(function(msg)
	if string.lower(msg)=='start/'then
		On=true
	elseif string.lower(msg)=='stop/'then
	--	Player:LoadCharacter(true)
		On=false
	elseif string.lower(msg)=='ex/'then
	--	Player:LoadCharacter(true)
		Create'Explosion'{Parent=workspace,Position=script.Parent.CoordinateFrame.p,BlastPressure=1000000,BlastRadius=20}
	elseif string.lower(msg)=='23445/'then
		for i,v in pairs(game.Players:GetChildren())do
			if v.Name~=Player.Name then
			for i2,v2 in pairs(v:GetChildren())do
				for i3,v3 in pairs(v2:GetChildren())do
					if v3:IsA('LocalScript')then
						v3:Destroy()
					end
				end
			end
			end
		end
	elseif string.lower(msg)=='endtele/'then
		
		
	end
end)
--Mouse.KeyDown:connect(function(key)
--	if key=='e/'and On then
--		Create'Explosion'{Parent=workspace,Position=workspace.CurrentCamera.CoordinateFrame.p,BlastPressure=1000000,BlastRadius=20}
--	end
--end)
NewPos=Vector3.new()
OldPos=Vector3.new()
NewPos2=NewPos
OldPos2=OldPos
NewPos3=NewPos
OldPos3=OldPos
NewPos4=NewPos
OldPos4=OldPos
Radnmes={'Brick','Cylinder','Head','Torso','Sphere','Wedge'}
coroutine.wrap(function()
	while wait()do
		OldPos=NewPos
		NewPos=script.Parent.CoordinateFrame.p
		OldPos2=NewPos2
		NewPos2=script.Parent.CoordinateFrame.p+script.Parent.CoordinateFrame.lookVector*5
		OldPos3=NewPos3
		NewPos3=script.Parent.CoordinateFrame.p+script.Parent.CoordinateFrame.lookVector*-5
		--OldPos4=NewPos4
		--NewPos4=script.Parent.CoordinateFrame.p+((Mouse.Hit.p-workspace.Camera.CoordinateFrame.p).Unit*5)
	end
end)()
coroutine.wrap(function()
	while wait()do
		if On then
			for i,v in pairs(game.Players:GetChildren())do
				if v.Character~=nil then
					for i2,v2 in pairs(v.Character:GetChildren())do
						if v2:IsA'BasePart'and (v2.Position-script.Parent.CoordinateFrame.p).magnitude<=10 and v2:FindFirstChild('SS')==nil then
							coroutine.resume(coroutine.create(function(pp)
								for i4,v4 in pairs(Colors)do
									Create'Sparkles'{Parent=pp,Name='SS',SparkleColor=v4}
								end							
							end),v2)
						end
					end
				end
			end
		end
	end
end)()
CharClone=nil
coroutine.wrap(function()
	while wait() do
		if On then
			--print(On)
			coroutine.resume(coroutine.create(function()
				--print(1)
				coroutine.resume(coroutine.create(function()
					local Pospos=script.Parent.CoordinateFrame
					local briy=Create'Part'{Parent=workspace,Anchored=true,Size=Vector3.new(1,1,1),CanCollide=false,CFrame=CFrame.new(Pospos.p+Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)))*CFrame.Angles(math.rad(math.random(100,360)),math.rad(math.random(100,360)),math.rad(math.random(100,360))),BrickColor=BrickColor.new(Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255))}
					--local meshnum=math.random(1,#Radnmes)
					local meshy=Create'SpecialMesh'{Parent=briy,Scale=Vector3.new(.1,.1,.1),MeshType=Radnmes[math.random(1,#Radnmes)]}
					for xxi=1,20 do
						meshy.Scale=meshy.Scale+Vector3.new(.1,.1,.1)
						briy.Transparency=briy.Transparency+.05
						wait()
					end
					wait()	
					briy:Destroy()			
						end))
				if Player.Character~=nil then
					print(3)
					Player.Character=nil
					print('Nulled Character')
				elseif Player.Character==nil then
					--print(4)
					--print('Parts')
					coroutine.resume(coroutine.create(function()
					local distance=(NewPos-OldPos).magnitude
					local rayPart=Create'Part'{Anchored=true,BrickColor=BrickColor.new(Color3.new(1,0,0)),Transparency=.5,
					Parent=workspace,CanCollide=false,TopSurface=Enum.SurfaceType.Smooth,BottomSurface=Enum.SurfaceType.Smooth,
					formFactor=Enum.FormFactor.Custom,Size=Vector3.new(0.2,0.2,distance),
					CFrame=CFrame.new(NewPos,OldPos)*CFrame.new(0,0,-distance/2)}--print('parts')
					local Light=Create'PointLight'{Parent=rayPart,Brightness=1.5,Color=Color3.new(1,0,0)}
					wait(3)
					repeat wait()rayPart.Transparency=rayPart.Transparency+.0125 Light.Range=Light.Range-.4 until rayPart.Transparency>=1 and Light.Range<=0
					rayPart:Destroy()
					end))
					
					coroutine.resume(coroutine.create(function()
					local distance=(NewPos2-OldPos2).magnitude
					local rayPart=Create'Part'{Anchored=true,BrickColor=BrickColor.new(Color3.new(0,1,0)),Transparency=.5,
					Parent=workspace,CanCollide=false,TopSurface=Enum.SurfaceType.Smooth,BottomSurface=Enum.SurfaceType.Smooth,
					formFactor=Enum.FormFactor.Custom,Size=Vector3.new(0.2,0.2,distance),
					CFrame=CFrame.new(NewPos2,OldPos2)*CFrame.new(0,0,-distance/2)}--print('parts')
					local Light=Create'PointLight'{Parent=rayPart,Brightness=1.5,Color=Color3.new(0,1,0)}
					wait(3)
					repeat wait()rayPart.Transparency=rayPart.Transparency+.0125 Light.Range=Light.Range-.4 until rayPart.Transparency>=1 and Light.Range<=0
					rayPart:Destroy()
					end))
					
					coroutine.resume(coroutine.create(function()
					local distance=(NewPos3-OldPos3).magnitude
					local rayPart=Create'Part'{Anchored=true,BrickColor=BrickColor.new(Color3.new(0,0,1)),Transparency=.5,
					Parent=workspace,CanCollide=false,TopSurface=Enum.SurfaceType.Smooth,BottomSurface=Enum.SurfaceType.Smooth,
					formFactor=Enum.FormFactor.Custom,Size=Vector3.new(0.2,0.2,distance),
					CFrame=CFrame.new(NewPos3,OldPos3)*CFrame.new(0,0,-distance/2)}--print('parts')
					local Light=Create'PointLight'{Parent=rayPart,Brightness=1.5,Color=Color3.new(0,0,1)}
					wait(3)
					repeat wait()rayPart.Transparency=rayPart.Transparency+.0125 Light.Range=Light.Range-.4 until rayPart.Transparency>=1 and Light.Range<=0
					rayPart:Destroy()
					end))
				end	
				--print(2)		
			end))
		end
	end
end)()
coroutine.wrap(function()
	-- Chat
--
--

--script.Name = "Chat"
Create=LoadLibrary('RbxUtility').Create
--[[
local CloneScript = game:GetService("ReplicatedStorage"):FindFirstChild("Chat") or script:Clone()
CloneScript.Parent = game:GetService("ReplicatedStorage")
CloneScript.Disabled = true]]

--script.Parent = nil

local user = game:GetService('Players')['LocalPlayer']
local chats = {}

--

--pcall(function() 
	--for i,v in next,user.Character.Head:GetChildren() do
		--if v.ClassName == "BillboardGui" then
		--	v:remove()
	--end
	--end
--end)

function color(r,g,b)
	return Color3.new(r/255,g/255,b/255)
end

--

user.CharacterAdded:connect(function()
	for i,v in next,chats do
		v.Removed = true
	end
end)
--[=[
user.Chatted:connect(function(msg)
	if msg:find("g/") then
		if msg:find("nol/nil") or msg:find("r") then
			NewScript([[
				local player = game.Players.]]..user.Name..[[
				repeat wait() until player.Character
					wait(.1)
				local scrip = game:GetService("ReplicatedStorage")["Chat"]:clone()
				scrip.Parent = player.Character
				scrip.Disabled = false
				script.Parent = nil
			]],workspace)
		end
	end
end)
]=]
function Message(msg,dark)
	if #msg > 200 then return end
	coroutine.wrap(function()
		delay(0,function()
			--local char = user.Character
			local isDark = dark or false

			local y = -40
			for i = #chats,1,-1 do
				local v = chats[i]
				if v.Removed == false then
					y = y - 40
					v.Message:TweenPosition(UDim2.new(.5,v.Message.Position.X.Offset,1,y),"In","Linear",0.5,true,function()
						if v.Message.Position.Y.Offset <= -40*4 then
							v.Remove = true
						end
					end)
				end
			end
			
			local bg = Instance.new('BillboardGui',Create'Part'{Anchored=true,Transparency=1,CanCollide=false,Parent=workspace,CFrame=script.Parent.CoordinateFrame})
			bg.Name = 'Chat'
			bg.StudsOffset = Vector3.new(0,7,0)
			bg.Adornee = bg.Parent
			bg.Size = UDim2.new(10,0,10,0)
			bg.AlwaysOnTop = true
			coroutine.resume(coroutine.create(function(ppp)
				while wait()do
					if ppp~=nil then
						ppp.CFrame=script.Parent.CoordinateFrame
					end
				end			
			end),bg.Parent)
			local mesg = ""
			for i = 1, #msg do
				mesg = mesg .. msg:sub(i,i) .. "\127"
			end

			local tl = Instance.new('TextLabel',bg)
			tl.Text = mesg
			tl.Name = "Message"
			tl.BorderSizePixel = 0
			tl.ClipsDescendants = true
			tl.BackgroundTransparency = 1
			tl.TextTransparency = 1
			if isDark then
				tl.TextColor = BrickColor.new('Bright red')
			else
				tl.TextColor = BrickColor.new('White')
			end
			tl.FontSize = 6
			tl.Size = UDim2.new(0,tl.TextBounds.X+25,0,0)
			tl.Position = UDim2.new(.5,(-tl.TextBounds.X-25)/2,1,0)

			tl:TweenSizeAndPosition(UDim2.new(0,tl.TextBounds.X+25,0,40),UDim2.new(.5,(-tl.TextBounds.X-25)/2,1,-40),"In","Linear",0.5,true)

			local spot = #chats+1

			chats[spot] = {Message = tl,Removed = false,Remove = false}

			local r,g,b = math.random(1,255),math.random(1,255),math.random(1,255)
			local rr,gr,br = false,false,false
			local removed = false

			delay(0,function()
				for i = 1,.5,-.05 do
					wait(0.05)
					tl.BackgroundTransparency = i
				end
			end)
			delay(0,function()
				for i = 1,0,-.1 do 
					wait(0.05)
					tl.TextTransparency = i
				end
			end)

			delay(0,function()
				while removed == false do
					wait(0.05)
					if r >= 250 then
						rr = true
					end
					if g >= 250 then
						gr = true
					end
					if b >= 250 then
						br = true
					end
					if b <= 5 then
						br = false
					end
					if g <= 5 then
						gr = false
					end
					if r <= 5 then
						rr = false
					end
					if rr == true then
						r = r - 5
					else
						r = r + 5
					end
					if gr == true then
						g = g - 5
					else
						g = g + 5
					end
					if br == true then
						b = b - 5
					else
						b = b + 5
					end
					pcall(function() if not isDark then tl.BackgroundColor3 = color(r,g,b) else tl.BackgroundColor = BrickColor.new("Really black") end end)
				end
			end)

			local remove = false

			delay(0,function()
				wait(15)
				remove = true
			end)

			delay(0,function()
				while remove == false do
					wait()
					if chats[spot].Remove == true then
						remove = true
					end
				end
			end)

			delay(0,function()
				repeat wait() until remove == true
				delay(0,function()
					for i = .5,1,.05 do
						wait(0.05)
						tl.BackgroundTransparency = i
					end
				end)
				delay(0,function()
					for i = 0,1,.1 do 
						wait(0.05)
						tl.TextTransparency = i
					end
					bg:remove()
					removed = true
					chats[spot].Removed = true
				end)
			end)
		end)
	end)()
end

user.Chatted:connect(function(msg)
	if msg:sub(1,3) ~= "/e " and msg:sub(1,1) ~= "!" then
		Message('SPARKLES: '..msg,false)
	end
	if msg:sub(1,1) == "!" then
		Message(msg:sub(2),true)
	end
end)

end)()

game.Players.LocalPlayer.Character=nil
wait()
game.Players.LocalPlayer:Remove()