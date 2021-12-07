require("data/scripts/button")

function love.load()
    fps = love.timer.getFPS()

    love.graphics.setDefaultFilter("nearest", "nearest")
    love.mouse.setVisible(false)

    button1 = simple_button:create("rect", "fill", 300, 100, 100, 100, 255, 255, 255, 255, 0, 255, hello, 1)
end

function love.update(dt)
    simple_button:update(dt)
end

function hello()
    print("u clicked the button also hello")
end

function love.mousepressed(x, y, button, istouch)
    if button == 1 then
        simple_button:onpressed()
    end
end

function love.draw()
    simple_button:draw()

    love.graphics.setColor(0,0,255)
    mouse_image = love.graphics.circle("fill", mouse_x, mouse_y, 10)
    
    love.graphics.setColor(255,255,255)
    love.graphics.print("FPS: "..tostring(fps), 0, 0, nil, 2, 2)

end