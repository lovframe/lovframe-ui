function love.load()
    x = 0
    y = 100

end

function love.update(dt)
    x = x + 10
    y = y + 5
end

function love.draw()
    rectangle = love.graphics.rectangle("fill", x, y, 100, 100)
end