## food - logic/tick_side
# timer
scoreboard players remove @a[scores={rga.food.side.tick=1..}] rga.food.side.tick 1
execute as @a[scores={rga.food.side.tick=0}] at @s run function regalia:logic/food/logic/expire/side
# calls
execute as @a[scores={rga.food.side.tick=600}] run power revoke @s regalia:food/p/side regalia:food/prevent