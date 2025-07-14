## death - respawn_end
# checks
execute if data entity @s {SpawnDimension:"minecraft:the_end"} run return 0
# run
execute in minecraft:the_end run tp @s 100.5 49.1 0.5 90 0
execute at @s run playsound minecraft:item.trident.hit_ground player @s ~ ~ ~ 1.0 0.5
tellraw @s [{"text":" ...Something unnatural keeps you bound here...","color":"dark_purple","italic":true}]