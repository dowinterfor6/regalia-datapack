## health - main
# base
scoreboard players set @s rga.config.health 20
scoreboard players operation @s rga.config.health = @s rga.config.stature.health

# addition?
execute if score @s rga.food.drink.health matches 1.. run scoreboard players operation @s rga.config.health += @s rga.food.drink.health
execute if score @s rga.food.snack.health matches 1.. run scoreboard players operation @s rga.config.health += @s rga.food.snack.health
execute if score @s rga.food.side.health matches 1.. run scoreboard players operation @s rga.config.health += @s rga.food.side.health
execute if score @s rga.food.meal.health matches 1.. run scoreboard players operation @s rga.config.health += @s rga.food.meal.health

# multiplier?
scoreboard players reset $dataB rga.data
scoreboard players operation $dataB rga.data += @s rga.p.with_the_tides.health

scoreboard players operation $dataA rga.data = @s rga.config.health
execute unless score $dataB rga.data matches 0 run function regalia:config/_g/multiplier_10
scoreboard players operation @s rga.config.health = $dataA rga.data
# checks
execute if score @s rga.config.health matches ..0 run scoreboard players set @s rga.config.health 1
# debug
execute if score $debug rga.settings matches 1 run tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"CONFIG/HEALTH: Setting ","color":"gray"},{"text":"Target [","color":"white"},{"selector":"@s","color":"aqua"},{"text":"]","color":"white"},{"text":" to ","color":"gray"},{"text":"Health [","color":"white"},{"score":{"objective":"rga.config.health","name":"@s"},"color":"aqua"},{"text":"]","color":"white"}]
# set
power revokeall @s regalia:config_health
execute if score @s rga.config.health matches 1..10 run function regalia:config/health/1_10
execute if score @s rga.config.health matches 11..20 run function regalia:config/health/11_20
execute if score @s rga.config.health matches 21..30 run function regalia:config/health/21_30
execute if score @s rga.config.health matches 31..40 run function regalia:config/health/31_40
execute if score @s rga.config.health matches 41.. run function regalia:config/health/41_50