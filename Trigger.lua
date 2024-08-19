-- Trigger Activation
--[[
function(triggers)

Custom Activation Functions are sent an "array" table containing all the Aura's triggers as booleans. Naming the incoming arg as above, `triggers[1]` will give the current status of trigger 1, and so on. 

Expected return:
    return Boolean

Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Aura-Activation-and-Deactivation#custom
]]

-- Custom Trigger
--[[
if using "TSU" type then:
    function(allstates_table, event_name, arg1, arg2, ...)

if using "event" type or "status - event" type then:
    function(event_name, arg1, arg2, ...)

if using "status" type then:
    function()

Expected return:
    Boolean
• Can return nil (same as returning false)

Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Triggers
]]



-- Custom UnTrigger
--[[ 
All args from the trigger are also sent to the untrigger. See Trigger for details.

if left blank will default to :
function()
    return true
end

Expected return:
    Boolean

Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Triggers
]]


-- Duration Info
--[[
The trigger table is sent into this function as the only arg. This is mostly for internal WA reasons and is very unlikely to be useful to users. 
    function(trigger_table)

Expected return:
    • Timed durations:
        duration (number of seconds), expirationTime (number of seconds, relative to the value of GetTime())
    
    • Static values:
        value (number), total / maximum value (number), true
        (the "true" as the third return tells WA that it's a static type)

The values set here set the Aura's main progress as well as setting texts like %p, %t, etc.

Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Dynamic-Information#duration-info
]]


-- Overlay 1 Info
--[[
The trigger table is sent into this function as the only arg. This is mostly for internal WA reasons and is very unlikely to be useful to users. 
    function(trigger_table)

Expected return:
    • For non-moving overlays:
        return left value (number), right value (number)
        
        The values are relative to the "duration" of an Aura with "timed" DurationInfo, or "total/max" value of an Aura with "static" DurationInfo.

    • For moving overlays:
        return "Forward" or "backward" (string), width (number)

        Again the number value is relative to the "duration" or "total". But this time a string sets whether the overlay runs ahead of or behind the moving edge of the progress.  

Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Dynamic-Information#custom-overlays
]]


-- Name Info
--[[
The trigger table is sent into this function as the only arg. This is mostly for internal WA reasons and is very unlikely to be useful to users. 
    function(trigger_table)

Expected return:
    return name (string)

The value given here can be accessed in text using %n

Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Dynamic-Information#name-info
]]

-- Icon Info
--[[
The trigger table is sent into this function as the only arg. This is mostly for internal WA reasons and is very unlikely to be useful to users. 
    function(trigger_table)

Expected return:
    • Path
        return path (string) 
        
    e.g. "Interface\\Icons\\Ability_ambush"

    • IconID
        return iconID (number)
    
    e.g. 132089

Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Dynamic-Information#icon-info
]]


-- Texture Info
--[[
The trigger table is sent into this function as the only arg. This is mostly for internal WA reasons and is very unlikely to be useful to users. 
    function(trigger_table)

Expected return:
    • Path
        return path (string) 
        
    e.g. "Interface\\Icons\\Ability_ambush""

    • IconID
        return iconID (number)
    
    e.g. 132089

(identical to Icon Info but for texture type Auras)

Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Dynamic-Information#texture-info
]]


-- Stack Info
--[[
The trigger table is sent into this function as the only arg. This is mostly for internal WA reasons and is very unlikely to be useful to users. 
    function(trigger_table)

Expected return:
    return value (number)

*There is a text frame called "stacks" (named because it was originally intended simply to display this value) that can show strings, this "Stacks" dynamic info must only be a number. 

Wiki: https://github.com/WeakAuras/WeakAuras2/wiki/Dynamic-Information#stack-info
]]









