## config - refresh/main
# checks
execute unless score @s rga.config.refresh matches 0.. run return 0
# tick
scoreboard players remove @s rga.config.refresh 1
advancement revoke @s only regalia:_logic/config/refresh
# expired?
execute if score @s rga.config.refresh matches 1.. run return 0
function regalia:config/refresh/run