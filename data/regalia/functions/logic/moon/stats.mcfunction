## moon - stats
# prepare
scoreboard players set $moon.phase rga.data 0
scoreboard players set $moon.cycles rga.data 0
execute store result score $day.current rga.data run time query day

# calc - cycles
scoreboard players operation $mathA rga.data = $day.current rga.data
scoreboard players set $mathB rga.data 8

scoreboard players operation $mathA rga.data /= $mathB rga.data
scoreboard players operation $moon.cycles rga.data = $mathA rga.data

# calc - phase
scoreboard players operation $mathA rga.data *= $mathB rga.data
scoreboard players operation $mathA rga.data -= $day.current rga.data
scoreboard players set $mathB rga.data -1
scoreboard players operation $mathA rga.data *= $mathB rga.data
scoreboard players operation $moon.phase rga.data = $mathA rga.data

# debug
execute if score $debug rga.settings matches 1 run tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"MOON/STATS: ","color":"gray"},{"text":"Cycles [","color":"white"},{"score":{"objective":"rga.data","name":"$moon.cycles"},"color":"aqua"},{"text":"]","color":"white"},{"text":", ","color":"gray"},{"text":"Phase [","color":"white"},{"score":{"objective":"rga.data","name":"$moon.phase"},"color":"aqua"},{"text":"]","color":"white"}]