## core
# logic
execute as @a[scores={rga.login=1..}] at @s run function regalia:logic/login/_m
execute if entity @a[scores={rga.respawn=1..},limit=1] run function regalia:logic/death/_m
execute if entity @a[scores={rga.regeneration.tick=0..},limit=1] run function regalia:logic/players/regeneration/_m

# tick
scoreboard players add $time.tick rga.data 1
execute if score $time.tick rga.data matches 20.. run function regalia:logic/time/second

# blocks
execute if entity @e[type=minecraft:marker,tag=rga.b.end_portal,tag=rga.d.portal,limit=1] run function regalia:logic/block/end_portal/_m
execute if entity @e[type=minecraft:marker,tag=rga.b.ice,limit=1] run function regalia:logic/block/ice/_m
execute if entity @e[type=minecraft:marker,tag=rga.b.fading_lava,limit=1] run function regalia:logic/block/fading_lava/_m

# entites
execute if entity @e[type=minecraft:ender_dragon,limit=1] run function regalia:logic/entity/ender_dragon/_m
execute if entity @e[type=minecraft:wither,limit=1] run function regalia:logic/entity/wither/_m

# players
execute if entity @a[scores={rga.food.drink.tick=0..},limit=1] run function regalia:logic/food/logic/tick_drink
execute if entity @a[scores={rga.food.meal.tick=0..},limit=1] run function regalia:logic/food/logic/tick_meal
execute if entity @a[scores={rga.food.side.tick=0..},limit=1] run function regalia:logic/food/logic/tick_side
execute if entity @a[scores={rga.food.snack.tick=0..},limit=1] run function regalia:logic/food/logic/tick_snack

# triggers
execute as @a unless score @s refresh_config matches 0 at @s run function regalia:logic/trigger/refresh_config