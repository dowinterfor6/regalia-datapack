## wither - p/setup
# reset
tag @s add rga.updated
# checks
execute store result score @s rga.coordY run data get entity @s Pos[1]
execute if score @s rga.coordY < $wither.illegal.height_min rga.settings run scoreboard players set @s rga.dataA 1
execute if score @s rga.coordY > $wither.illegal.height_max rga.settings run scoreboard players set @s rga.dataA 1
execute if predicate regalia:wither/illegal_area run function regalia:logic/entity/wither/_p/deconstruct
execute if score @s rga.dataA matches 1.. run return 1
# advancement
advancement grant @a[distance=..25.0] only minecraft:nether/summon_wither