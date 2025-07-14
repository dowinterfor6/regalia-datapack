## running_hot - trigger
# logic
resource set @s regalia:power/running_hot_data_active 400
resource set @s regalia:power/running_hot_data_cooldown -1
# visuals
playsound minecraft:item.firecharge.use player @s ~ ~ ~ 1.0 0.6