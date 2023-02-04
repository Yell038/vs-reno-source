function onCreate()
	makeAnimatedLuaSprite('animatedicon', 'icons/animated/icon-reno', getProperty('iconP2.x'), getProperty('iconP2.y'))
	addAnimationByPrefix('animatedicon', 'neutral', 'Neutral', 24, false)
    addAnimationByPrefix('animatedicon', 'losing', 'Lose', 24, false)
    addAnimationByPrefix('animatedicon', 'winning', 'Winning', 24, false)
	setObjectCamera('animatedicon', 'hud')
	addLuaSprite('animatedicon', true)
    if hideHud then
        setProperty('animatedicon.alpha', 0)
    end
end

function onUpdate(elapsed)
	setObjectOrder('animatedicon', getObjectOrder('iconP1') + 10)
    setObjectOrder('animatedicon', getObjectOrder('scoreTxt') - 1)

	setProperty('animatedicon.flipX', false)
	setProperty('animatedicon.visible', true)
	setProperty('animatedicon.x', getProperty('iconP2.x') - -40)
	setProperty('animatedicon.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon.y', getProperty('iconP2.y') - -20)
	setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x') - 0)
	setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y') - 0)
	setProperty('animatedicon.antialiasing',true)
	if getProperty('health') > 1.6 then
		playAnim('animatedicon', 'losing', false)
	else if getProperty('health') < 0.4 then
        playAnim('animatedicon', 'winning', false)
    else
		playAnim('animatedicon', 'neutral', false)
	end

	setProperty('iconP2.alpha', 0) 
        playAnim('animatedicon','neutral');	
end
end