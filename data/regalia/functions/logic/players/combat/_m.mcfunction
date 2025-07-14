## combat - main
# checks
execute unless score @s rga.combat.tick matches 1.. run return 0
# tick
scoreboard players remove @s rga.combat.tick 1
advancement revoke @s only regalia:_logic/players/combat/tick
# expire?
execute if score @s rga.combat.tick matches 1.. run return 0
function regalia:logic/players/combat/expire