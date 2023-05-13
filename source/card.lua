
import "CoreLibs/sprites"
import "gameScene"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('Card').extends(gfx.sprite)

function Card:init(place)
    Card.super.init(self)

    print("Card.  place:"..place)

    local cardImage = gfx.image.new("images/Vanilla")
    
    self:setImage(cardImage)
    

    
    
    self:moveTo(23+(50*(place-1)),200)

    self.MyX = self.x
    
    self.MyY = self.Y

    
    self:add()
    self.spot = place

   
   

end

function Card:update()
    if self.spot == currentingrident then
        self.MyY = 180 
    else
        self.MyY = 210 
    end
    self:moveTo(self.x,self.y+(self.MyY-self.y)/2)
end
    
    