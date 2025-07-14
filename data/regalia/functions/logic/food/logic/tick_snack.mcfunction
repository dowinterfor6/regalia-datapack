## food - logic/tick_snack
# timer
scoreboard players remove @a[scores={rga.food.snack.tick=1..}] rga.food.snack.tick 1
execute as @a[scores={rga.food.snack.tick=0}] at @s run function regalia:logic/food/logic/expire/snack
# calls
execute as @a[scores={rga.food.snack.tick=600}] run power revoke @s regalia:food/p/snack regalia:food/prevent