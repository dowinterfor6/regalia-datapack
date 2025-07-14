## food - logic/tick_drink
# timer
scoreboard players remove @a[scores={rga.food.drink.tick=1..}] rga.food.drink.tick 1
execute as @a[scores={rga.food.drink.tick=0}] at @s run function regalia:logic/food/logic/expire/drink
# calls
execute as @a[scores={rga.food.drink.tick=600}] run power revoke @s regalia:food/p/drink regalia:food/prevent