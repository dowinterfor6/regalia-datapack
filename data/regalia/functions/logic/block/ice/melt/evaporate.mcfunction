## ice - melt/evaporate
# blocks
setblock ~ ~ ~ minecraft:air replace
# visuals
particle minecraft:poof ~ ~ ~ 0.2 0.2 0.2 0 5
particle minecraft:smoke ~ ~ ~ 0.24 0.24 0.24 0 7
playsound minecraft:entity.generic.extinguish_fire block @a ~ ~ ~ 1.0 1.5
# reset
kill @s