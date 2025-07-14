## ender_dragon - dying
# calls
execute unless score $ender_dragon.cleared rga.data matches 1.. in minecraft:the_end positioned 0 200 0 summon minecraft:marker run function regalia:logic/block/end_portal/prevent/prompt
# reset
tag @s add rga.d.spoke