
import "CoreLibs/sprites"
import "gameScene"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('Finalcard').extends(gfx.sprite)

function Finalcard:init(myID)
    Finalcard.super.init(self)
   

    local cardImage = gfx.image.new("images/Chocolate_Small")
    if SelectionArray[myID] == 1 then
        cardImage = gfx.image.new("images/Chocolate_Small")
    elseif SelectionArray[myID] == 2 then
        cardImage = gfx.image.new("images/Vanilla_Small")
    elseif SelectionArray[myID] == 3 then
        cardImage = gfx.image.new("images/Honey_Small")
    elseif SelectionArray[myID] == 4 then
        cardImage = gfx.image.new("images/Milk_Small")
    elseif SelectionArray[myID] == 5 then
        cardImage = gfx.image.new("images/Pistachio_Small")
    elseif SelectionArray[myID] == 6 then
        cardImage = gfx.image.new("images/Cinnamon_Small")
    end
    
    self:setImage(cardImage)
    

    
    
    self:moveTo(26+48*(myID-1),74)

    self.MyX = 26+48*(myID-1)
    
    self.MyY = self.Y

    self:setZIndex(20)
    
    self:add()
   
   

end


function Finalcard:update()
    
    
    self:moveTo(self.x+(self.MyX-self.x)/2,74)
end
    
    