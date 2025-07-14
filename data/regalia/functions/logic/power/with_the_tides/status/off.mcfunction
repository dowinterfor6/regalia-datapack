## with_the_tides - status/off
# message
execute store result score $mathA rga.data run resource get @s regalia:power/with_the_tides/ability_data_active
execute if score $mathA rga.data matches 1.. run function regalia:logic/power/with_the_tides/message/revoke
# logic
scoreboard players reset @s rga.p.with_the_tides.health
scoreboard players reset @s rga.p.with_the_tides.scale
resource set @s regalia:power/with_the_tides/ability_data_active 0
power revokeall @s regalia:with_the_tides
# calls
function regalia:config/health/_m
function regalia:config/scale/_m