## with_the_tides - call/p4
data modify storage regalia:data temp.name set value 'New'
scoreboard players reset @s rga.p.with_the_tides.health
scoreboard players set @s rga.p.with_the_tides.scale -50
power grant @s regalia:power/with_the_tides/p4 regalia:with_the_tides
function regalia:logic/power/with_the_tides/message/grant