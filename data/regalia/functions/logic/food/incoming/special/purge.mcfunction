## food - incoming/special/purge
# calls
function regalia:logic/players/wipe/scores/food
function regalia:logic/food/logic/expire/_f
# visuals
effect give @s minecraft:nausea 7 0 true
playsound minecraft:entity.player.burp player @a ~ ~ ~ 1.0 0.6

# update ui
execute unless score @s rga.food.drink.tick matches 0 run effect clear @s regaliafood:drink
execute unless score @s rga.food.meal.tick matches 0 run effect clear @s regaliafood:meal
execute unless score @s rga.food.side.tick matches 0 run effect clear @s regaliafood:side
execute unless score @s rga.food.snack.tick matches 0 run effect clear @s regaliafood:snack