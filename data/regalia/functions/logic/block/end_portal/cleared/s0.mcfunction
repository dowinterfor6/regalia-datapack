## end_portal - cleared/s0
# tick
scoreboard players add @s rga.time_tick 1
execute if score @s rga.time_tick matches 54.. run function regalia:logic/block/end_portal/cleared/switch

# ani - text
execute if score @s rga.time_tick matches 10 positioned ~ ~2.8 ~ run function regalia:logic/block/end_portal/cleared/a3
execute if score @s rga.time_tick matches 10..20 as @e[type=minecraft:text_display,tag=rga.b.end_portal,tag=rga.d.text_90,limit=1,sort=nearest] at @s run tp @s ~ ~0.05 ~
execute if score @s rga.time_tick matches 10..41 as @e[type=minecraft:text_display,tag=rga.b.end_portal,tag=rga.d.text_91,limit=1,sort=nearest] at @s run tp @s ~ ~0.05 ~
execute if score @s rga.time_tick matches 20 positioned ~ ~2.8 ~ run function regalia:logic/block/end_portal/cleared/a4
execute if score @s rga.time_tick matches 20..45 as @e[type=minecraft:text_display,tag=rga.b.end_portal,tag=rga.d.text_92,limit=1,sort=nearest] at @s run tp @s ~ ~0.05 ~
execute if score @s rga.time_tick matches 30 positioned ~ ~2.8 ~ run function regalia:logic/block/end_portal/cleared/a5
execute if score @s rga.time_tick matches 30..49 as @e[type=minecraft:text_display,tag=rga.b.end_portal,tag=rga.d.text_93,limit=1,sort=nearest] at @s run tp @s ~ ~0.05 ~
execute if score @s rga.time_tick matches 40 positioned ~ ~2.8 ~ run function regalia:logic/block/end_portal/cleared/a6
execute if score @s rga.time_tick matches 40..53 as @e[type=minecraft:text_display,tag=rga.b.end_portal,tag=rga.d.text_94,limit=1,sort=nearest] at @s run tp @s ~ ~0.05 ~