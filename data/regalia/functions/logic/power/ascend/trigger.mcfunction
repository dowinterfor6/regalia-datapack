## ascend - trigger
# logic
resource set @s regalia:power/ascend_data_active 200
resource set @s regalia:power/ascend_data_cooldown -1
# visuals
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1.0 1.8
playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 1.0 0.7