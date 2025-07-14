## origin - attune/set
# scores
scoreboard players operation @s rga.origin.attune.minute = $time.minute rga.data
scoreboard players operation @s rga.origin.attune.hour = $time.hour rga.data
scoreboard players operation @s rga.origin.attune.day = $time.day rga.data
scoreboard players add @s rga.origin.attune.day 30
# debug
execute if score $debug rga.settings matches 1 run tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"ORIGIN/ATTUNE: Setting ","color":"gray"},{"text":"Target [","color":"white"},{"selector":"@s","color":"aqua"},{"text":"]","color":"white"},{"text":" to have ","color":"gray"},{"text":"Attunement [","color":"white"},{"score":{"objective":"rga.origin.attune.day","name":"@s"},"color":"aqua"},{"text":"d ","color":"green"},{"score":{"objective":"rga.origin.attune.hour","name":"@s"},"color":"aqua"},{"text":"h ","color":"green"},{"score":{"objective":"rga.origin.attune.minute","name":"@s"},"color":"aqua"},{"text":"m","color":"green"},{"text":"]","color":"white"}]