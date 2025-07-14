## combat_roll - trigger
# logic
resource set @s regalia:power/combat_roll_data_active 10
resource set @s regalia:power/combat_roll_data_cooldown 140
# visuals
execute positioned ~ ~0.05 ~ run particle minecraft:poof ~ ~ ~ 0.2 0 0.2 0.1 2
playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 0.5 0.8