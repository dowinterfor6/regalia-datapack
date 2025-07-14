## end_portal - cleared/s0
# tick
execute if score @s rga.time_tick matches ..75 run scoreboard players add @s rga.time_tick 1
execute if score @s rga.time_tick matches 76.. unless block ~ ~2.0 ~ minecraft:dragon_egg run function regalia:logic/block/end_portal/cleared/advance

# ani - text
execute if score @s rga.time_tick matches 30 positioned ~ ~2.8 ~ run function regalia:logic/block/end_portal/cleared/a1
execute if score @s rga.time_tick matches 30..75 as @e[type=minecraft:text_display,tag=rga.b.end_portal,tag=rga.d.text_90,limit=1,sort=nearest] at @s run tp @s ~ ~0.05 ~