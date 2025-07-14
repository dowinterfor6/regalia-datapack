## attune - remain/main
# prepare
scoreboard players set $calc.time_day rga.data 0
scoreboard players set $calc.time_hour rga.data 0
scoreboard players set $calc.time_minute rga.data 0
scoreboard players set $calc.time_second rga.data 0

# minute
scoreboard players operation $calc.time_minute rga.data += @s rga.origin.attune.minute
scoreboard players operation $calc.time_minute rga.data -= $time.minute rga.data
execute if score $calc.time_minute rga.data matches ..-1 run function regalia:logic/origin/attune/remain/minute

# hour
scoreboard players operation $calc.time_hour rga.data += @s rga.origin.attune.hour
scoreboard players operation $calc.time_hour rga.data -= $time.hour rga.data
execute if score $calc.time_hour rga.data matches ..-1 run function regalia:logic/origin/attune/remain/hour

# day
scoreboard players operation $calc.time_day rga.data += @s rga.origin.attune.day
scoreboard players operation $calc.time_day rga.data -= $time.day rga.data

# debug
#execute if score $debug rga.settings matches 1 run tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"ORIGIN/ATTUNE: ","color":"gray"},{"text":"Target [","color":"white"},{"selector":"@s","color":"aqua"},{"text":"]","color":"white"},{"text":" has ","color":"gray"},{"text":"Remaining [","color":"white"},{"score":{"objective":"rga.data","name":"$calc.time_day"},"color":"aqua"},{"text":"d ","color":"green"},{"score":{"objective":"rga.data","name":"$calc.time_hour"},"color":"aqua"},{"text":"h ","color":"green"},{"score":{"objective":"rga.data","name":"$calc.time_minute"},"color":"aqua"},{"text":"m ","color":"green"},{"score":{"objective":"rga.data","name":"$calc.time_second"},"color":"aqua"},{"text":"s","color":"green"},{"text":"]","color":"white"}]