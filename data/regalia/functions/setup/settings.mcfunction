## setup - settings
# reset
scoreboard players operation $version.b rga.settings = $version.a rga.settings

# system
# execute unless score $debug rga.settings matches 0.. run scoreboard players set $debug rga.settings 0
scoreboard players set $debug rga.settings 1

# blocks
execute unless score $ice.tick_rate rga.settings matches 0.. run scoreboard players set $ice.tick_rate rga.settings 50
execute unless score $fading_lava.duration rga.settings matches 1.. run scoreboard players set $fading_lava.duration rga.settings 100

# players
execute unless score $player.combat.timer rga.settings matches 0.. run scoreboard players set $player.combat.timer rga.settings 120
execute unless score $player.regeneration.interupt rga.settings matches 0.. run scoreboard players set $player.regeneration.interupt rga.settings 100

# powers
execute unless score $power.resonance.power_maximum rga.settings matches 1.. run scoreboard players set $power.resonance.power_maximum rga.settings 10
execute unless score $power.resonance.power_offset rga.settings matches 0.. unless score $power.resonance.power_offset rga.settings matches ..-1 run scoreboard players set $power.resonance.power_offset rga.settings -1
execute unless score $power.resonance.power_scale rga.settings matches 1.. run scoreboard players set $power.resonance.power_scale rga.settings 120
execute unless score $power.surface_tension.decay rga.settings matches 1.. run scoreboard players set $power.surface_tension.decay rga.settings 15

# entities
execute unless score $wither.illegal.expire_delay rga.settings matches 0.. run scoreboard players set $wither.illegal.expire_delay rga.settings 100
execute unless score $wither.illegal.height_min rga.settings matches 0.. unless score $wither.illegal.height_min rga.settings matches ..-1 run scoreboard players set $wither.illegal.height_min rga.settings 20
execute unless score $wither.illegal.height_max rga.settings matches 0.. unless score $wither.illegal.height_max rga.settings matches ..-1 run scoreboard players set $wither.illegal.height_max rga.settings 240