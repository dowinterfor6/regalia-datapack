## whirlwind - trigger
# logic
resource set @s regalia:power/whirlwind_data_cooldown 1200
# visuals
execute positioned ~ ~0.05 ~ run particle minecraft:instant_effect ~ ~ ~ 0.2 0 0.2 0 6
playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 1.0 0.8
playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 0.5 0.8