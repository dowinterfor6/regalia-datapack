## scale - body/main
# base
scoreboard players set @s rga.config.scale.body 100

# stature
execute if score @s rga.config.stature.id matches 0 run scoreboard players set @s rga.config.scale.body 25
execute if score @s rga.config.stature.id matches 1 run scoreboard players set @s rga.config.scale.body 50
execute if score @s rga.config.stature.id matches 2 run scoreboard players set @s rga.config.scale.body 65
execute if score @s rga.config.stature.id matches 3 run scoreboard players set @s rga.config.scale.body 100
execute if score @s rga.config.stature.id matches 4 run scoreboard players set @s rga.config.scale.body 125
execute if score @s rga.config.stature.id matches 5 run scoreboard players set @s rga.config.scale.body 150
execute if score @s rga.config.stature.id matches 6 run scoreboard players set @s rga.config.scale.body 200

# multiplier?
scoreboard players reset $dataB rga.data
scoreboard players operation $dataB rga.data += @s rga.p.with_the_tides.scale

scoreboard players operation $dataA rga.data = @s rga.config.scale.body
execute unless score $dataB rga.data matches 0 run function regalia:config/_g/multiplier_100
scoreboard players operation @s rga.config.scale.body = $dataA rga.data

# checks
execute if score @s rga.config.scale.body matches ..24 run scoreboard players set @s rga.config.scale.body 25
# debug
execute if score $debug rga.settings matches 1 run tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"CONFIG/SCALE: Setting ","color":"gray"},{"text":"Target [","color":"white"},{"selector":"@s","color":"aqua"},{"text":"]","color":"white"},{"text":" to ","color":"gray"},{"text":"Scale [","color":"white"},{"score":{"objective":"rga.config.scale.body","name":"@s"},"color":"aqua"},{"text":"]","color":"white"},{"text":" in ","color":"gray"},{"text":"Catagory [","color":"white"},{"text":"body","color":"aqua"},{"text":"]","color":"white"}]
# set
execute if score @s rga.config.scale.body matches 0..50 run function regalia:config/scale/body/0_50
execute if score @s rga.config.scale.body matches 51..100 run function regalia:config/scale/body/51_100
execute if score @s rga.config.scale.body matches 101..150 run function regalia:config/scale/body/101_150
execute if score @s rga.config.scale.body matches 151..200 run function regalia:config/scale/body/151_200
execute if score @s rga.config.scale.body matches 201..250 run function regalia:config/scale/body/201_250
execute if score @s rga.config.scale.body matches 251..300 run function regalia:config/scale/body/251_300
execute if score @s rga.config.scale.body matches 301..350 run function regalia:config/scale/body/301_350
execute if score @s rga.config.scale.body matches 351.. run function regalia:config/scale/body/351_400