## resonance - trigger
# logic
resource set @s regalia:power/resonance_data_cooldown -1
scoreboard players set @s rga.p.resonance.damage 0
scoreboard players set @s rga.p.resonance.tick 0
advancement revoke @s only regalia:_logic/power/resonance/tick
# visuals
execute positioned ~ ~1.0 ~ run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a[distance=0.001..50.0]
execute positioned ~ ~1.0 ~ run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 10
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1.0 0.5
playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 1.0 1.5