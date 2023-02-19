function onCreate()
  --background
  makeAnimatedLuaSprite('fg','bgFront',-300,-300)
  addAnimationByPrefix('fg','idle','bg_normal',24,true)
  objectPlayAnimation('fg','bg_normal',true)
  
  makeAnimatedLuaSprite('bg','sky',-300,-300)
  addAnimationByPrefix('bg','idle','bg_sky1',24,true)
  objectPlayAnimation('bg','bg_sky1',true)
  
  addLuaSprite('bg',false)
  addLuaSprite('fg',false)
  
  close(true);
  end