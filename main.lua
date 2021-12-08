require("data/scripts/simple_button")
require("data/scripts/text_button")

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    love.mouse.setVisible(false)

    number = 0

    font = "data/fonts/m5x7.ttf"
    button1 = simple_button:create("rect", "fill", 300, 100, 200, 100, 255, 255, 255, 255, 0, 255, 1)
    button2 = text_button:create("rect", "fill", "Hello", 370, 330, font, 45, 300, 300, 200, 100, 255, 255, 255, 255, 255, 0, 1)
end

function love.update(dt)
    simple_button:update(dt)
    text_button:update(dt)
end

function increment_1()
    number = number + 1
end

function love.mousepressed(x, y, button, istouch)
    if simple_button:onpressed(button) then
        increment_1()
    end

    if text_button:onpressed(button) then
        increment_1()
    end
end

function love.draw()
    simple_button:draw()
    text_button:draw()

    love.graphics.setColor(0,0,255)
    mouse_image = love.graphics.circle("fill", mouse_x, mouse_y, 10)
    
    love.graphics.setColor(255,255,255)
    love.graphics.print("hello world", 0, 0)
    love.graphics.print(number, 300, 500)

end