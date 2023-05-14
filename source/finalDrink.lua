
import "CoreLibs/sprites"
import "gameScene"
import "smallcard"
import "smokescreen"

import "steam"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('FinalDrink').extends(gfx.sprite)

function FinalDrink:init()
    
    FinalDrink.super.init(self)
    SmokeScreen()
    
    local Dudeimage = gfx.image.new("images/Cup1")

    local holymoly = math.random(1,3)
    print("holymoly: "..holymoly)
    if holymoly == 1 then
        Dudeimage = gfx.image.new("images/Cup1")
    elseif holymoly == 2 then
        
        Dudeimage = gfx.image.new("images/Cup_2")
    elseif holymoly == 3 then
        
        Dudeimage = gfx.image.new("images/Cup_3")
    end
    
    
    self:setImage(Dudeimage)
    
    if holymoly == 1 then
        
        self:moveTo(94,110)
    elseif holymoly == 2 then
        
        self:moveTo(90,110)
    elseif holymoly == 3 then
        
        self:moveTo(94,110)
    end

    self.MyX = 170-(self.width/2)

    self.MyY = 125 
    self:setZIndex(300)
    self:add()

    MakeChecklist()
    Steam()



end



function MakeChecklist()
    Finalcard(1)
    Finalcard(2)
    Finalcard(3)
end



function FinalDrink:update() 
    
    self:moveTo(self.x+(self.MyX-self.x)/2,self.y+(self.MyY-self.y)/2)
end

    
    