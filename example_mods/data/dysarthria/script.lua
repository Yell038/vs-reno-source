local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('dialogue1', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	if not allowCountdown and seenCutscene then
		setProperty('inCutscene', true);
		runTimer('dialogue2', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	addLuaText('ten')
    doTweenY('textSkip','ten',-500,5,'circIn')
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'dialogue1' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'rumb');
	end
	if tag == 'dialogue2' then -- Timer completed, play dialogue
		startDialogue('freeplay', 'breakfast');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
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