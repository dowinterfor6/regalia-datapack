## food - logic/expire/meal
# scores
power revoke @s regalia:food/p/meal regalia:food/prevent
scoreboard players reset @s rga.food.meal.tick
scoreboard players reset @s rga.food.meal.health
scoreboard players reset @s rga.food.meal.regeneration
# finalize
function regalia:logic/food/logic/expire/_f