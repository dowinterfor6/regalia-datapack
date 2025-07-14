## evaporation - effect
# prepare
summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:stone",Count:1b},Tags:["rga.p.evaporation","rga.d.random"],shadow_radius:0.0f,shadow_strength:0.0f,billboard:"fixed",view_range:0.0f,brightness:{block:0,sky:0}}
# random
loot replace entity @e[type=minecraft:item_display,tag=rga.p.evaporation,tag=rga.d.random,limit=1,sort=nearest] container.0 loot regalia:power/evaporation/effect
execute store result score $dataA rga.data run data get entity @e[type=minecraft:item_display,tag=rga.p.evaporation,tag=rga.d.random,limit=1,sort=nearest] item.tag.value
# reset
kill @e[type=minecraft:item_display,tag=rga.p.evaporation,tag=rga.d.random,limit=1,sort=nearest]
# call
execute if score $dataA rga.data matches 1 run effect give @s minecraft:levitation 1 2 true
execute if score $dataA rga.data matches 2 run effect give @s minecraft:levitation 2 1 true
execute if score $dataA rga.data matches 3 run effect give @s minecraft:levitation 3 0 true