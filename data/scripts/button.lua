simple_button = {}
local hovered = false

function simple_button:create(type, mode, x, y, width, height, r, g, b, h_r, h_g, h_b, func, button)
    self.type = type
    self.mode = mode
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.r = r
    self.g = g
    self.b = b
    self.h_r = h_r
    self.h_g = h_g
    self.h_b = h_b
    self.func = func
    self.button = button
end

function simple_button:update(dt)
    mouse_x, mouse_y = love.mouse.getPosition()

    if self.type == "rect" then
        if mouse_x > self.x and mouse_x < self.x + self.width then
            if mouse_y > self.y and mouse_y < self.y + self.height then
                hovered = true
                return hovered
            end
        else
            hovered = false
        end
    end
end

function simple_button:onpressed()
    return self.func
end

function simple_button:draw()
    if self.type == "rect" then
        if hovered == true then 
            love.graphics.setColor(self.h_r, self.h_g, self.h_b, 255)
        else
            love.graphics.setColor(self.r, self.g, self.b, 255)
        end
        love.graphics.rectangle(self.mode, self.x, self.y, self.width, self.height)
    end
end