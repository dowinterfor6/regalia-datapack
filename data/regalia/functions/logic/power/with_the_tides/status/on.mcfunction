## with_the_tides - status/on
# prepare
function regalia:logic/moon/stats
# resource
resource operation @s regalia:power/with_the_tides/ability_data_active = $moon.phase rga.data
resource change @s regalia:power/with_the_tides/ability_data_active 1
# power
power revokeall @s regalia:with_the_tides
execute if score $moon.phase rga.data matches 0 run function regalia:logic/power/with_the_tides/call/p0
execute if score $moon.phase rga.data matches 1 run function regalia:logic/power/with_the_tides/call/p1
execute if score $moon.phase rga.data matches 2 run function regalia:logic/power/with_the_tides/call/p2
execute if score $moon.phase rga.data matches 3 run function regalia:logic/power/with_the_tides/call/p3
execute if score $moon.phase rga.data matches 4 run function regalia:logic/power/with_the_tides/call/p4
execute if score $moon.phase rga.data matches 5 run function regalia:logic/power/with_the_tides/call/p5
execute if score $moon.phase rga.data matches 6 run function regalia:logic/power/with_the_tides/call/p6
execute if score $moon.phase rga.data matches 7 run function regalia:logic/power/with_the_tides/call/p7
# calls
function regalia:config/health/_m
function regalia:config/scale/_m