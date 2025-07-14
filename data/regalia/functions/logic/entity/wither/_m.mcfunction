## wither - main
# prompt
execute as @e[type=minecraft:wither,tag=!rga.updated] at @s run function regalia:logic/entity/wither/_p/setup

# illegal?
execute as @e[type=minecraft:wither] store result score @s rga.coordY run data get entity @s Pos[1]
execute as @e[type=minecraft:wither] if score @s rga.coordY < $wither.illegal.height_min rga.settings run scoreboard players set @s rga.dataA 2
execute as @e[type=minecraft:wither] if score @s rga.coordY > $wither.illegal.height_max rga.settings run scoreboard players set @s rga.dataA 2
execute as @e[type=minecraft:wither] at @s if predicate regalia:wither/illegal_area run scoreboard players set @s rga.dataA 2
execute as @e[type=minecraft:wither,scores={rga.dataA=2}] at @s run function regalia:logic/entity/wither/illegal/_m