## food - logic/tick_meal
# timer
scoreboard players remove @a[scores={rga.food.meal.tick=1..}] rga.food.meal.tick 1
execute as @a[scores={rga.food.meal.tick=0}] at @s run function regalia:logic/food/logic/expire/meal
# calls
execute as @a[scores={rga.food.meal.tick=600}] run power revoke @s regalia:food/p/meal regalia:food/prevent