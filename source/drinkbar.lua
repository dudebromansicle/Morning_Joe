
import "CoreLibs/sprites"
import "gameScene"
import "customer"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('DrinkBar').extends(gfx.sprite)

function DrinkBar:init()
    DrinkBar.super.init(self)
    DrinkBarsLength = 1

    self:moveTo(100+DrinkBarsLength/2, 100)
    
    local RectImage = gfx.image.new(DrinkBarsLength, 8)
    gfx.pushContext(RectImage)
        gfx.setColor(gfx.kColorBlack)
        gfx.fillRect(0, 0, DrinkBarsLength, 8)
    gfx.popContext()
    self:setImage(RectImage)
    self:add()

end


function DrinkBarIncrease(Addition)
    DrinkBarsLength = DrinkBarsLength + Addition
    if DrinkBarsLength < 1 then
        DrinkBarsLength = 1
    end
end

function DrinkBar:update()
    
   
    local RectImage = gfx.image.new(DrinkBarsLength, 8)
    gfx.pushContext(RectImage)
        gfx.setColor(gfx.kColorBlack)
        gfx.fillRect(0, 0, DrinkBarsLength, 8)
    gfx.popContext()
    self:setImage(RectImage)

    self:moveTo(100+DrinkBarsLength/2, 150)
    if DrinkBarsLength > 159 then
        DrinkBarsLength = 160
        TasteDrink()
    end


end
    
    