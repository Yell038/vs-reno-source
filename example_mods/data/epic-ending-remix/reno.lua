-- Script by Shadow Mario
-- Customized for Simplicity by Kevin Kuntz
function onCreate()
	makeAnimationList();
	makeOffsets();
	
	-- boxing guy
	makeAnimatedLuaSprite('reno', 'characters/reno',  -1000, defaultOpponentY + 200);
	addAnimationByPrefix('reno', 'idle', 'Idle', 24, false);
	addAnimationByPrefix('reno', 'singLEFT', 'Left', 24, false);
	addAnimationByPrefix('reno', 'singDOWN', 'Down', 24, false);
	addAnimationByPrefix('reno', 'singUP', 'Up', 24, false);
	addAnimationByPrefix('reno', 'singRIGHT', 'Right', 24, false);
	
	addLuaSprite('reno', true);

	playAnimation('reno', 0, true);
end

animationsList = {}
holdTimers = {reno = -1.0};
noteDatas = {reno = 0};
function makeAnimationList()
	animationsList[0] = 'idle';
	animationsList[1] = 'singLEFT';
	animationsList[2] = 'singDOWN';
	animationsList[3] = 'singUP';
	animationsList[4] = 'singRIGHT';
end

offsetsreno = {};
function makeOffsets()
	offsetsreno[0] = {x = 0, y = 0}; --idle
	offsetsreno[1] = {x = 10, y = -6}; --left
	offsetsreno[2] = {x = -54, y = -69}; --down
	offsetsreno[3] = {x = -8, y = 65}; --up
	offsetsreno[4] = {x = -5, y = 0}; --right
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Special Sing' then
		if not isSustainNote then
			noteDatas.reno = direction;
		end	
	characterToPlay = 'reno'
	animToPlay = noteDatas.reno;
	holdTimers.reno = 0;
			
	playAnimation(characterToPlay, animToPlay, true);
	end
end

function onUpdate(elapsed)
	holdCap = stepCrochet * 0.004;
	if holdTimers.reno >= 0 then
		holdTimers.reno = holdTimers.reno + elapsed;
		if holdTimers.reno >= holdCap then
			playAnimation('reno', 0, false);
			holdTimers.reno = -1;
		end
	end
end

function onCountdownTick(counter)
	beatHitDance(counter);
end

function onBeatHit()
	beatHitDance(curBeat);
end

function beatHitDance(counter)
	if counter % 2 == 0 then
		if holdTimers.reno < 0 then
			playAnimation('reno', 0, false);
		end
	end
end

function playAnimation(character, animId, forced)
	-- 0 = idle
	-- 1 = singLEFT
	-- 2 = singDOWN
	-- 3 = singUP
	-- 4 = singRIGHT
	animName = animationsList[animId];
	--debugPrint(animName);
	if character == 'reno' then
		objectPlayAnimation('reno', animName, forced); -- this part is easily broke if you use objectPlayAnim (I have no idea why its like this)
		setProperty('reno.offset.x', offsetsreno[animId].x);
		setProperty('reno.offset.y', offsetsreno[animId].y);
	end
end

function onStepHit()
    if curStep == 896 then
        doTweenX('wow', 'reno', -100, 1, 'circInOut')
    end
end