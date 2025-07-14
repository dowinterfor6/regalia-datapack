## regeneration - delay
# base
scoreboard players set @s rga.config.regeneration.delay 200

# multiplier?
scoreboard players set $dataB rga.data 0
scoreboard players operation $dataB rga.data += @s rga.p.fueled.health
scoreboard players operation $dataB rga.data += @s rga.p.moisturized.health

scoreboard players operation $dataA rga.data = @s rga.config.regeneration.delay
execute unless score $dataB rga.data matches 0 run function regalia:config/_g/multiplier_100
scoreboard players operation @s rga.config.regeneration.delay = $dataA rga.data

# checks
execute if score @s rga.config.regeneration.delay matches 0 run scoreboard players set @s rga.config.regeneration.delay -1
execute if score @s rga.config.regeneration.delay matches ..-2 run scoreboard players set @s rga.config.regeneration.delay -1
# debug
execute if score $debug rga.settings matches 1 run tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"CONFIG/REGEN: Setting ","color":"gray"},{"text":"Target [","color":"white"},{"selector":"@s","color":"aqua"},{"text":"]","color":"white"},{"text":" to ","color":"gray"},{"text":"Delay [","color":"white"},{"score":{"objective":"rga.config.regeneration.delay","name":"@s"},"color":"aqua"},{"text":"]","color":"white"}]
# set
scoreboard players operation @s rga.regeneration.tick = @s rga.config.regeneration.delay