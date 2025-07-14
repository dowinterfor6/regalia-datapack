## eruption - trigger/t2
# logic
execute align xyz positioned ~0.5 ~0.1 ~0.5 run function regalia:logic/power/eruption/surface/_m
execute if score $dataA rga.data matches 3 run scoreboard players set @s rga.p.eruption.type 1
# visuals
execute at @s run playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 2.0 0.6
execute at @s positioned ~ ~0.05 ~ run particle minecraft:lava ~ ~ ~ 0.2 0 0.2 0 4
# finalize
execute at @s run function regalia:logic/power/eruption/trigger/_f