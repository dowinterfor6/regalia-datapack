## players - dimension/the_end_enter
# reset
advancement revoke @s only regalia:_logic/players/dimension/the_end_enter
# logic
scoreboard players set @s rga.in_dimension 1
scoreboard players set @s rga.config.respawn_end 1
function regalia:config/keep_inventory/enable