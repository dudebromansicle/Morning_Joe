
import "CoreLibs/sprites"
import "gameScene"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('WordBubble').extends(gfx.sprite)

function WordBubble:init(destroy)
    
    WordBubble.super.init(self)

    local Dudeimage = gfx.image.new("images/WordBubble")
    self:setImage(Dudeimage)
    
    
    
    
    self:moveTo(280,120)
    self:setZIndex(11)
    self:add()
    

    if destroy == true then
        self.destruction = pd.timer.new(2000)
    end

end

function WordBubble:update() 
    if self.destruction ~= nil then
        if self.destruction.currentTime == 2000 then
            self:remove()
        end
    end
    
end

    
    