## origin - attune/wipe
# scores
scoreboard players reset @s rga.origin.attune.minute
scoreboard players reset @s rga.origin.attune.hour
scoreboard players reset @s rga.origin.attune.day
# debug
execute if score $debug rga.settings matches 1 run tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"ORIGIN/ATTUNE: Wiping ","color":"gray"},{"text":"Target [","color":"white"},{"selector":"@s","color":"aqua"},{"text":"]","color":"white"}]