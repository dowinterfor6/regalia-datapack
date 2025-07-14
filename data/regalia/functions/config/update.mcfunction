## config - update
# reset
scoreboard players operation @s rga.config.version = $config.version rga.data

# stats
execute unless score @s rga.config.health matches 1.. run scoreboard players set @s rga.config.health 20
execute unless score @s rga.config.regeneration.amount matches 1.. run scoreboard players set @s rga.config.regeneration.amount 1
execute unless score @s rga.config.regeneration.delay matches 1.. run scoreboard players set @s rga.config.regeneration.delay 100

# buffs
execute unless score @s rga.config.buff.food_max matches 0.. run scoreboard players set @s rga.config.buff.food_max 0
