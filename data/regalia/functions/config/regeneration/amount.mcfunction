## regeneration - amount
# base
scoreboard players set @s rga.config.regeneration.amount 1

# multiplier?
scoreboard players set $dataB rga.data 0
execute if score @s rga.food.drink.regeneration matches 1.. run scoreboard players operation $dataB rga.data += @s rga.food.drink.regeneration
execute if score @s rga.food.snack.regeneration matches 1.. run scoreboard players operation $dataB rga.data += @s rga.food.snack.regeneration
execute if score @s rga.food.side.regeneration matches 1.. run scoreboard players operation $dataB rga.data += @s rga.food.side.regeneration
execute if score @s rga.food.meal.regeneration matches 1.. run scoreboard players operation $dataB rga.data += @s rga.food.meal.regeneration

scoreboard players operation $dataA rga.data = @s rga.config.regeneration.amount
execute unless score $dataB rga.data matches 0 run function regalia:config/_g/multiplier_10
scoreboard players operation @s rga.config.regeneration.amount = $dataA rga.data

# checks
execute if score @s rga.config.regeneration.amount matches ..-1 run scoreboard players set @s rga.config.regeneration.amount 0
# debug
execute if score $debug rga.settings matches 1 run tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"CONFIG/REGEN: Setting ","color":"gray"},{"text":"Target [","color":"white"},{"selector":"@s","color":"aqua"},{"text":"]","color":"white"},{"text":" to ","color":"gray"},{"text":"Amount [","color":"white"},{"score":{"objective":"rga.config.regeneration.amount","name":"@s"},"color":"aqua"},{"text":"]","color":"white"}]