--[[This script was made by MrNil]]--

inew=Instance.new
v3=Vector3.new
c3=Color3.new
On=true
Distance=20
Minimum=5
Maximum=10000000000000
LightColor=c3(0/255,230/255,150/255)
Light=inew('PointLight')
Light.Color=LightColor
XVec=v3(0,0,0)
Target=nil
Adorn=nil
BP=inew("BodyPosition")
BP.maxForce=v3(1000000, 1000000, 1000000)
BP.P=1000000.000
BP.D=100000.000
BP.position=v3(0,50,0)
Q=false
E=false
hit=nil
FireSize=10
FireColor=c3(255/255,255/255,255/255)
FireHeat=10
RunService=game:GetService('RunService')
Player=game.Players.LocalPlayer
Mouse=Player:GetMouse()
coroutine.wrap(function()
script.Parent=nil
RunService.RenderStepped:connect(function()
if On==false then
Adorn=nil
end
hit=Mouse.Hit
Unit=(hit.p-Player.Character.Head.Position).unit
NewPos=Player.Character.Head.Position+(Unit*Distance)-XVec
if BP==nil then
BP=inew("BodyPosition")
else
BP.position=NewPos
end
if Adorn~=nil then
BP.Parent=Adorn
Light.Parent=Adorn
else
BP.Parent=nil
Light.Parent=nil
end
if Mouse.Target~=nil then Target=Mouse.Target else Target=nil end			
if Q==true and E==false then
if Distance-1<Minimum then
Distance=Minimum
elseif Distance-1>=Minimum then
Distance=Distance-1
end
end
if Q==false and E==true then
if Distance+1>Maximum then
Distance=Maximum
elseif Distance+1<=Maximum then
Distance=Distance+1
end			
end	
if Distance<Minimum then
Distance=Minimum
end	
end)
end)()
Player.Chatted:connect(function(msg)
if string.lower(string.sub(msg,1,5))=='make/' then
for e=1,tonumber(string.sub(msg,6)) do
local Col=Color3.new(math.random(1,255)/255,math.random(1,255)/255,math.random(1,255)/255)
local br=Instance.new('Part', workspace)
br.Size=Vector3.new(math.random(2,8),math.random(2,8),math.random(2,8))
br.Position=Player.Character.Head.Position+ Vector3.new(math.random(-tonumber(string.sub(msg,6)),tonumber(string.sub(msg,6))), math.random(-tonumber(string.sub(msg,6)),tonumber(string.sub(msg,6))),math.random(-tonumber(string.sub(msg,6)),tonumber(string.sub(msg,6)))    )
br.BrickColor=BrickColor.new(Col)
end
end
end)
Mouse.KeyDown:connect(function(key)
if (key)=='q' then
Q=true
elseif (key)=='e' then
E=true
elseif (key)=='t' then
if Adorn~=nil then
BP.Parent=nil
Adorn.Velocity=Adorn.Velocity+(((Adorn.Position+XVec)-Player.Character.Head.Position)).unit*200
Adorn=nil
end
end
end)
Mouse.KeyUp:connect(function(key)
if (key)=='q' then
Q=false
elseif (key)=='e' then
E=false
elseif key=='k' and Adorn~=nil then
for i, v in pairs(Adorn.Parent:GetChildren()) do
if v:IsA('Humanoid') then v.Health=0 end
end
elseif key=='b' and Adorn~=nil then
Adorn:BreakJoints()
elseif (key)=='r' and Adorn ~=nil then
if Adorn.Parent:FindFirstChild('ThisIsAModel') and Adorn.Parent.Fire.Value==false then
for i, var in pairs(Adorn.Parent:GetChildren()) do
if var:IsA('BasePart') then
fire=inew('Fire',var)
fire.Color=FireColor
fire.Name='Fire23445'
fire.Size=FireSize
fire.Heat=FireHeat
end
end
Adorn.Parent.Fire.Value=true
elseif Adorn.Parent:FindFirstChild('ThisIsAModel') and Adorn.Parent.Fire.Value==true then
for i, var in pairs(Adorn.Parent:GetChildren()) do
if var:IsA('BasePart') and var:FindFirstChild('Fire23445') then
var.Fire23445:Destroy()
end
end
Adorn.Parent.Fire.Value=false
elseif not Adorn.Parent:FindFirstChild('ThisIsAModel') then
if not Adorn:FindFirstChild('Fire23445') then
fire=inew('Fire',Adorn)
fire.Color=FireColor
fire.Name='Fire23445'
fire.Size=FireSize
fire.Heat=FireHeat
elseif Adorn:FindFirstChild('Fire23445') then
Adorn.Fire23445:Destroy()
end
end
elseif (key)=='z' and Adorn ~=nil then
if Adorn.Parent:FindFirstChild('ThisIsAModel') then
if Adorn.Parent.Ghost.Value==false then
for i, v in pairs(Adorn.Parent:GetChildren()) do
if v:IsA('BasePart') then
if v.Transparency==0 then
tick=inew('BoolValue',v)
tick.Name='Trans'
v.Transparency=0.5
else
v.Transparency=v.Transparency*2
end
end
end
Adorn.Parent.Ghost.Value=true
elseif Adorn.Parent.Ghost.Value==true then
for i, v in pairs(Adorn.Parent:GetChildren()) do
if v:IsA('BasePart') then
if v:FindFirstChild('Trans') then
v.Transparency=0
v.Trans:Destroy()
else
v.Transparency=v.Transparency/2
end
end
end
Adorn.Parent.Ghost.Value=false
end
elseif not Adorn.Parent:FindFirstChild('ThisIsAModel') then
if Adorn:FindFirstChild('Trans') then
Adorn.Transparency=Adorn.Transparency/2
Adorn.Trans:Destroy()
if Adorn:FindFirstChild('Trans2') then
Adorn.Transparency=0
Adorn.Trans2:Destroy()
end
elseif not Adorn:FindFirstChild('Trans') then
inew('BoolValue',Adorn).Name='Trans'
if Adorn.Transparency<=0 then
inew('BoolValue',Adorn).Name='Trans2'
Adorn.Transparency=0.5
else Adorn.Transparency=Adorn.Transparency*2
end
end
end
end
end)
Mouse.Button1Down:connect(function()
if Adorn==nil and BP.Parent==nil and Target~=nil and (hit.p-Player.Character.Head.Position).magnitude<=Maximum and Target:IsDescendantOf(workspace) then
Distance=(Target.Position-Player.Character.Head.Position).magnitude
XVec=(hit.p-Target.Position)
if not Target.Parent:FindFirstChild('ThisIsAModel') then
local rt=Target.Size
Minimum=math.sqrt((rt.X^2+rt.Y^2+rt.Z^2))+.5
else 
local rt=Target.Parent:GetModelSize()
Minimum=math.sqrt((rt.X^2+rt.Y^2+rt.Z^2))+.5
end	
Adorn=Target
end
end)

Mouse.Button1Up:connect(function()
if Adorn~=nil  then
Adorn=nil
BP.Parent=nil
end
end)
