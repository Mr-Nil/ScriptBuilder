--[[This script was made by MrNil]]--

DrDerpicus=game.Players.LocalPlayer
Mouse=DrDerpicus:GetMouse()
On=false
Create=LoadLibrary('RbxUtility').Create
Mouse.KeyDown:connect(function(key)
	if key=='q'then
		On=not On
	end
end)
HexMesh='http://www.roblox.com/asset/?id=1529453'
coroutine.wrap(function() 
	while wait() do
		if On and DrDerpicus.Character~=nil then
			DrDerpicus.Character.Humanoid.WalkSpeed=50
			coroutine.resume(coroutine.create(function()
				local part=Create'Part'{Parent=workspace,Anchored=true,Size=Vector3.new(10,1,10),Transparency=.75,BrickColor=BrickColor.new(Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255))}	
				local mesh=Create'SpecialMesh'	{Parent=part,Scale=Vector3.new(.1,.01,.1),MeshId=HexMesh}
				local newc=CFrame.Angles(0,math.rad(math.random(0,360)),0)
				--for i=1,80 do
					repeat wait()
					part.CFrame=CFrame.new(DrDerpicus.Character.Torso.Position+Vector3.new(0,-3.55,0))*newc
					part.Transparency=part.Transparency+(1/80)
				--	part.Reflectance=part.Reflectance-(1/50)
					mesh.Scale=mesh.Scale+Vector3.new(2,0,2)
					until part.Transparency>=1
				--end	
				wait()
				part:Destroy()
			end))
		end
	end	
	
end)()