## ice - place/summon
# checks
execute unless dimension minecraft:the_nether run return 0
execute if entity @e[type=minecraft:marker,tag=rga.b.ice,distance=..0.05] run return 0
# summon
summon minecraft:marker ~ ~ ~ {Tags:["rga.b.ice"]}