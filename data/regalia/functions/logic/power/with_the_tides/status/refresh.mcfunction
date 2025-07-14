## with_the_tides - status/refresh
# prepare
scoreboard players set $mathA rga.data 0
execute store result score $mathA rga.data run resource get @s regalia:power/with_the_tides/ability_data_active
# redirect
execute if score $mathA rga.data matches 0 run function regalia:logic/power/with_the_tides/status/off
execute if score $mathA rga.data matches 1.. run function regalia:logic/power/with_the_tides/status/on