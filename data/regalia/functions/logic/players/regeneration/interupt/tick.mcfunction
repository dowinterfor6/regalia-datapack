## regeneration - interupt/tick
# checks
execute unless score @s rga.regeneration.interupt matches 1.. run return 0
# tick
scoreboard players remove @s rga.regeneration.interupt 1
advancement revoke @s only regalia:_logic/players/regeneration/interupt
execute if score @s rga.regeneration.interupt matches 0..100 run resource operation @s regalia:human/regeneration_display = @s rga.regeneration.interupt
# expire?
execute if score @s rga.regeneration.interupt matches 1.. run return 0

resource set @s regalia:human/regeneration_display 0
scoreboard players reset @s rga.regeneration.interupt
#function regalia:logic/players/regeneration/status/on