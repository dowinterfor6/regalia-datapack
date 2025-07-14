## keep_inventory - enable
# checks
scoreboard players set $dataA rga.data 0
execute store result score $mathA rga.data run gamerule keepInventory
execute if score $mathA rga.data matches 1 run scoreboard players add $dataA rga.data 1
execute at @s unless dimension minecraft:the_end run scoreboard players add $dataA rga.data 1
# fail
execute unless score $dataA rga.data matches 0 run function regalia:config/keep_inventory/fail
execute unless score $dataA rga.data matches 0 run return 0
# apply
scoreboard players set @s rga.config.keep_inventory 1
#power grant @s regalia:config/keep_inventory regalia:config/keep_inventory
execute if score $debug rga.settings matches 1 run tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"CONFIG/KEEPINV: Setting ","color":"gray"},{"text":"Target [","color":"white"},{"selector":"@s","color":"aqua"},{"text":"]","color":"white"},{"text":" to ","color":"gray"},{"text":"State [","color":"white"},{"text":"enabled","color":"aqua"},{"text":"]","color":"white"}]