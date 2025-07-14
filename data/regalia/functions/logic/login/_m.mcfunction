## login - main
# first?
execute if entity @s[advancements={regalia:_logic/login=false}] run function regalia:logic/login/first
# refresh
function regalia:logic/players/refresh/_c/login
execute unless score @s rga.config.version = $config.version rga.data run function regalia:config/update
power grant @s regalia:config/login regalia:login
# messages
tellraw @s[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"The ","color":"gray"},{"text":"Regalia Datapack","color":"gold"},{"text":" is running ","color":"gray"},{"text":"v","color":"aqua"},{"score":{"objective":"rga.data","name":"$version.a"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"objective":"rga.data","name":"$version.b"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"objective":"rga.data","name":"$version.c"},"color":"aqua"},{"text":".","color":"gray"}]
# reset
scoreboard players reset @s rga.login