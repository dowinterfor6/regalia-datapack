## end_portal - prevent/position
# found
execute if block ~ ~ ~ minecraft:bedrock run function regalia:logic/block/end_portal/prevent/align
execute if block ~ ~ ~ minecraft:bedrock run return 0
# catches
execute if block ~ ~ ~ minecraft:void_air run kill @s
# loop
tp @s ~ ~-1 ~
execute at @s run function regalia:logic/block/end_portal/prevent/position