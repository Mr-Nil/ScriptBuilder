--[[This script was made by MrNil
put your name at line 6
	]]--

HoodId=93131552
P='YOURNAMEHERE'
wait(5)
Player=game.Players.LocalPlayer
InsertService=game:GetService('InsertService')
Player.Character.Humanoid.MaxHealth=1000000000
wait()
Player.Character.Humanoid.Health=1000000000
print'starting LOD'
Mouse=Player:GetMouse()
Night=true
KillRadius=true

Create=LoadLibrary('RbxUtility').Create


function when(f1,f2,...)
	coroutine.resume(coroutine.create(function(f11,f22,...)
	while wait() do
		if f11() then
			f22(...)
		end
	end
	end),f1,f2,...)
end


Lerp=function(n,g,r)
	return(n+((g-n)*r))
end
--[[when(function() return Night end, function(n) if n then game.Lighting.Brightness=Lerp(game.Lighting.Brightness,0,.1) game.Lighting:setMinutesAfterMidnight(Lerp(game.Lighting:getMinutesAfterMidnight(),0,.1)) game.Lighting.FogColor=Color3.new(0,0,0)game.Lighting.FogEnd=100  game.Lighting.FogStart=-50 end end,Night)
when(function() return not Night end, function(n) if not n then game.Lighting.Brightness=Lerp(game.Lighting.Brightness,1,.1) game.Lighting:setMinutesAfterMidnight(Lerp(game.Lighting:getMinutesAfterMidnight(),500,.1)) end end,Night)
]]
InvertColors=function()
	
	local Main={workspace}
	local rem={}
	local nm=0
	local om=0
	print('Wait For Objects to be Assessed')
	while wait() do
		for i,v in pairs(Main) do
			
			for i2,v2 in pairs(v:GetChildren())do
				local NumIn=0
				for i3,v3 in pairs(Main) do
					if v3==v2 then 
						NumIn=NumIn+1
					end
				end
				if NumIn==0 then
					table.insert(Main,v2)
				end
			end
		end
		om=nm
		nm=#Main
		if om==#Main then
			for i,v in pairs(Main)do
				if v:IsA('BasePart') and v.Parent.Name~=Player.Name then
					wait()
					local col=v.BrickColor.Color
					v.BrickColor=BrickColor.new(Color3.new(1-(col.r),1-(col.g),1-(col.b)))
				end
			end
			break;
		end
	end
	print('This script found and Changed ' ..tostring(#rem))
	

end
Faces={'Top','Bottom','Left','Right','Front','Back'}
Sparkle='http://www.roblox.com/asset/?id=143081848'
Grass='http://www.roblox.com/asset/?id=34540702'
CartoonBrick="http://www.roblox.com/asset/?id=106902083"
TextureAll=function()
	
	local Main={workspace}
	local rem={}
	local nm=0
	local om=0
	print('Wait For Objects to be Assessed')
	while wait() do
		for i,v in pairs(Main) do
			
			for i2,v2 in pairs(v:GetChildren())do
				local NumIn=0
				for i3,v3 in pairs(Main) do
					if v3==v2 then 
						NumIn=NumIn+1
					end
				end
				if NumIn==0 then
					table.insert(Main,v2)
				end
			end
		end
		om=nm
		nm=#Main
		if om==#Main then
			for i,vx in pairs(Main)do
				coroutine.resume(coroutine.create(function(v)
				if v:IsA('BasePart') and v.Parent.Name~=Player.Name then
					wait()
					if v.Name=='Head' then
						v.Transparency=1
					end
					for it,vt in pairs(v:GetChildren())do
						if vt.Name=='TTT' then 
							vt:Destroy()
						end
					end
					for it,vt in pairs(Faces) do
						wait()
					local Tex=Create'Texture'{Parent=v,Name='TTT',Face=vt,Shiny=300,Specular=100,StudsPerTileU=5,StudsPerTileV=5,Texture=Grass}
					end
				end
				end),vx)
				end
			
			break;
			
		end
	end
	print('This script found and Changed ' ..tostring(#rem))
	

end


NoMusic=function()
		local Main={workspace}
	local rem={}
	local nm=0
	local om=0
	print('Wait For Objects to be Assessed')
	while wait() do
		for i,v in pairs(Main) do
			
			for i2,v2 in pairs(v:GetChildren())do
				local NumIn=0
				for i3,v3 in pairs(Main) do
					if v3==v2 then 
						NumIn=NumIn+1
					end
				end
				if NumIn==0 then
					table.insert(Main,v2)
				end
			end
		end
		om=nm
		nm=#Main
		if om==#Main then
			for i,v in pairs(Main)do
				if v:IsA('Sound') then
					v:Destroy()
				end
			end
			break;
		end
	end
	print('This script found and Changed ' ..tostring(#rem))
	
end

ChangePlayerAppearance=function()
	
	for i,v in pairs(Player.Character:GetChildren())do
		if v:IsA('Shirt')or v:IsA('Pants')or v:IsA('Hat') or v:IsA('CharacterMesh') or v:IsA('ShirtGraphic') then
			v:Destroy()
		end
	end
	local Hoodd=InsertService:LoadAsset(HoodId)
	for i,v in pairs(Hoodd:GetChildren())do
		if v:IsA("Hat")then
			v.Parent=Player.Character
		end
	end
	Player.Character.Head.Transparency=1
	local bc=Player.Character:FindFirstChild('Body Colors')
	local bl=BrickColor.new('Really black')
	if bc~=nil then
	bc.HeadColor=bl
	bc.LeftArmColor=bl
	bc.RightArmColor=bl
	bc.LeftLegColor=bl
	bc.RightLegColor=bl
	bc.TorsoColor=bl
	else
		for i,v in pairs(Player.Character:GetChildren())do
			if v:IsA('BasePart')then
				v.BrickColor=bl
			end
		end
	end
	for i,v in pairs(Player.Character.Torso:GetChildren())do
		if v:IsA'Decal' then v:Destroy() end
	end
end

ChangePlayerAppearance()
Mouse.KeyDown:connect(function(key)
	if key=='x'then
		print(key)
		Player.Character.Humanoid.WalkSpeed=50
		for i,v in pairs(Player.Character:GetChildren())do
			if v:IsA('BasePart')then
				v.Transparency=1
				for i2,v2 in pairs(v:GetChildren())do
					if v2:IsA('Decal') then
						v2.Transparency=1
					end
				end
			elseif v:IsA('Hat') then
				v.Handle.Transparency=1
			end
		end
	elseif key=='z'then
		print(key)
		Player.Character.Humanoid.WalkSpeed=16
		for i,v in pairs(Player.Character:GetChildren())do
			if v:IsA('BasePart')and v.Name~='HumanoidRootPart' then
				v.Transparency=0
				if v.Name=='Head'then
					v.Transparency=1
					for i2,v2 in pairs(v:GetChildren())do
						if v2:IsA'Decal' then v2.Transparency=0 end
					end
				end
			elseif v:IsA('Hat') then
				v.Handle.Transparency=0
			end
		end
	elseif key=='c' then
		print(key)
		InvertColors()
	elseif key=='b' then
		print(key)
		TextureAll()
	elseif key=='m' then
		NoMusic()
	elseif key=='e' then
		print(key)
		local ex=Instance.new('Explosion',workspace)
		ex.BlastPressure=0
		ex.BlastRadius=15
		ex.Position=Player.Character.Torso.Position
		ex.Hit:connect(function(Part) if game.Players:FindFirstChild(Part.Parent.Name)~=nil and Player ~= game.Players:FindFirstChild(Part.Parent.Name) then
			for i,v in pairs(Part.Parent:GetChildren())do
				v.Size=Vector3.new(1,1,1)
			end
		end end)
	elseif key=='v'then
		local vtab={}
		for i,v in pairs(workspace:GetChildren())do
			if v:IsA('Model') and v:FindFirstChild('Humanoid',true)~=nil and v.Name~=Player.Name then
				table.insert(vtab,v)
			end
		end
		for i,v in pairs(vtab)do
			coroutine.resume(coroutine.create(function(modd) 
				local streamt={}
				for i2=1,30 do
					table.insert(streamt,Player.Character.Head.Position+(Vector3.new(0,10,0)*i2)+Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)))
				end
				for i2,v2 in pairs(streamt)do
					if i2~=#streamt then
						
						
						
					local distance = (streamt[i2+1] - v2).magnitude
      				  local rayPart = Instance.new("Part", Player.Character)
      				 rayPart.Name          = "RayPart"
      				 rayPart.BrickColor    = BrickColor.new(Color3.new(0,1,0))
      				 rayPart.Transparency  = 0.5
      				 rayPart.Anchored      = true
      				 rayPart.CanCollide    = false
      				 rayPart.TopSurface    = Enum.SurfaceType.Smooth
       				 rayPart.BottomSurface = Enum.SurfaceType.Smooth
       				 rayPart.formFactor    = Enum.FormFactor.Custom
       				 rayPart.Size          = Vector3.new(0.2, 0.2, distance)
       				 rayPart.CFrame        = CFrame.new(streamt[i2+1], v2) * CFrame.new(0, 0, -distance/2)
						
						coroutine.resume(coroutine.create(function(pp) 
							repeat wait() pp.Transparency=pp.Transparency+0.025 until pp.Transparency>1
							pp:Destroy()
						end),rayPart)	
						
					elseif i2==#streamt then	
					coroutine.resume(coroutine.create(function(PosPos,Mainp) 
						local gop=Create'Part'{Parent=workspace,Size=Vector3.new(3,3,3),CanCollide=false,Transparency=1,Position=PosPos}
						local fi=Create'Fire'{Parent=gop,Size=20,Color=Color3.new(0,1,127/255),Heat=25}
						wait()
						local bp=Create'BodyPosition'{Parent=gop,position=Mainp:FindFirstChild('Humanoid',true).Parent.Torso.Position,maxForce=Vector3.new(30000,30000,30000),P=30000}
						coroutine.resume(coroutine.create(function(gogo,Mainpa) 
							gogo.BodyPosition.ReachedTarget:connect(function()
								wait(math.random(1,5)/5) 
								local poss1=gogo.Position
								local ex=Instance.new('Explosion',workspace) gogo:Destroy()
										ex.BlastPressure=0
										ex.BlastRadius=15
										ex.Position=poss1
								if (Mainpa.Torso.Position-poss1).magnitude<20 then
									Mainpa.Torso:BreakJoints()
								end
							end)
						end),gop,Mainp)
					end),streamt[i2],modd)
						
						
					end
				end
			end),v)
			
		end
	end
end)
Player.Chatted:connect(function(msg)
	if string.lower(msg)=='night' then
		Night=true
	elseif string.lower(msg)=='day' then
		Night=false
	end
	
end)