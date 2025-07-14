## running_hot - expire
# logic
resource set @s regalia:power/running_hot_data_cooldown 800
# visuals
playsound minecraft:entity.generic.extinguish_fire player @s ~ ~ ~ 1.0 0.6