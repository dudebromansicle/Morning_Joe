import "gameScene"


local pd <const> = playdate
local gfx <const> = playdate.graphics

class('StartScene').extends(gfx.sprite)

function StartScene:init()
	
    
    
    Days = 0
    CustomerNumber = 0
    DrinksCorrect = 0
    CustomerOrder = {1,2,3,4,5,6}
    local text = "This Will be the Start Screen"
    local gameOverImage = gfx.image.new(gfx.getTextSize(text))
    gfx.pushContext(gameOverImage)
        gfx.drawText(text, 0, 0)
    gfx.popContext()
    local gameOverSprite = gfx.sprite.new(gameOverImage)
    gameOverSprite:moveTo(200, 120)
    gameOverSprite:add()

    self:add()
    RandomizeFavorites()
    
    RandomizeOrder()
end

function RandomizeFavorites()
    --Woman
        
    local a = 100
    local b = 100
    local c = 100
    a = math.random(1,8)
    b = math.random(1,8)
    while b == a do
        b = math.random(1,8)
    end
    c = math.random(1,8)
    while c == a or c == b do
        c = math.random(1,8)
    end
    AnnaFavorites = {a, b, c}
    
    for i = 1,#AnnaFavorites do 
        print("AnnaFavorites:"..AnnaFavorites[i])
    end
    
    local a = 100
    local b = 100
    local c = 100
    a = math.random(1,8)
    b = math.random(1,8)
    while b == a do
        b = math.random(1,8)
    end
    c = math.random(1,8)
    while c == a or c == b do
        c = math.random(1,8)
    end
    AbigailFavorites = {a, b, c}
    
    for i = 1,#AbigailFavorites do 
        print("AbigailFavorites:"..AbigailFavorites[i])
    end
    --Men
    
    local a = 100
    local b = 100
    local c = 100
    a = math.random(1,8)
    b = math.random(1,8)
    while b == a do
        b = math.random(1,8)
    end
    c = math.random(1,8)
    while c == a or c == b do
        c = math.random(1,8)
    end
    GavinFavorites = {a, b, c}
    
    for i = 1,#GavinFavorites do 
        print("GavinFavorites:"..GavinFavorites[i])
    end
    
    local a = 100
    local b = 100
    local c = 100
    a = math.random(1,8)
    b = math.random(1,8)
    while b == a do
        b = math.random(1,8)
    end
    c = math.random(1,8)
    while c == a or c == b do
        c = math.random(1,8)
    end
    JaiceFavorites = {a, b, c}
    
    for i = 1,#JaiceFavorites do 
        print("JaiceFavorites:"..JaiceFavorites[i])
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
        print(i, "CustomerOrder:"..CustomerOrder[i])
    end
end

function StartScene:update()
   
    if pd.buttonJustPressed(pd.kButtonA) then
        SCENE_MANAGER:switchScene(GameScene)
    end

end