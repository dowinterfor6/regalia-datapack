## regeneration - interupt/trigger
# checks
execute if score $player.regeneration.interupt rga.settings matches ..0 run return 1
# tick
scoreboard players operation @s rga.regeneration.interupt = $player.regeneration.interupt rga.settings
advancement revoke @s only regalia:_logic/players/regeneration/interupt
# calls
resource operation @s regalia:human/regeneration_display = @s rga.regeneration.interupt
#function regalia:logic/players/regeneration/status/lock