-- import "gameScene"
-- import "critterselector"

-- import "CoreLibs/sprites"

-- import "CoreLibs/animation"

-- import "CoreLibs/animator"

-- local pd <const> = playdate
-- local gfx <const> = playdate.graphics

-- class('SmokeScreen').extends(gfx.sprite)


-- function SmokeScreen:init()
--     SmokeScreen.super.init(self)
    
--     --local string = "images/Puff-table-64-64"
--     self.imagetable = playdate.graphics.imagetable.new(string)

--     self.animation = gfx.animation.loop.new(150, self.imagetable, true)

--     self:moveTo(94,110)
    
--     self.myAnimator = gfx.animator.new(200, 0, 240)
--     self:setZIndex(900)
--     self:add()

-- end

-- function SmokeScreen:update()
     
--     if self.myAnimator:ended() then
      
--         self:remove()
    
--     end



-- end