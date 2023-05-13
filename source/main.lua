import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/ui"

import "sceneManager"
-- import "sceneManagerNoTransition"
import "startScene"

import "gameScene"

local pd <const> = playdate
local gfx <const> = playdate.graphics

playdate.ui.crankIndicator:start()
SCENE_MANAGER = SceneManager()

StartScene()

function pd.update()
	pd.timer.updateTimers()
	gfx.sprite.update()
	if crankinstruction == true then
		playdate.ui.crankIndicator:update()
	
	end
end