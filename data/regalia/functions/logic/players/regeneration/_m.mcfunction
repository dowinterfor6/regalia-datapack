## regeneration - main
scoreboard players remove @a[scores={rga.regeneration.tick=1..}] rga.regeneration.tick 1
execute as @a[scores={rga.regeneration.tick=0}] run function regalia:logic/players/regeneration/run/_m