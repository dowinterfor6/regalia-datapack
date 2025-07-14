## combat - start
# checks
execute if score $player.combat.timer rga.settings matches ..0 run return 1
# tick
scoreboard players operation @s rga.combat.tick = $player.combat.timer rga.settings
advancement revoke @s only regalia:_logic/players/combat/tick
# calls
resource set @s regalia:human/combat_display 1