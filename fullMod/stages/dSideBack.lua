function onCreate()
	-- background shit
	makeLuaSprite('sky', 'DsideStage/sky', -300, -300);
	setScrollFactor('sky', 0.3, 0.1);
	scaleObject('sky', 0.8, 0.8);

	makeLuaSprite('backBuildings', 'DsideStage/backBuildings', -400, 150);
	setScrollFactor('backBuildings', 0.7, 0.7);
	
	makeLuaSprite('ground', 'DsideStage/ground', -400, 450);
	setScrollFactor('ground', 0.9, 0.89);
	scaleObject('ground', 1.1, 1.1);

	makeLuaSprite('buildings', 'DsideStage/buildings', 700, -350);
	setScrollFactor('buildings', 0.9, 0.9);

	addLuaSprite('sky', false);
	addLuaSprite('backBuildings', false);
	addLuaSprite('ground', false);
	addLuaSprite('buildings', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end