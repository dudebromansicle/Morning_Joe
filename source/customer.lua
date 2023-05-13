
import "CoreLibs/sprites"
import "gameScene"

import "customertext"
import "customerdialouge"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('Customer').extends(gfx.sprite)

function Customer:init(place)
    
    Customer.super.init(self)

    
    local Dudeimage = gfx.image.new("images/Dude")
    
    self:setImage(Dudeimage)
    
    self:moveTo(142,64)
    
    self:setZIndex(100)
    self:add()
    CustomerText("Steve")



end

function TasteDrink() 
    --print("TasteDrink")
    CustomerDialouge(1)
    CustomerDialouge(2)
    CustomerDialouge(3)
end

    
    