## food - logic/expire/drink
# scores
power revoke @s regalia:food/p/drink regalia:food/prevent
scoreboard players reset @s rga.food.drink.tick
scoreboard players reset @s rga.food.drink.health
scoreboard players reset @s rga.food.drink.regeneration
# finalize
function regalia:logic/food/logic/expire/_f