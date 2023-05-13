import "gameOverScene"
import "card"
import "drinkBar"

import "startScene"

import "customer"

import "customerdialouge"


import "ingridenttext"

import "CoreLibs/crank"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('GameScene').extends(gfx.sprite)

function GameScene:init()
    CustomerNumber = CustomerNumber+1
    NumberCorrect = 0
    Nomoreinput = false
    crankinstruction = false
	GameScene.super.init(self)
    currentingrident = 1
    SelectionArray = {0}

    self:add()
    self.currentpick = 1
    self.drinkmade = false
    MyMax = 8
    CreateDecks(MyMax)
    
    IngridentText(currentingrident)
    DrinkBar()
    Customer()
    

end

function CreateDecks(Max) 
    for i = 1,Max do 
        Card(i) 
    end
end


function Ingrident(NewValue) 
    currentingrident = currentingrident + NewValue
    while currentingrident == SelectionArray[1] or currentingrident == SelectionArray[2] or currentingrident == SelectionArray[3] do
        currentingrident = currentingrident + NewValue
    end 

    if currentingrident > MyMax then
        currentingrident = 1
    elseif currentingrident < 1 then
        currentingrident = MyMax
    end
    print("Ingrident:"..currentingrident)
    if #SelectionArray < 3 then
        
        IngridentText(currentingrident)
    end
    
end


function SelectThis() 
        
end

function GameScene:update()

   
    if pd.buttonJustPressed(pd.kButtonRight) then
        Ingrident(1)
    end

    if pd.buttonJustPressed(pd.kButtonLeft) then
        Ingrident(-1)
    end
    --add drink made
    if pd.buttonJustPressed(pd.kButtonA) and Nomoreinput == true then
       
        self.drinkmade = true 
        crankinstruction = false
        if SteveFavorites[1] == SelectionArray[1] and SteveFavorites[2] == SelectionArray[2] and SteveFavorites[3] == SelectionArray[3] then
            DrinksCorrect = DrinksCorrect + 1
        end
        print("DrinksCorrect:" ..DrinksCorrect)
        if CustomerNumber == 4 then
            SCENE_MANAGER:switchScene(GameOverScene)
        else
            SCENE_MANAGER:switchScene(GameScene)
        end
       
    end

    if pd.buttonJustPressed(pd.kButtonA) and self.currentpick < 4 then
        --SCENE_MANAGER:switchScene(GameOverScene)
        SelectionArray[self.currentpick] = currentingrident
        
        for i = 1,#SelectionArray do 
            print("SelectionArray:"..SelectionArray[i])
        end
        self.currentpick = self.currentpick + 1
        Ingrident(1)


    end
    
    
    
    if pd.buttonJustPressed(pd.kButtonB) and self.currentpick > 1 and Nomoreinput == false then
        self.currentpick = self.currentpick - 1

        table.remove(SelectionArray,self.currentpick)

        
        for i = 1,#SelectionArray do 
            print("SelectionArray:"..SelectionArray[i])
        end

    end
    if #SelectionArray == 3 and self.drinkmade == false  and Nomoreinput == false then
        crankinstruction = true
        local currentcranks = pd.getCrankTicks(36)
        --print("currentcranks: "..currentcranks)
        DrinkBarIncrease(currentcranks)
    else
        crankinstruction = false
    end
    
    
    
end