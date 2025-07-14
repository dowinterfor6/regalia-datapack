## sprint - disable
# checks
execute if score @s rga.food.drink.tick matches 0.. run return 0
execute if score @s rga.food.meal.tick matches 0.. run return 0
execute if score @s rga.food.side.tick matches 0.. run return 0
execute if score @s rga.food.snack.tick matches 0.. run return 0
# run
resource set @s regalia:human/sprinting_status 0
execute if score $debug rga.settings matches 1 run tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"CONFIG/SPRINT: Setting ","color":"gray"},{"text":"Target [","color":"white"},{"selector":"@s","color":"aqua"},{"text":"]","color":"white"},{"text":" to ","color":"gray"},{"text":"Status [","color":"white"},{"text":"disable","color":"aqua"},{"text":"]","color":"white"}]