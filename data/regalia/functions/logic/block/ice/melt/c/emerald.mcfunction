## ice - melt/c/emerald
# evaporate
execute if block ~ ~ ~ betterend:emerald_ice run function regalia:logic/block/ice/melt/evaporate
execute unless block ~ ~ ~ #regalia:_g/emerald_ice run return 1
# weaken
execute if block ~ ~ ~ betterend:dense_emerald_ice run setblock ~ ~ ~ betterend:emerald_ice replace
execute if block ~ ~ ~ betterend:ancient_emerald_ice run setblock ~ ~ ~ betterend:dense_emerald_ice replace
function regalia:logic/block/ice/melt/weaken