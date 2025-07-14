## players - wipe/generic/ability
# generic
resource set @s regalia:power/combat_roll_data_active 0
resource set @s regalia:power/combat_roll_data_cooldown 0
# air
resource set @s regalia:power/ascend_data_active 0
resource set @s regalia:power/ascend_data_cooldown 0
resource set @s regalia:power/whirlwind_data_cooldown 0
# earth
scoreboard players reset @s rga.p.resonance.damage
scoreboard players reset @s rga.p.resonance.tick
resource set @s regalia:power/power_through_data_active 0
resource set @s regalia:power/power_through_data_cooldown 0
resource set @s regalia:power/resonance_data_cooldown 0
# fire
scoreboard players reset @s rga.p.eruption.type
scoreboard players reset @s rga.p.fueled.health
resource set @s regalia:power/eruption_data_active 0
resource set @s regalia:power/eruption_data_cooldown 0
resource set @s regalia:power/running_hot_data_active 0
resource set @s regalia:power/running_hot_data_cooldown 0
# water
scoreboard players reset @s rga.p.evaporation.has
scoreboard players reset @s rga.p.evaporation.tick
scoreboard players reset @s rga.p.moisturized.health
scoreboard players reset @s rga.p.surface_tension.decay
scoreboard players reset @s rga.p.with_the_tides.health
scoreboard players reset @s rga.p.with_the_tides.scale
resource set @s regalia:power/salmon_run_data_cooldown 0
resource set @s regalia:power/surface_tension_data_active 0
resource set @s regalia:power/with_the_tides/ability_data_active 0
power revokeall @s regalia:with_the_tides