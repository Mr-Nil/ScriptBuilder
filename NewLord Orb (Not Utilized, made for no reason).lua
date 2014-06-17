--[[This script was made by MrNil]]--
Player=game.Players.LocalPlayer
Mouse=Player:GetMouse()

Create=LoadLibrary('RbxUtility').Create

Surf={'FrontSurface','BackSurface','LeftSurface','RightSurface','TopSurface','BottomSurface'}


function when(f1,f2,...)
	coroutine.resume(coroutine.create(function(f11,f22,...)
	while wait() do
		if f11() then
			f22(...)
		end
	end
	end),f1,f2,...)
end
Night=true
Radnmes={'Brick','Cylinder','Head','Torso','Sphere','Wedge'}
Lerp=function(n,g,r)
	return(n+((g-n)*r))
end
when(function() return Night end, function(n) if n then game.Lighting.Brightness=Lerp(game.Lighting.Brightness,0,.1) game.Lighting:setMinutesAfterMidnight(Lerp(game.Lighting:getMinutesAfterMidnight(),0,.1)) end end,Night)
when(function() return not Night end, function(n) if not n then game.Lighting.Brightness=Lerp(game.Lighting.Brightness,1,.1) game.Lighting:setMinutesAfterMidnight(Lerp(game.Lighting:getMinutesAfterMidnight(),500,.1)) end end,Night)

rplay=nil
OrbOn=false

Mouse.KeyDown:connect(function(key)
	
	if key=='q' then
		coroutine.wrap(function() 
			local mainpart=Create'Part'{Parent=workspace,Anchored=true,CanCollide=false,Shape='Ball',Size=Vector3.new(2,2,2),BrickColor=BrickColor.new(Color3.new(0,0,0))}
				for i,v in pairs(Surf)do
					mainpart[v]='SmoothNoOutlines'
				end
				local surehost=Create'Part'{Parent=workspace,Anchored=true,CanCollide=false,Size=Vector3.new(2,2,2),BrickColor=BrickColor.new(Color3.new(1,1,1)),Transparency=.6}
				local surmesh=Create'SpecialMesh'{MeshId='http://www.roblox.com/asset/?id=1529453',MeshType='FileMesh',Scale=Vector3.new(15,15,15),Parent=surehost}
				local light=Create'PointLight'{Parent=surehost,Range=20,Color=Color3.new(0, 170/255, 1)}
				OrbOn=true
				coroutine.resume(coroutine.create(function(ppp,hos) 
					n=0
					while wait() do
						
					if OrbOn==true then
						n=n+1
						ppp.CFrame=CFrame.new(ppp.CFrame.p:Lerp(workspace.CurrentCamera.CoordinateFrame.p,.1))
						local v33=ppp.CFrame.p:Lerp(workspace.CurrentCamera.CoordinateFrame.p,.1)
						hos.CFrame=ppp.CFrame*CFrame.Angles(math.rad(v33.X),math.rad(v33.Y),math.rad(v33.Z))
--						coroutine.resume(coroutine.create(function(Pospos)
--							local briy=Create'Part'{Parent=workspace,Anchored=true,Size=Vector3.new(1,1,1),CanCollide=false,CFrame=CFrame.new(Pospos.p+Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)))*CFrame.Angles(math.rad(math.random(100,360)),math.rad(math.random(100,360)),math.rad(math.random(100,360))),BrickColor=BrickColor.new(Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255))}
--							local meshnum=math.random(1,#Radnmes)
--							local meshy=Create'SpecialMesh'{Parent=briy,Scale=Vector3.new(.1,.1,.1),MeshType=Radnmes[meshnum]}
--							for xxi=1,20 do
--								meshy.Scale=meshy.Scale+Vector3.new(.1,.1,.1)
--								briy.Transparency=briy.Transparency+.05
--								wait()
--							end
--							wait()	
--							briy:Destroy()						
--						end),ppp.CFrame)
					end
					end
				end),mainpart,surehost)
				
				
				coroutine.resume(coroutine.create(function()
						while wait(.3) do
							coroutine.resume(coroutine.create(function()
								local Pospos=workspace.CurrentCamera.CoordinateFrame
								local briy=Create'Part'{Parent=workspace,Anchored=true,Size=Vector3.new(1,1,1),CanCollide=false,CFrame=CFrame.new(Pospos.p+Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)))*CFrame.Angles(math.rad(math.random(100,360)),math.rad(math.random(100,360)),math.rad(math.random(100,360))),BrickColor=BrickColor.new(Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255))}
								local meshnum=math.random(1,#Radnmes)
								local meshy=Create'SpecialMesh'{Parent=briy,Scale=Vector3.new(.1,.1,.1),MeshType=Radnmes[meshnum]}
								for xxi=1,20 do
									meshy.Scale=meshy.Scale+Vector3.new(.1,.1,.1)
									briy.Transparency=briy.Transparency+.05
									wait()
								end
								wait()	
								briy:Destroy()	
								end))
							end
									
						end))
				
			
		
		end)()
		Player.Character.Parent=game.Lighting
	 rplay=Player.Character
		Player.Character=nil
	elseif key=='e'then
		--if rplay~=nil then
			
			--rplay.Parent=workspace
			--Player.Character=rplay
			--rplay=nil
			--OrbOn=false
			
		--end
		--Player:Loadcharacter(true)
	end
	
end)