
import "CoreLibs/sprites"
import "gameScene"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('Credits').extends(gfx.sprite)

function Credits:init(mynumberbaby)
    print("mynumberbaby ".. mynumberbaby)
    Credits.super.init(self)

    Dudeimage = gfx.image.new("images/MP_Credit")
    
    if mynumberbaby == 1 then
        Dudeimage = gfx.image.new("images/RH_Credit")
    end
    
    if mynumberbaby == 2 then
        Dudeimage = gfx.image.new("images/MP_Credit")
    end
    
    if mynumberbaby == 3 then
        Dudeimage = gfx.image.new("images/RH_Credit")
    end
    
    if mynumberbaby == 4 then
        Dudeimage = gfx.image.new("images/MP_Credit")
    end

    self:setImage(Dudeimage)
    
    
    
    
    self:moveTo(-400+300*(mynumberbaby),160)
    self:setZIndex(300)
    self:add()
    


end

function Credits:update() 
    
    self:moveTo(self.x+2,160)

    if self.x > 800 then
        self:moveTo(-400,160)
    end
    
end

    
    