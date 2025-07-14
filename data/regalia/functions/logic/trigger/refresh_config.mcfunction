## refresh_config
# check
scoreboard players enable @s refresh_config
scoreboard players add @s refresh_config 0
execute if score @s refresh_config matches 0 run return 0
# logic
tellraw @s [{"text":" [> ","color":"dark_aqua"},{"text":"Refreshing config, this may take a moment.","color":"white"}]
function regalia:logic/players/refresh/generic/config
scoreboard players set @s rga.config.refresh 2
# reset
scoreboard players set @s refresh_config 0