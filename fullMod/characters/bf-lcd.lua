function onStartCountdown()
    playAnim('boyfriend', 'three', true)
end

function onCountdownTick(swagCounter)
    if swagCounter == 0 then
        playAnim('boyfriend', 'three', true)
    end
    if swagCounter == 1 then
        playAnim('boyfriend', 'two', true)
    end
    if swagCounter == 2 then
        playAnim('boyfriend', 'one', true)
    end
    if swagCounter == 3 then
        playAnim('gf', 'cheer', true)
        playAnim('boyfriend', 'hey', true)
    end
end

--call your 'Sick' animations 'singDIRECTION-alt '
--e.g. for the left anim, call it 'singLEFT-alt'

function goodNoteHit(id, direction, noteType, isSustainNote)
    if getPropertyFromGroup('notes', id, 'rating') == 'sick' and direction == 0 then
        playAnim('boyfriend','singLEFT-alt','true')
        triggerEvent('Alt Idle Animation', 'bf', '-alt');
    elseif getPropertyFromGroup('notes', id, 'rating') == 'sick' and direction == 1 then
        playAnim('boyfriend','singDOWN-alt','true')
        triggerEvent('Alt Idle Animation', 'bf', '-alt');
    elseif getPropertyFromGroup('notes', id, 'rating') == 'sick' and direction == 2 then
        playAnim('boyfriend','singUP-alt','true')
        triggerEvent('Alt Idle Animation', 'bf', '-alt');
    elseif getPropertyFromGroup('notes', id, 'rating') == 'sick' and direction == 3 then
        playAnim('boyfriend','singRIGHT-alt','true')
        triggerEvent('Alt Idle Animation', 'bf', '-alt');
    elseif getPropertyFromGroup('notes', id, 'rating') == 'sick' and isSustainNote then
        triggerEvent('Alt Idle Animation', 'bf', '-alt');
    else
        triggerEvent('Alt Idle Animation', 'bf', '');
    end
end