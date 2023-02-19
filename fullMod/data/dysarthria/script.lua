function onStartCountdown()
	addLuaText('ten')
    doTweenY('textSkip','ten',-500,5,'circIn')
end

function onUpdate()
	if misses > 10 then
		setHealth(0)
	end
end

function onCreate()
	makeLuaText('ten','Dont get less than 10 misses!',360,450,360)
    setTextSize('ten', 36)
    setTextAlignment('ten','center')
    setObjectCamera('ten','other')
    setTextFont('ten', 'LEMONMILK-Medium.otf')
end