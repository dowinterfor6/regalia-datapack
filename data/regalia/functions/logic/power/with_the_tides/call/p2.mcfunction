## with_the_tides - call/p2
data modify storage regalia:data temp.name set value 'Third Quarter'
scoreboard players set @s rga.p.with_the_tides.health 10
scoreboard players set @s rga.p.with_the_tides.scale 50
power grant @s regalia:power/with_the_tides/p2 regalia:with_the_tides
function regalia:logic/power/with_the_tides/message/grant