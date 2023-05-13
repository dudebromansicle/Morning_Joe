import "gameOverScene"
import "card"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('GameScene').extends(gfx.sprite)

function GameScene:init()
	local text = "This Will be the Game"
    local gameOverImage = gfx.image.new(gfx.getTextSize(text))
    gfx.pushContext(gameOverImage)
        gfx.drawText(text, 0, 0)
    gfx.popContext()
    local gameOverSprite = gfx.sprite.new(gameOverImage)
    gameOverSprite:moveTo(200, 120)
    gameOverSprite:add()

    currentingrident = 1

    self:add()
    MyMax = 8
    CreateDecks(MyMax)

end

function CreateDecks(Max) 
    for i = 1,Max do 
        Card(i) 
    end
end


function Ingrident(NewValue) 
    currentingrident = currentingrident + NewValue
    if currentingrident > MyMax then
        currentingrident = 1
    elseif currentingrident < 1 then
        currentingrident = MyMax
    end
    print(currentingrident)
end

function GameScene:update()
   
    if pd.buttonJustPressed(pd.kButtonRight) then
        Ingrident(1)
    end

    if pd.buttonJustPressed(pd.kButtonLeft) then
        Ingrident(-1)
    end

    if pd.buttonJustPressed(pd.kButtonA) then
        SCENE_MANAGER:switchScene(GameOverScene)
    end

end