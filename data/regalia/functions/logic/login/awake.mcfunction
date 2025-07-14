## login - awake
execute if score $debug rga.settings matches 1 run tellraw @s[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"LOGIN: Awake!","color":"gray"}]
# reset
power revokeall @s regalia:login
# calls
function regalia:logic/players/refresh/generic/config