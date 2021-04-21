
function love.load()
x1=20
y1=250
x2=590
y2=250
x3=310
y3=250


x1speed = 400
x3speed = -150
y3speed = 150 

p1score=0
p2score=0
end


function love.update(dt)

if love.keyboard.isDown('w') 
then 
    if y1>0 then 
    y1 = y1 - (x1speed * dt) end
end 
if love.keyboard.isDown('s')
then 
    if y1 < 500 then
    y1 = y1 + (x1speed * dt) end
end 


if love.keyboard.isDown('up') 
then 
    if y2>0 then 
    y2 = y2 - (x1speed * dt) end
end 
if love.keyboard.isDown('down')
then 
    if y2 < 500 then
    y2 = y2 + (x1speed * dt) end
end  

if y3 < 0 then 
    y3speed = math.abs(y3speed) 
else if y3 > 640 then 
    y3speed = -math.abs(y3speed)
end
end

if x3 <= x1+50 and 
 y3+30 >= y1 and 
 y3 < y1+150
 then 
    x3speed = math.abs(x3speed)
 end

 
if x3 >= 590 and 
y3+30 >= y2 and 
y3 <  y2+150
then 
   x3speed = -math.abs(x3speed)
end

if  x3 > 640 then 
    x3 = 310 
    y3 = 250
    x3speed= -150
    y3speed= 150
    p1score=p1score+1
    
end

if x3 < 0  then 
    x3 = 310 
    y3 = 250
    x3speed= -150
    y3speed= 150
    p2score=p2score+1
  
end

if x3 > 640  then 
    x3 = 310 
    y3 = 250
    x3speed= -150
    y3speed= 150
   
end



x3 = x3 + (x3speed * dt)
y3 = y3 + (y3speed * dt)


end

function love.draw()
    love.graphics.setColor(1, 255, 255)
    love.graphics.circle("fill", x3, y3,20 )
    love.graphics.setColor(0, 0, 1);
    love.graphics.rectangle("fill", x1, y1, 30, 150)
    love.graphics.setColor(1, 0, 0)

    love.graphics.rectangle("fill", x2, y2, 30, 150)
    love.graphics.setColor(255, 255, 255)
   love.graphics.setFont(love.graphics.newFont(32))
   
    love.graphics.print(p1score, 175, 30)
    love.graphics.print(p2score, 425, 30)
 

end