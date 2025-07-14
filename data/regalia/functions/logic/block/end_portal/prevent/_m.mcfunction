## end_portal - prevent/main
# cleared
execute if score $ender_dragon.cleared rga.data matches 1 if block ~ ~ ~2.0 #regalia:_g/end_portal positioned ~ ~3.0 ~ run function regalia:logic/block/end_portal/cleared/a1
execute if score $ender_dragon.cleared rga.data matches 2 positioned ~ ~3.0 ~ unless block ~ ~ ~ minecraft:dragon_egg run function regalia:logic/block/end_portal/cleared/a2
execute if score $ender_dragon.cleared rga.data matches 3 run function regalia:logic/block/end_portal/cleared/s0

# prevent
fill ~3 ~ ~3 ~-3 ~ ~-3 minecraft:air replace #regalia:_g/end_portal