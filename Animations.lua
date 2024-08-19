-- Animations - Main - Custom - Seconds - 2 (Fade)
--[[
function(progress, start, delta)

progress = a value between 0 and 1,  depending on the "time in" setting used
start = base value for the Aura
delta = value to be animated to, set in the Animation 

Expected return:
    return fade (number)
    
    Between 0 and 1

• With all animation functions, be sure to never return nil. If in doubt, return the base values to avoid errors. 


Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Animation-Functions#alpha
]]

function(progress, start, delta)
    return start + (progress * delta)
end

-- Animations - Main - Custom - Slide  (Slide)
--[[
function(progress, startX, startY, deltaX, deltaY)

progress = a value between 0 and 1,  depending on the "time in" setting used
startX/Y = base values for the Aura's position on the screen
deltaX/Y = values to be animated to, set in the Animation 

Expected return:
    return positionX (number), positionY (number)
    
    number of pixels offset from Aura's anchor, as set in Display

• With all animation functions, be sure to never return nil. If in doubt, return the base values to avoid errors. 

Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Animation-Functions#translate
]]

function(progress, startX, startY, deltaX, deltaY)
    return startX + (progress * deltaX), startY + (progress * deltaY)
end

-- Animations - Main - Custom - Zoom
--[[
function(progress, startX, startY, scaleX, scaleY)

progress = a value between 0 and 1,  depending on the "time in" setting used
startX/Y = base value for the Aura (essentially this is 1 for zoom functions)
scaleX/Y = value to be animated to, set in the Animation 

Expected return:
    return scaleX (number), scaleY (number)
    
    Numbers relative to 1 being the default Aura scale.

• With all animation functions, be sure to never return nil. If in doubt, return the base values to avoid errors. 

Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Animation-Functions#scale
]]

function(progress, startX, startY, scaleX, scaleY)
    return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY))
end

-- Animations - Main - Custom - Color
--[[
function(progress, r1, g1, b1, a1, r2, g2, b2, a2)

progress = a value between 0 and 1,  depending on the "time in" setting used
r1/2 = red value, between 0 and 1
g1/2 = green value, between 0 and 1
b1/2 = blue value, between 0 and 1
a1/2 = alpha (opacity) value, between 0 and 1
The "1" values represent the colour selected in Display.
The "2" values represent the colour selected in Animation

Expected return:
    return red (number), green (number), blue (number), alpha (number)
    
    Numbers between 0 and 1

• With all animation functions, be sure to never return nil. If in doubt, return the base values to avoid errors. 

Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Animation-Functions#color
]]

function(progress, r1, g1, b1, a1, r2, g2, b2, a2)
    return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))
end







