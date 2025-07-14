## with_the_tides - call/p7
data modify storage regalia:data temp.name set value 'Waxing Gibbous'
scoreboard players set @s rga.p.with_the_tides.health 5
scoreboard players set @s rga.p.with_the_tides.scale 75
power grant @s regalia:power/with_the_tides/p7 regalia:with_the_tides
function regalia:logic/power/with_the_tides/message/grant