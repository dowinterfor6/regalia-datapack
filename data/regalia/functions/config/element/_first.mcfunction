## config - element/first
# visuals
tellraw @s [{"text":" [> ","color":"dark_aqua"},{"text":"You have been attuned to the","color":"white"},{"text":" [","color":"gold"},{"nbt":"temp.name","storage":"regalia:data","interpret":false,"color":"yellow"},{"text":"]","color":"gold"},{"text":".","color":"white"}]
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1.0 1.2
# calls
function regalia:config/health/_m
function regalia:logic/origin/attune/set
function regalia:logic/players/wipe/generic/unlocks