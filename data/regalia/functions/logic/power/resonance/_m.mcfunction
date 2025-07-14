## resonance - main
# checks
execute unless score @s rga.p.resonance.tick matches 0.. run return 0
# tick
scoreboard players add @s rga.p.resonance.tick 1
advancement revoke @s only regalia:_logic/power/resonance/tick
# call
title @s actionbar [{"text":"[> ","color":"gold"},{"text":"Absorbed: ","color":"aqua"},{"score":{"objective":"rga.p.resonance.damage","name":"@s"},"color":"white"},{"text":" <]","color":"gold"}]
execute positioned ~ ~1.0 ~ run particle minecraft:totem_of_undying ~ ~ ~ 0.3 0 0.3 0.1 1
execute if score @s rga.p.resonance.tick matches 20 run function regalia:logic/power/resonance/run/_m
execute if score @s rga.p.resonance.tick matches 21.. run function regalia:logic/power/resonance/expire