## ice - tick
# reset
scoreboard players operation $ice.tick rga.data = $ice.tick_rate rga.settings
# melt?
execute as @e[type=minecraft:marker,tag=rga.b.ice] store result score @s rga.mathB if predicate regalia:ice/melt
execute as @e[type=minecraft:marker,tag=rga.b.ice,scores={rga.mathB=1}] at @s run function regalia:logic/block/ice/melt/_m
scoreboard players reset @e[type=minecraft:marker,tag=rga.b.ice] rga.mathB