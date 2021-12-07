function love.load()
    x = 100
    y = 100
    fps = love.timer.getFPS()

    love.graphics.setDefaultFilter("nearest", "nearest")
    love.mouse.setVisible(false)

    color = 255
end

function love.update(dt)
    mouse_x, mouse_y = love.mouse.getPosition()

    -- hover state
    if mouse_x > x and mouse_x < x + 100 then
        if mouse_y > y and mouse_y < y + 100 then
            color = 0
        end
    else
        color = 255
    end
end

function hello()
    print("u clicked the button also hello")
end

function love.mousepressed(x, y, button, istouch)
    if button == 1 then
        hello()
    end
end

function love.draw()
    love.graphics.setColor(255,255,color)
    rectangle = love.graphics.rectangle("fill", x, y, 100, 100)

    love.graphics.setColor(0,0,255)
    mouse_image = love.graphics.circle("fill", mouse_x, mouse_y, 10)
    
    love.graphics.setColor(255,255,255)
    love.graphics.print("FPS: "..tostring(fps), 0, 0, nil, 2, 2)
end