## time - second
scoreboard players set $time.tick rga.data 0
scoreboard players add $time.second rga.data 1
execute if score $time.second rga.data matches 60.. run function regalia:logic/time/minute