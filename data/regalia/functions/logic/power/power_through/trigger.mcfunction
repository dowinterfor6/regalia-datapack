## earth - primary/trigger
# logic
resource set @s regalia:power/power_through_data_active 200
resource set @s regalia:power/power_through_data_cooldown -1
# visuals
playsound minecraft:item.trident.thunder player @s ~ ~ ~ 0.5 2.0
playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.5 0.7