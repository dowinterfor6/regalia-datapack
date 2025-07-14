## resonance - run/explode
# math
scoreboard players operation $mathA rga.data = @s rga.p.resonance.damage
scoreboard players operation $mathA rga.data /= $power.resonance.power_scale rga.settings
scoreboard players operation $mathA rga.data += $power.resonance.power_offset rga.settings
execute if score $mathA rga.data > $power.resonance.power_maximum rga.settings run scoreboard players operation $mathA rga.data = $power.resonance.power_maximum rga.settings
# checks
execute if score $mathA rga.data matches ..-1 run scoreboard players set $mathA rga.data 0

#execute if score $mathA rga.data matches ..0 run function regalia:logic/power/resonance/run/empty
#execute if score $mathA rga.data matches ..0 run return 1
# apply
summon minecraft:creeper ~ ~ ~ {Tags:["rga.p.resonance","rga.setup"],CustomName:'[{"text":"resonance explosion","color":"white"}]',ExplosionRadius:1,Invulnerable:1b,NoGravity:1b,ignited:1b,Silent:1b,Fuse:0,DeathLootTable:"minecraft:empty"}
execute store result entity @e[type=minecraft:creeper,tag=rga.p.resonance,tag=rga.setup,limit=1,sort=nearest] ExplosionRadius int 1 run scoreboard players get $mathA rga.data
tag @e[type=minecraft:creeper,tag=rga.p.resonance,tag=rga.setup,limit=1,sort=nearest] remove rga.setup
# visuals
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 1.0 1.2