import "startScene"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('GameOverScene').extends(gfx.sprite)

function GameOverScene:init(text)
    Days = Days+1
    CustomerNumber = 0
    
    print("DrinksCorrect:" ..DrinksCorrect)
    local text = "Broken"
    if DrinksCorrect == 4 then
        text = "Congrats!  You made Everyone a perfect drink.  It took you "..Days.."days."
    else
        text = "Day "..Days..". You made ".. DrinksCorrect .. " perfect drinks."
    end
    
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
        if DrinksCorrect == 4 then
            SCENE_MANAGER:switchScene(StartScene)
        else
            DrinksCorrect = 0
            
            RandomizeOrder()
            SCENE_MANAGER:switchScene(GameScene)
        end
    end
end