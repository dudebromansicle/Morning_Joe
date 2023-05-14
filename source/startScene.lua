import "gameScene"
import "startstore"



local pd <const> = playdate
local gfx <const> = playdate.graphics

class('StartScene').extends(gfx.sprite)

function StartScene:init()
	
    
    local backgroundImage = gfx.image.new("images/Menu_Attempt1")
    gfx.sprite.setBackgroundDrawingCallback(
        function( x, y, width, height )
			gfx.setClipRect(x, y, width, height)
			backgroundImage:draw(0,0)
			gfx.clearClipRect()
		end
	)
    StoreAnimation()
    Days = 0
    CustomerNumber = 0
    DrinksCorrect = 0
    CustomerOrder = {1,2,3,4,5,6}
    --local text = "This Will be the Start Screen"
    --local gameOverImage = gfx.image.new(gfx.getTextSize(text))
    --gfx.pushContext(gameOverImage)
    --    gfx.drawText(text, 0, 0)
    --gfx.popContext()
    --local gameOverSprite = gfx.sprite.new(gameOverImage)
    --gameOverSprite:moveTo(200, 120)
    --gameOverSprite:add()
    Solvedlist = {}
    TotalSolved = 0
    self:add()
    RandomizeFavorites()
    
    RandomizeOrder()

    
    if Finalmusic ~= nil then
        
        Finalmusic:stop()
        --print("stop start music")
    else
        Finalmusic = 	pd.sound.fileplayer.new("sounds/soundtrack_1")
        Finalmusic:setVolume(1)
    end

    if Startmusic ~= nil then
        
        Startmusic:stop()
        --print("stop start music")
    else
        Startmusic = 	pd.sound.fileplayer.new("sounds/playjam_soundtrack")
        Startmusic:setVolume(1)
    end
    if otherStartmusic ~= nil then
        
        otherStartmusic:play()
    else
        
        otherStartmusic = 	pd.sound.fileplayer.new("sounds/soundtrack")
        otherStartmusic:setVolume(1)
        otherStartmusic:play()
    end
    
end

function RandomizeFavorites()
    --Woman
        
    local a = 100
    local b = 100
    local c = 100
    a = math.random(1,6)
    b = math.random(1,6)
    while b == a do
        b = math.random(1,6)
    end
    c = math.random(1,6)
    while c == a or c == b do
        c = math.random(1,6)
    end
    AnnaFavorites = {a, b, c}
    
    for i = 1,#AnnaFavorites do 
        --print("AnnaFavorites:"..AnnaFavorites[i])
    end
    
    local a = 100
    local b = 100
    local c = 100
    a = math.random(1,6)
    b = math.random(1,6)
    while b == a do
        b = math.random(1,6)
    end
    c = math.random(1,6)
    while c == a or c == b do
        c = math.random(1,6)
    end
    AbigailFavorites = {a, b, c}
    
    for i = 1,#AbigailFavorites do 
        --print("AbigailFavorites:"..AbigailFavorites[i])
    end
    --Men
    
    local a = 100
    local b = 100
    local c = 100
    a = math.random(1,6)
    b = math.random(1,6)
    while b == a do
        b = math.random(1,6)
    end
    c = math.random(1,6)
    while c == a or c == b do
        c = math.random(1,6)
    end
    GavinFavorites = {a, b, c}
    
    for i = 1,#GavinFavorites do 
        --print("GavinFavorites:"..GavinFavorites[i])
    end
    
    local a = 100
    local b = 100
    local c = 100
    a = math.random(1,6)
    b = math.random(1,6)
    while b == a do
        b = math.random(1,6)
    end
    c = math.random(1,6)
    while c == a or c == b do
        c = math.random(1,6)
    end
    JaiceFavorites = {a, b, c}
    
    for i = 1,#JaiceFavorites do 
        --print("JaiceFavorites:"..JaiceFavorites[i])
    end
    
end
function RandomizeOrder()
    
    local a = 100
    local b = 100
    local c = 100
    local d = 100

    a = math.random(1,4)

    b = math.random(1,4)
    while b == a do
        b = math.random(1,4)
    end

    c = math.random(1,4)
    while c == a or c == b do
        c = math.random(1,4)
    end
    
    d = math.random(1,4)
    while d == a or d == b  or d == c do
        d = math.random(1,4)
    end

    
    CustomerOrder = {a,b,c,d}

    
    for i = 1,#CustomerOrder do 
        --print(i, "CustomerOrder:"..CustomerOrder[i])
    end
end

function StartScene:update()
   
    if pd.buttonJustPressed(pd.kButtonA) then
        otherStartmusic:stop()
        Startmusic:play(0)
        SCENE_MANAGER:switchScene(GameScene)
        
        local mystartsound = 	pd.sound.fileplayer.new("sounds/Clickonsomethingstart")
        mystartsound:setVolume(1)
        mystartsound:play(1)

        
    end

end