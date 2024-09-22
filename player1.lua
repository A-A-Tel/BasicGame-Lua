Player1 = {}

function Player1:load()
    self.x = 80
    self.y = love.graphics.getHeight() / 2
    self.width = 20
    self.height = 100
    self.speed = 500
end


function Player1:update(dt)
    Player1:movement(dt)
    Player1:antiNoclip()
end


function Player1:movement(dt)
    if love.keyboard.isDown("w") then
        self.y = self.y - self.speed * dt
    elseif love.keyboard.isDown("s") then
        self.y = self.y + self.speed * dt
    end
end


function Player1:antiNoclip()
    if self.y - self.height / 2 < 0 then
        self.y = 0 + self.height / 2
    elseif self.y + self.height / 2> love.graphics.getHeight() then
        self.y = love.graphics.getHeight() - self.height / 2
    end
end


function Player1:draw()
    love.graphics.rectangle("fill", self.x, self.y - self.height / 2, self.width, self.height)
end
