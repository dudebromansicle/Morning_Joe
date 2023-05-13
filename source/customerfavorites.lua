import "gamescene"


local pd <const> = playdate
local gfx <const> = playdate.graphics

class('CustomerFavorites').extends(gfx.sprite)

function CustomerFavorites:init(CustomerName,place)
   
	CustomerFavorites.super.init(self)
    
    
    local FavoriteImage = gfx.image.new("images/Vanilla")
    
    
    
    self:setImage(FavoriteImage)
    
    self:moveTo(21+42*(place-1), 21)
    
    self:setZIndex(10)

    self:add()


end


