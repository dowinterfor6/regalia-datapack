## ice - main
# debug
execute if score $debug rga.settings matches 1 at @e[type=minecraft:marker,tag=rga.b.ice] run particle end_rod ~ ~1 ~ 0 0 0 0 1 normal @a[tag=rga.admin]
# process
execute as @e[type=minecraft:marker,tag=rga.b.ice] at @s unless block ~ ~ ~ #regalia:ice/nether_melt run function regalia:logic/block/ice/despawn/_m
execute as @e[type=minecraft:marker,tag=rga.b.ice,scores={rga.time_tick=1..}] at @s if block ~ ~ ~ #regalia:ice/nether_melt run function regalia:logic/block/ice/despawn/abort
# tick
scoreboard players remove $ice.tick rga.data 1
execute if score $ice.tick rga.data matches ..0 run function regalia:logic/block/ice/tick