## end_portal - fill/summon
# checks
execute unless block ~1.0 ~ ~ #regalia:_g/end_portal run return 0
execute unless block ~-1.0 ~ ~ #regalia:_g/end_portal run return 0
execute unless block ~ ~ ~1.0 #regalia:_g/end_portal run return 0
execute unless block ~ ~ ~-1.0 #regalia:_g/end_portal run return 0
execute if entity @e[type=minecraft:marker,tag=rga.b.end_portal,distance=..0.05] run return 0
# prepare
fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:air replace #regalia:_g/end_portal
particle minecraft:squid_ink ~ ~ ~ 0.75 0 0.75 0 30
execute summon minecraft:marker run function regalia:logic/block/end_portal/fill/prompt