## food - incoming/category/drink
# prepare
scoreboard players set $calc.food.category rga.data 1
function regalia:logic/food/incoming/prompt
# checks
execute if score @s rga.food.drink.tick matches 600.. run scoreboard players set $dataA rga.data -1
execute if score @s rga.food.drink.health > $calc.food.health rga.data run scoreboard players set $dataA rga.data -1
execute if score @s rga.food.drink.regeneration > $calc.food.regeneration rga.data run scoreboard players set $dataA rga.data -1

execute if score $dataA rga.data matches -1 run function regalia:logic/food/incoming/abort
execute if score $dataA rga.data matches -1 run return 0

# transfer
scoreboard players operation @s rga.food.drink.tick = $calc.food.duration rga.data
scoreboard players operation @s rga.food.drink.health = $calc.food.health rga.data
scoreboard players operation @s rga.food.drink.regeneration = $calc.food.regeneration rga.data
# calls
power grant @s regalia:food/p/drink regalia:food/prevent
function regalia:logic/food/incoming/apply