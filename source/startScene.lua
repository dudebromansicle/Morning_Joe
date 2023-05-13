import "gameScene"


local pd <const> = playdate
local gfx <const> = playdate.graphics

class('StartScene').extends(gfx.sprite)

function StartScene:init()
	local text = "This Will be the Start Screen"
    local gameOverImage = gfx.image.new(gfx.getTextSize(text))
    gfx.pushContext(gameOverImage)
        gfx.drawText(text, 0, 0)
    gfx.popContext()
    local gameOverSprite = gfx.sprite.new(gameOverImage)
    gameOverSprite:moveTo(200, 120)
    gameOverSprite:add()

    self:add()
    RandomizeFavorites()
end

function RandomizeFavorites()
    
    local a = 100
    local b = 100
    local c = 100
    a = math.random(1,8)
    b = math.random(1,8)
    while b == a do
        b = math.random(1,8)
    end
    c = math.random(1,8)
    while c == a or c == b do
        c = math.random(1,8)
    end
    SteveFavorites = {a, b, c}
    
    for i = 1,#SteveFavorites do 
        print("SteveFavorites:"..SteveFavorites[i])
    end
end

function StartScene:update()
   
    if pd.buttonJustPressed(pd.kButtonA) then
        SCENE_MANAGER:switchScene(GameScene)
    end

end