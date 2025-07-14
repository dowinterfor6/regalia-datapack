## fading_lava - main
# tick
execute as @e[type=minecraft:marker,tag=rga.b.fading_lava] at @s unless block ~ ~ ~ minecraft:lava[level=0] run function regalia:logic/block/fading_lava/_p/despawn
scoreboard players remove @e[type=minecraft:marker,tag=rga.b.fading_lava] rga.time_tick 1
execute as @e[type=minecraft:marker,tag=rga.b.fading_lava,scores={rga.time_tick=..0}] at @s run function regalia:logic/block/fading_lava/_p/despawn