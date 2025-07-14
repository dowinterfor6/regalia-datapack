## eruption - trigger/t1
# visuals
playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1.5 0.6
execute positioned ~ ~0.05 ~ run particle minecraft:poof ~ ~ ~ 0.2 0 0.2 0 3
execute positioned ~ ~0.05 ~ run particle minecraft:lava ~ ~ ~ 0.2 0 0.2 0 2
# finalize
function regalia:logic/power/eruption/trigger/_f