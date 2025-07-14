## end_portal - main
# stages - overworld
execute if entity @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=0},limit=1] run function regalia:logic/block/end_portal/intro/_m
# stages - end
execute as @e[type=minecraft:marker,tag=rga.b.end_portal,scores={rga.stage=-1}] at @s run function regalia:logic/block/end_portal/prevent/_m