import "CoreLibs/animation"

import "CoreLibs/animator"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('CloseStore').extends(gfx.sprite)


function CloseStore:init()
    CloseStore.super.init(self)
    
    local string = "images/closing-table-100-46"
    self.imagetable = playdate.graphics.imagetable.new(string)

    self.animation = gfx.animation.loop.new(150, self.imagetable, false)

    self:moveTo(200,60)
    
    self:setZIndex(900)
    self:add()
    

end

function CloseStore:update()
     
    
    self:setImage(self.animation:image())


end