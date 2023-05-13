
import "CoreLibs/sprites"
import "gameScene"
import "smallcard"
import "smokescreen"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('FinalDrink').extends(gfx.sprite)

function FinalDrink:init()
    
    FinalDrink.super.init(self)
    SmokeScreen()

    local Dudeimage = gfx.image.new("images/TEMP_Mug")
    self:setImage(Dudeimage)
    
    
    self:moveTo(94,110)

    self.MyX = 200-(self.width/2)

    self.MyY = 130 
    self:setZIndex(300)
    self:add()

    MakeChecklist()
    



end



function MakeChecklist()
    Finalcard(1)
    Finalcard(2)
    Finalcard(3)
end



function FinalDrink:update() 
    
    self:moveTo(self.x+(self.MyX-self.x)/2,self.y+(self.MyY-self.y)/2)
end

    
    