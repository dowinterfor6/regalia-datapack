## salmon_run - trigger
# logic
resource set @s regalia:power/salmon_run_data_cooldown 600
effect give @s minecraft:dolphins_grace 30 0 true
# visuals
playsound minecraft:entity.dolphin.play player @s ~ ~ ~ 1.0 0.9
playsound minecraft:block.conduit.activate player @s ~ ~ ~ 1.0 1.4