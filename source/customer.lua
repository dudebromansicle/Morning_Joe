
import "CoreLibs/sprites"
import "gameScene"

import "customertext"
import "customerdialouge"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('Customer').extends(gfx.sprite)

function Customer:init(place)
    
    Customer.super.init(self)

    self.name = place

    if place == 1 then
        CustomerText("Abigail")
        local Dudeimage = gfx.image.new("images/Dude")
        self:setImage(Dudeimage)
    elseif place == 2 then
        CustomerText("Anna")
        local Dudeimage = gfx.image.new("images/Dude")
        self:setImage(Dudeimage)
    elseif place == 3 then
        CustomerText("Jaice")
        local Dudeimage = gfx.image.new("images/Dude")
        self:setImage(Dudeimage)        
    elseif place == 4 then
        CustomerText("Gavin")
        local Dudeimage = gfx.image.new("images/Dude")
        self:setImage(Dudeimage)
     
    else
        CustomerText("Broken")
        local Dudeimage = gfx.image.new("images/Dude")
        self:setImage(Dudeimage)
    end
    
    
    
    self:moveTo(320,64)
    
    self:setZIndex(9)
    self:add()
    



end

function TasteDrink() 
    --print("TasteDrink")
    CustomerDialouge(1)
    CustomerDialouge(2)
    CustomerDialouge(3)
end

    
    