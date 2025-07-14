## ice - melt/c/vanilla
# evaporate
execute if block ~ ~ ~ minecraft:ice run function regalia:logic/block/ice/melt/evaporate
execute if block ~ ~ ~ minecraft:frosted_ice run function regalia:logic/block/ice/melt/evaporate
execute unless block ~ ~ ~ #regalia:_g/vanilla_ice run return 1
# weaken
execute if block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:ice replace
execute if block ~ ~ ~ minecraft:blue_ice run setblock ~ ~ ~ minecraft:packed_ice replace
function regalia:logic/block/ice/melt/weaken