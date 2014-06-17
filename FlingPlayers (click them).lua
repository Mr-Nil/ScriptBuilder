--[[This script was made by MrNil]]--
Player=game.Players.LocalPlayer
Mouse=Player:GetMouse()
Create=LoadLibrary('RbxUtility').Create
Fling=function(Obj)
    
   local sta=Obj.Head.Position+Vector3.new(math.random(-100,100),100,math.random(-100,100) )
   local stre={} --this represents thew coordination of the first streak attacking the player from the sky.   <-- this is for you it will allow me to 'connect the dots' of the bricks.
   --every time i iterate through the table, i will connect the last point of the table (which contains vector3's) to the current point in the table. 
   for i=1,10 do
       table.insert( stre, sta+ (((Obj.Head.Position-sta).unit*(i*10))  )    +Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))                 )
    end
    --so now down here ;)
    
    wait()
    for i2,v2 in pairs(stre)do
		if i2~=#stre then

		local distance = (stre[i2+1] - v2).magnitude
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
       		rayPart.CFrame        = CFrame.new(stre[i2+1], v2) * CFrame.new(0, 0, -distance/2)
       		coroutine.resume(coroutine.create(function(pa)
   		        repeat wait() pa.Transparency=pa.Transparency+0.05 until pa.Transparency>1
   		        pa:Destroy()
   		    end),rayPart)
    end
    if i2==#stre then
        local distance = (stre[i2] - Obj.Head.Position).magnitude
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
       		rayPart.CFrame        = CFrame.new(Obj.Head.Position, v2) * CFrame.new(0, 0, -distance/2)
       		coroutine.resume(coroutine.create(function(pa)
   		        repeat wait() pa.Transparency=pa.Transparency+0.05 until pa.Transparency>1
   		        pa:Destroy()
   		    end),rayPart)
    end
    end
    --Flinging starts here.
    --And Here
    --And Here Oh and --Here-- And here-- ;3
    Obj.Torso.Velocity=Vector3.new(0,0,0)
    Obj.Humanoid.Sit=true
    wait()
    local bff=Create'BodyForce'{Parent=Obj.Torso,force=Vector3.new(math.random(555,7500)*4,9999*5,math.random(555,7500)*4)}
        game:GetService('Debris'):AddItem(bff,.1)
end
--That's the nub I was telling you about All clear qq you can rejoin
Mouse.Button1Down:connect(function() 
if Mouse.Target~=nil and game.Players:FindFirstChild(Mouse.Target.Parent.Name)~=nil then
   Fling(Mouse.Target.Parent) 


end
end)










