## end_portal - intro/main
# tick
scoreboard players add @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0}] rga.time_tick 1
execute as @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=83}] run function regalia:logic/block/end_portal/intro/switch

# ani - text
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=25}] run function regalia:logic/block/end_portal/intro/a1
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=25..60}] as @e[type=minecraft:text_display,tag=rga.b.end_portal,tag=rga.d.text_1,limit=1,sort=nearest] at @s run tp @s ~ ~0.05 ~
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=35}] run function regalia:logic/block/end_portal/intro/a2
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=35..64}] as @e[type=minecraft:text_display,tag=rga.b.end_portal,tag=rga.d.text_2,limit=1,sort=nearest] at @s run tp @s ~ ~0.05 ~
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=45}] run function regalia:logic/block/end_portal/intro/a3
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=45..68}] as @e[type=minecraft:text_display,tag=rga.b.end_portal,tag=rga.d.text_3,limit=1,sort=nearest] at @s run tp @s ~ ~0.05 ~
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=55}] run function regalia:logic/block/end_portal/intro/a4
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=55..72}] as @e[type=minecraft:text_display,tag=rga.b.end_portal,tag=rga.d.text_4,limit=1,sort=nearest] at @s run tp @s ~ ~0.05 ~

# ani - portal
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=50}] positioned ~1 ~ ~-1 run function regalia:logic/block/end_portal/intro/p0
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=54}] positioned ~-1 ~ ~ run function regalia:logic/block/end_portal/intro/p0
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=58}] positioned ~ ~ ~1 run function regalia:logic/block/end_portal/intro/p0
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=62}] positioned ~-1 ~ ~1 run function regalia:logic/block/end_portal/intro/p0
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=66}] positioned ~1 ~ ~1 run function regalia:logic/block/end_portal/intro/p0
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=70}] positioned ~ ~ ~-1 run function regalia:logic/block/end_portal/intro/p0
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=74}] positioned ~ ~ ~ run function regalia:logic/block/end_portal/intro/p0
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=78}] positioned ~1 ~ ~ run function regalia:logic/block/end_portal/intro/p0
execute at @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0,rga.time_tick=82}] positioned ~-1 ~ ~-1 run function regalia:logic/block/end_portal/intro/p0