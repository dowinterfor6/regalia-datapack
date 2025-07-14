## evaporation - delay
# prepare
summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:stone",Count:1b},Tags:["rga.p.evaporation","rga.d.random"],shadow_radius:0.0f,shadow_strength:0.0f,billboard:"fixed",view_range:0.0f,brightness:{block:0,sky:0}}
# random
loot replace entity @e[type=minecraft:item_display,tag=rga.p.evaporation,tag=rga.d.random,limit=1,sort=nearest] container.0 loot regalia:power/evaporation/delay
execute store result score @s rga.p.evaporation.tick run data get entity @e[type=minecraft:item_display,tag=rga.p.evaporation,tag=rga.d.random,limit=1,sort=nearest] item.tag.value
# reset
kill @e[type=minecraft:item_display,tag=rga.p.evaporation,tag=rga.d.random,limit=1,sort=nearest]