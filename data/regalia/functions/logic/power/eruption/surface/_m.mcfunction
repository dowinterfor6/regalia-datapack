## eruption - surface/main
# checks
execute unless block ~ ~ ~ #regalia:power/eruption/check unless block ~ ~1.0 ~ #regalia:power/eruption/check run return 0
# prepare
scoreboard players set $dataA rga.data 0
summon minecraft:marker ~ ~ ~ {Tags:["rga.p.eruption","rga.d.surface"]}
# loop
execute as @e[type=minecraft:marker,tag=rga.p.eruption,tag=rga.d.surface,limit=1,sort=nearest] at @s run function regalia:logic/power/eruption/surface/loop
# determine
execute if score $dataA rga.data matches 2 at @e[type=minecraft:marker,tag=rga.p.eruption,tag=rga.d.surface,limit=1,sort=nearest] run tp @s ~ ~-1.0 ~
execute if score $dataA rga.data matches 3 at @e[type=minecraft:marker,tag=rga.p.eruption,tag=rga.d.surface,limit=1,sort=nearest] run tp @s ~ ~ ~
# reset
kill @e[type=minecraft:marker,tag=rga.p.eruption,tag=rga.d.surface,limit=1,sort=nearest]