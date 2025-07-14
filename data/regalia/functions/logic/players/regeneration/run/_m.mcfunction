## regeneration - run/main
# reset
execute if score @s rga.regeneration.status matches 1 run scoreboard players operation @s rga.regeneration.tick = @s rga.config.regeneration.delay
execute if score @s rga.regeneration.status matches 0 run scoreboard players reset @s rga.regeneration.tick
# heal
execute if score @s rga.config.regeneration.amount matches 1..7 run function regalia:logic/players/regeneration/run/1_7
execute if score @s rga.config.regeneration.amount matches 8..14 run function regalia:logic/players/regeneration/run/8_14
execute if score @s rga.config.regeneration.amount matches 15.. run function regalia:logic/players/regeneration/run/15_21