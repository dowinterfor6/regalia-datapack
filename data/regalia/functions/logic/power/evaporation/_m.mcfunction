## evaporation - main
# checks
execute unless score @s rga.p.evaporation.tick matches 0.. run return 0
# tick
scoreboard players remove @s rga.p.evaporation.tick 1
advancement revoke @s only regalia:_logic/power/evaporation/tick
# expired?
execute if score @s rga.p.evaporation.tick matches 1.. run return 1

# checks
execute unless score @s rga.config.element matches 3 unless score @s rga.config.element matches 13 run function regalia:logic/power/evaporation/toggle/disable
execute unless score @s rga.config.element matches 3 unless score @s rga.config.element matches 13 run return 0
# logic
function regalia:logic/power/evaporation/delay
function regalia:logic/power/evaporation/effect
execute positioned ~ ~0.05 ~ run particle minecraft:cloud ~ ~ ~ 0.2 0 0.2 0 2
playsound minecraft:entity.generic.extinguish_fire player @a ~ ~ ~ 0.5 1.7