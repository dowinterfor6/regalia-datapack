## ice - melt/c/black
# evaporate
execute if block ~ ~ ~ biomeswevegone:black_ice run function regalia:logic/block/ice/melt/evaporate
execute unless block ~ ~ ~ #regalia:_g/black_ice run return 1
# weaken
execute if block ~ ~ ~ biomeswevegone:packed_black_ice run setblock ~ ~ ~ biomeswevegone:black_ice replace
function regalia:logic/block/ice/melt/weaken