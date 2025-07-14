## wither - illegal/main
# tick
scoreboard players add @s rga.time_tick 1
execute if score @s rga.time_tick >= $wither.illegal.expire_delay rga.settings run function regalia:logic/entity/wither/_p/deconstruct
# visuals
execute positioned ~ ~2.0 ~ run particle minecraft:enchanted_hit ~ ~ ~ 1.8 1.8 1.8 0 3
# abort?
execute if score @s rga.coordY <= $wither.illegal.height_max rga.settings run function regalia:logic/entity/wither/illegal/abort
execute unless predicate regalia:wither/illegal_area run function regalia:logic/entity/wither/illegal/abort