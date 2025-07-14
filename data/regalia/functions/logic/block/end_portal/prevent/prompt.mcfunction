## end_portal - prevent/prompt
# data
data merge entity @s {Tags:["rga.b.end_portal","rga.d.portal"]}
# scores
scoreboard players set @s rga.stage -1
scoreboard players set $ender_dragon.cleared rga.data 1
# calls
function regalia:logic/block/end_portal/prevent/position