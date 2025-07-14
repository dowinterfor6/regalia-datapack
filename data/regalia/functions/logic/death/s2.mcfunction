## death - s2
# configs
execute if score @s rga.config.respawn_end matches 1 run function regalia:logic/death/respawn_end
execute if score @s rga.config.keep_inventory matches 1 run yigd restore @s
# calls
execute if score @s rga.combat.tick matches 0.. run function regalia:logic/players/combat/expire
function regalia:config/sprint/disable
# reset
scoreboard players reset @s rga.respawn