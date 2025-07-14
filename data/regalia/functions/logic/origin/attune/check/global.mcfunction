## attune - check/global
# checks
execute as @a[scores={rga.origin.attune.day=0..}] run function regalia:logic/origin/attune/check/run
# wipe
scoreboard players reset $calc.time_day rga.data
scoreboard players reset $calc.time_hour rga.data
scoreboard players reset $calc.time_minute rga.data
scoreboard players reset $calc.time_second rga.data