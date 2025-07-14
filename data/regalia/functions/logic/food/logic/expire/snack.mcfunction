## food - logic/expire/snack
# scores
power revoke @s regalia:food/p/snack regalia:food/prevent
scoreboard players reset @s rga.food.snack.tick
scoreboard players reset @s rga.food.snack.health
scoreboard players reset @s rga.food.snack.regeneration
# finalize
function regalia:logic/food/logic/expire/_f