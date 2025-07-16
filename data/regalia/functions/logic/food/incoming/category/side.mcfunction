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

# update ui
execute if score @s rga.food.side.tick matches 1200 run effect give @s regaliafood:side 60 0 true
execute if score @s rga.food.side.tick matches 6000 run effect give @s regaliafood:side 300 0 true
execute if score @s rga.food.side.tick matches 12000 run effect give @s regaliafood:side 600 0 true
execute if score @s rga.food.side.tick matches 24000 run effect give @s regaliafood:side 1200 0 true
execute if score @s rga.food.side.tick matches 36000 run effect give @s regaliafood:side 1800 0 true
execute if score @s rga.food.side.tick matches 72000 run effect give @s regaliafood:side 3600 0 true
execute if score @s rga.food.side.tick matches 108000 run effect give @s regaliafood:side 5400 0 true
execute if score @s rga.food.side.tick matches 144000 run effect give @s regaliafood:side 7200 0 true
