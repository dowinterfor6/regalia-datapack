## time - hour
scoreboard players set $time.minute rga.data 0
scoreboard players add $time.hour rga.data 1
execute if score $time.hour rga.data matches 24.. run function regalia:logic/time/day