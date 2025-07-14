## config - refresh/run
# prepare
execute if score $debug rga.settings matches 1 run tellraw @s [{"text":" [D> ","color":"yellow"},{"text":"CONFIG: Refreshing.","color":"gray"}]
scoreboard players reset @s rga.config.refresh
scoreboard players set $mathA rga.data 0

# size
execute if score @s rga.config.stature.id matches 0 run function regalia:config/size/tiny
execute if score @s rga.config.stature.id matches 1 run function regalia:config/size/small
execute if score @s rga.config.stature.id matches 2 run function regalia:config/size/short
execute if score @s rga.config.stature.id matches 3 run function regalia:config/size/average
execute if score @s rga.config.stature.id matches 4 run function regalia:config/size/tall
execute if score @s rga.config.stature.id matches 5 run function regalia:config/size/large
execute if score @s rga.config.stature.id matches 6 run function regalia:config/size/huge

# basics
function regalia:config/health/_m
function regalia:config/regeneration/amount
function regalia:config/regeneration/delay
function regalia:config/sprint/disable