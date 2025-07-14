## food - incoming/category/side
scoreboard players set $calc.food.category rga.data 3
function regalia:logic/food/incoming/prompt
# checks
execute if score @s rga.food.side.tick matches 600.. run scoreboard players set $dataA rga.data -1
execute if score @s rga.food.side.health > $calc.food.health rga.data run scoreboard players set $dataA rga.data -1
execute if score @s rga.food.side.regeneration > $calc.food.regeneration rga.data run scoreboard players set $dataA rga.data -1

execute if score $dataA rga.data matches -1 run function regalia:logic/food/incoming/abort
execute if score $dataA rga.data matches -1 run return 0

# transfer
scoreboard players operation @s rga.food.side.tick = $calc.food.duration rga.data
scoreboard players operation @s rga.food.side.health = $calc.food.health rga.data
scoreboard players operation @s rga.food.side.regeneration = $calc.food.regeneration rga.data
# calls
power grant @s regalia:food/p/side regalia:food/prevent
function regalia:logic/food/incoming/apply