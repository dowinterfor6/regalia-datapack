## setup - main
# gamerules
gamerule commandBlockOutput false
gamerule commandModificationBlockLimit 999999999
gamerule maxCommandChainLength 999999999
gamerule logAdminCommands false
gamerule disableElytraMovementCheck true
# calls
function regalia:setup/scores
# settings
function regalia:setup/modloader
scoreboard players set $config.version rga.data 1
scoreboard players set $version.a rga.settings 5
execute unless score $version.a rga.settings = $version.b rga.settings run function regalia:setup/settings
# refresh
execute as @a run function regalia:logic/players/refresh/_c/login
# version
scoreboard players set $version.a rga.data 0
scoreboard players set $version.b rga.data 2
scoreboard players set $version.c rga.data 3
tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"The ","color":"gray"},{"text":"Regalia Datapack","color":"gold"},{"text":" setup has completed, running ","color":"gray"},{"text":"v","color":"aqua"},{"score":{"objective":"rga.data","name":"$version.a"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"objective":"rga.data","name":"$version.b"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"objective":"rga.data","name":"$version.c"},"color":"aqua"},{"text":".","color":"gray"}]