## surface_tension - decay
# checks
execute unless score @s rga.p.surface_tension.decay matches 0.. run return 0
# tick
scoreboard players remove @s rga.p.surface_tension.decay 1
advancement revoke @s only regalia:_logic/power/surface_tension/decay
# expired?
execute if score @s rga.p.surface_tension.decay matches 1.. run return 1
resource set @s regalia:power/surface_tension_data_active 0
scoreboard players reset @s rga.p.surface_tension.decay