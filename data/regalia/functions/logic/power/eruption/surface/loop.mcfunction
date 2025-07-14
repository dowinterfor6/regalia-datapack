## eruption - surface/loop
# advance
execute at @s run tp @s ~ ~1.0 ~
# checks
execute at @s unless block ~ ~ ~ #regalia:power/eruption/check run scoreboard players set $dataA rga.data 1
execute if score $dataA rga.data matches 1 at @s unless block ~ ~ ~ #regalia:power/eruption/check if block ~ ~ ~ #regalia:_g/occupiable run scoreboard players set $dataA rga.data 2
execute if score $dataA rga.data matches 2 at @s positioned ~ ~1.0 ~ unless block ~ ~ ~ #regalia:power/eruption/check if block ~ ~ ~ #regalia:_g/occupiable run scoreboard players set $dataA rga.data 3
# loop?
#execute if score $debug rga.settings matches 1 unless score $dataA rga.data matches 0 at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:1b,Invulnerable:1b}
execute if score $dataA rga.data matches 0 run function regalia:logic/power/eruption/surface/loop