Ball = {}

function Ball:load()
    self.width = 20
    self.height = 20
    self.speed = 500
    self.x = love.graphics.getWidth() / 2
    self.y = love.graphics.getHeight() / 2
    self.hitP1 = false
    self.xVel = self.speed
    self.yVel = 0
end


function Ball:update(dt)
    Ball:move(dt)
    Ball:isColliding()
end


function Ball:move(dt)
    if self.hitP1 == true then
        self.x = self.x + self.xVel * dt
    else
        self.x = self.x - self.xVel * dt
    end

    self.y = self.y + self.yVel * dt
end


function Ball:isColliding()
    if self.hitP1 == true then
        if CollisionCheck(self, Player2) then
            self.hitP1 = false
            local collidePos = self.y - Player2.y
            self.yVel = collidePos * 7
        end
    else
        if CollisionCheck(self, Player1) then
            self.hitP1 = true
            local collidePos = self.y - Player1.y
            self.yVel = collidePos * 7
        end
    end

    if self.y - self.height / 2 < 0 then
        self.yVel = -self.yVel
        love.audio.play(Sounds.hit)
    elseif self.y + self.height / 2 > love.graphics.getHeight() then
        self.yVel = -self.yVel
        love.audio.play(Sounds.hit)
    end
end


function Ball:draw()
    love.graphics.rectangle("fill", self.x - self.width / 2, self.y - self.height / 2, self.width, self.height)
end