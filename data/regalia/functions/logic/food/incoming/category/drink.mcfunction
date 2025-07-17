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
1 5 10 20 30 60 90 120
# update ui
execute if score @s rga.food.drink.tick matches 1200 run effect give @s regaliafood:drink 60 0 true
execute if score @s rga.food.drink.tick matches 6000 run effect give @s regaliafood:drink 300 0 true
execute if score @s rga.food.drink.tick matches 12000 run effect give @s regaliafood:drink 600 0 true
execute if score @s rga.food.drink.tick matches 24000 run effect give @s regaliafood:drink 1200 0 true
execute if score @s rga.food.drink.tick matches 36000 run effect give @s regaliafood:drink 1800 0 true
execute if score @s rga.food.drink.tick matches 72000 run effect give @s regaliafood:drink 3600 0 true
execute if score @s rga.food.drink.tick matches 108000 run effect give @s regaliafood:drink 5400 0 true
execute if score @s rga.food.drink.tick matches 144000 run effect give @s regaliafood:drink 7200 0 true
