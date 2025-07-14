## ice - melt/c/borealis
# evaporate
execute if block ~ ~ ~ biomeswevegone:borealis_ice run function regalia:logic/block/ice/melt/evaporate
execute unless block ~ ~ ~ #regalia:_g/borealis_ice run return 1
# weaken
execute if block ~ ~ ~ biomeswevegone:packed_borealis_ice run setblock ~ ~ ~ biomeswevegone:borealis_ice replace
function regalia:logic/block/ice/melt/weaken