## food - logic/expire/side
# scores
power revoke @s regalia:food/p/side regalia:food/prevent
scoreboard players reset @s rga.food.side.tick
scoreboard players reset @s rga.food.side.health
scoreboard players reset @s rga.food.side.regeneration
# finalize
function regalia:logic/food/logic/expire/_f