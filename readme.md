**lovframe-ui**

lovframe-ui is a simple yet awesome ui module for love2d and specifically for lovframe.
The current version of lovframe-ui is v0.1.

![lovframe-ui demo](data/demov0.1.gif)

What comes in this version? Well i'm glad you asked, This version comes with a simple button and a text button. The simple button is very easy to use

Simple Button Demo:

```lua
require("data/scripts/simple_button")

function love.load()
    button = simple_button:create("type", "mode", x, y, width, height, r, g, b, h_r, h_g, h_b, button)
end

function love.update(dt)
    simple_button:update(dt)
end

function love.draw()
    simple_button:draw()
end
```
