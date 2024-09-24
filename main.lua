require("player1")
require("ball")
require("player2")
require("score")

function love.load()
    Player1:load()
    Ball:load()
    Player2:load()
    Score:load()

    Sounds = {}
    Sounds.hit = love.audio.newSource("sounds/hit.wav", "static")
    Sounds.point = love.audio.newSource("sounds/point.wav", "static")
end


function love.update(dt)
    Player1:update(dt)
    Ball:update(dt)
    Player2:update(dt)
end


function love.draw()
    Player1:draw()
    Ball:draw()
    Player2:draw()
    Score:draw()
end


function CollisionCheck(a, b)
    if a.x + a.width / 2 > b.x
    and a.x < b.x + b.width * 1.5
    and a.y + a.height * 3 > b.y
    and a.y < b.y + b.height / 4 * 3 then
        love.audio.play(Sounds.hit)
        return true
    else
        return false
    end
end
