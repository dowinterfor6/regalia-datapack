## food - incoming/category/snack
scoreboard players set $calc.food.category rga.data 2
function regalia:logic/food/incoming/prompt
# checks
execute if score @s rga.food.snack.tick matches 600.. run scoreboard players set $dataA rga.data -1
execute if score @s rga.food.snack.health > $calc.food.health rga.data run scoreboard players set $dataA rga.data -1
execute if score @s rga.food.snack.regeneration > $calc.food.regeneration rga.data run scoreboard players set $dataA rga.data -1

execute if score $dataA rga.data matches -1 run function regalia:logic/food/incoming/abort
execute if score $dataA rga.data matches -1 run return 0

# transfer
scoreboard players operation @s rga.food.snack.tick = $calc.food.duration rga.data
scoreboard players operation @s rga.food.snack.health = $calc.food.health rga.data
scoreboard players operation @s rga.food.snack.regeneration = $calc.food.regeneration rga.data
# calls
power grant @s regalia:food/p/snack regalia:food/prevent
function regalia:logic/food/incoming/apply

# update ui
execute if score @s rga.food.snack.tick matches 1200 run effect give @s regaliafood:snack 60 0 true
execute if score @s rga.food.snack.tick matches 6000 run effect give @s regaliafood:snack 300 0 true
execute if score @s rga.food.snack.tick matches 12000 run effect give @s regaliafood:snack 600 0 true
execute if score @s rga.food.snack.tick matches 24000 run effect give @s regaliafood:snack 1200 0 true
execute if score @s rga.food.snack.tick matches 36000 run effect give @s regaliafood:snack 1800 0 true
execute if score @s rga.food.snack.tick matches 72000 run effect give @s regaliafood:snack 3600 0 true
execute if score @s rga.food.snack.tick matches 108000 run effect give @s regaliafood:snack 5400 0 true
execute if score @s rga.food.snack.tick matches 144000 run effect give @s regaliafood:snack 7200 0 true
