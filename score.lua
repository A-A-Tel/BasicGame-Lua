Score = {}

function Score:load()
    self.p1 = 0
    self.p2 = 0
end


function Score:update(p)
    if p == 1 then
        self.p1 = self.p1 + 1
        love.audio.play(Sounds.point)
    else
        self.p2 = self.p2 + 1
        love.audio.play(Sounds.point)
    end
end


function Score:draw()
    love.graphics.print("PLAYER 1", love.graphics.getWidth() / 2, love.graphics.getHeight() / 10)
    love.graphics.print(self.p1, love.graphics.getWidth() / 2, love.graphics.getHeight() / 9)
    love.graphics.print("PLAYER 2", love.graphics.getWidth() / 2, love.graphics.getHeight() / 8)
    love.graphics.print(self.p2, love.graphics.getWidth() / 2, love.graphics.getHeight() / 7)
end
