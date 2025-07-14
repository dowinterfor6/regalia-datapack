## fading_lava - p/setup
summon minecraft:marker ~ ~ ~ {Tags:["rga.b.fading_lava","rga.setup"]}
scoreboard players operation @e[type=minecraft:marker,tag=rga.b.fading_lava,tag=rga.setup,limit=1,sort=nearest] rga.time_tick = $fading_lava.duration rga.settings
setblock ~ ~ ~ minecraft:lava[level=0] destroy
# reset
tag @e[type=minecraft:marker,tag=rga.b.fading_lava,tag=rga.setup,limit=1,sort=nearest] remove rga.setup