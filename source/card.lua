
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

    self:setZIndex(150)
    
    self:add()
    self.spot = place

   
   

end

function Card:update()
    
    if SelectionArray[1] == self.spot then
        self.MyX = 130
        self.MyY = 150 
        
    self:setZIndex(200)
    elseif SelectionArray[2] == self.spot then
        self.MyX = 180
        self.MyY = 150 
        
    self:setZIndex(200)
    elseif SelectionArray[3] == self.spot then
        self.MyX = 230
        self.MyY = 150 
        
    self:setZIndex(200)
    else
        if self.spot == currentingrident then
            self.MyX = 23+(50*(self.spot-1))
            self.MyY = 190 
        else
            self.MyX = 23+(50*(self.spot-1))
            self.MyY = 200 
        end

        if #SelectionArray > 2 then
            self.MyY = 260
        end
    end

    
    
    
    self:moveTo(self.x+(self.MyX-self.x)/2,self.y+(self.MyY-self.y)/2)
end
    
    