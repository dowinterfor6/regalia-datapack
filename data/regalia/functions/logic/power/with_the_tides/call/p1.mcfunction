## with_the_tides - call/p1
data modify storage regalia:data temp.name set value 'Waning Gibbous'
scoreboard players set @s rga.p.with_the_tides.health 5
scoreboard players set @s rga.p.with_the_tides.scale 75
power grant @s regalia:power/with_the_tides/p1 regalia:with_the_tides
function regalia:logic/power/with_the_tides/message/grant