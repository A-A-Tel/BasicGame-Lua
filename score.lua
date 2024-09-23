Score = {}

function Score:load()
    self.p1 = 0
    self.p2 = 0
end


function Score:update(p)
    if p == 1 then
        self.p1 = self.p1 + 1
    else
        self.p2 = self.p2 + 1
    end
end


function Score:draw()
    love.graphics.print(self.p1.." SCORE "..self.p2, love.graphics.getWidth() / 2, love.graphics.getHeight() / 10)
end