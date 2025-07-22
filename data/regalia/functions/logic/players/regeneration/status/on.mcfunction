## regeneration - status/on
tell @s set regeneration to on status
scoreboard players set @s rga.regeneration.status 1
scoreboard players set @s rga.regeneration.tick 15
#scoreboard players operation @s rga.regeneration.tick = @s rga.config.regeneration.delay