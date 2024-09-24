Player2 = {}

function Player2:load()
    self.width = 20
    self.height = 100
    self.speed = love.graphics.getHeight() / 1.5
    self.x = love.graphics.getWidth() - 80 - self.width
    self.y = love.graphics.getHeight() / 2
end


function Player2:update(dt)
    Player2:movement(dt)
    Player2:antiNoclip()
end


function Player2:movement(dt)
    if love.keyboard.isDown("up") then
        self.y = self.y - self.speed * dt
    elseif love.keyboard.isDown("down") then
        self.y = self.y + self.speed * dt
    end
end


function Player2:antiNoclip()
    if self.y - self.height / 2 < 0 then
        self.y = 0 + self.height / 2
    elseif self.y + self.height > love.graphics.getHeight() + self.height / 2 then
        self.y = love.graphics.getHeight() - self.height / 2
    end
end


function Player2:draw()
    love.graphics.rectangle("fill", self.x, self.y - self.height / 2, self.width, self.height)
end
