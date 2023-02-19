function onUpdatePost()
    setProperty('gf.y',300)

    if mustHitSection then
        setProperty('gf.scale.x', 1)
    else
        setProperty('gf.scale.x', -1)
    end
end