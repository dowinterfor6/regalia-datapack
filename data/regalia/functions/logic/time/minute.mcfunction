## time - minute
# tick
scoreboard players set $time.second rga.data 0
scoreboard players add $time.minute rga.data 1
execute if score $time.minute rga.data matches 60.. run function regalia:logic/time/hour
# calls
execute if entity @a[scores={rga.origin.attune.day=0..},limit=1] run function regalia:logic/origin/attune/check/global