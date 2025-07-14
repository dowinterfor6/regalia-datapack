## food - incoming/abort
# debug
execute if score $calc.food.category rga.data matches 1 run scoreboard players operation $mathA rga.data = @s rga.food.drink.health
execute if score $calc.food.category rga.data matches 1 run scoreboard players operation $mathB rga.data = @s rga.food.drink.regeneration
execute if score $calc.food.category rga.data matches 1 run scoreboard players operation $mathC rga.data = @s rga.food.drink.tick

execute if score $calc.food.category rga.data matches 2 run scoreboard players operation $mathA rga.data = @s rga.food.snack.health
execute if score $calc.food.category rga.data matches 2 run scoreboard players operation $mathB rga.data = @s rga.food.snack.regeneration
execute if score $calc.food.category rga.data matches 2 run scoreboard players operation $mathC rga.data = @s rga.food.snack.tick

execute if score $calc.food.category rga.data matches 3 run scoreboard players operation $mathA rga.data = @s rga.food.side.health
execute if score $calc.food.category rga.data matches 3 run scoreboard players operation $mathB rga.data = @s rga.food.side.regeneration
execute if score $calc.food.category rga.data matches 3 run scoreboard players operation $mathC rga.data = @s rga.food.side.tick

execute if score $calc.food.category rga.data matches 4 run scoreboard players operation $mathA rga.data = @s rga.food.meal.health
execute if score $calc.food.category rga.data matches 4 run scoreboard players operation $mathB rga.data = @s rga.food.meal.regeneration
execute if score $calc.food.category rga.data matches 4 run scoreboard players operation $mathC rga.data = @s rga.food.meal.tick

execute if score $debug rga.settings matches 1 run tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"FOOD: Aborting ","color":"gray"},{"text":"Target [","color":"white"},{"selector":"@s","color":"aqua"},{"text":"]","color":"white"},{"text":" while ","color":"gray"},{"text":"Having [","color":"white"},{"score":{"objective":"rga.data","name":"$calc.food.category"},"color":"aqua"},{"text":"c ","color":"green"},{"score":{"objective":"rga.data","name":"$mathA"},"color":"aqua"},{"text":"h ","color":"green"},{"score":{"objective":"rga.data","name":"$mathB"},"color":"aqua"},{"text":"r ","color":"green"},{"score":{"objective":"rga.data","name":"$mathC"},"color":"aqua"},{"text":"d ","color":"green"},{"score":{"objective":"rga.data","name":"$calc.food.special"},"color":"aqua"},{"text":"s","color":"green"},{"text":"]","color":"white"}]

# reset
function regalia:logic/food/incoming/reset