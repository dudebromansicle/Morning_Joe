import "startScene"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('GameOverScene').extends(gfx.sprite)

function GameOverScene:init(text)
    CustomerNumber = 0
    
    print("DrinksCorrect:" ..DrinksCorrect)
    local text = "You made ".. DrinksCorrect .. " perfect drinks."
    local gameOverImage = gfx.image.new(gfx.getTextSize(text))
    gfx.pushContext(gameOverImage)
        gfx.drawText(text, 0, 0)
    gfx.popContext()
    local gameOverSprite = gfx.sprite.new(gameOverImage)
    gameOverSprite:moveTo(200, 120)
    gameOverSprite:add()

    self:add()
    --DrinksCorrect = 0
end

function GameOverScene:update()
    if pd.buttonJustPressed(pd.kButtonA) then
        if DrinksCorrect > 3 then
            SCENE_MANAGER:switchScene(StartScene)
        else
            DrinksCorrect = 0
            SCENE_MANAGER:switchScene(GameScene)
        end
    end
end