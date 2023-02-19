skipped = false
skipable = false

function onCreate()
    makeLuaText('Skip','Press Spacebar to Skip Intro',500,800, 20)
    setTextSize('Skip', 20)
    setTextAlignment('Skip','center')
    setObjectCamera('Skip','other')
    setTextFont('Skip', 'LEMONMILK-Medium.otf')
    
    addLuaText('Skip')
    
    doTweenAlpha('textSkip','Skip',0,10,'linear')
end

function onSongStart()

    skipable = true
    
end

function onUpdatePost(elapsed)
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and not skipped and skipable then
        setPropertyFromClass('Conductor', 'songPosition', 16.8 * 1000  ) -- 13.6
        setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
    skipped = true
    removeLuaText('Skip');
    end
end

function onUpdate()

end