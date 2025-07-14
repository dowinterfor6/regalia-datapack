## setup - modloader
scoreboard players reset $modloader.fabric rga.settings
scoreboard players reset $modloader.forge rga.settings

# fabric?
scoreboard players set $mathA rga.data -1
execute store result score $mathA rga.data positioned 0 200 0 in minecraft:overworld if biome ~ ~ ~ #c:in_overworld
execute if score $mathA rga.data matches 1 run scoreboard players set $modloader.fabric rga.settings 1

# forge?
scoreboard players set $mathA rga.data -1
execute store result score $mathA rga.data positioned 0 200 0 in minecraft:overworld if biome ~ ~ ~ #forge:is_overworld
execute if score $mathA rga.data matches 1 run scoreboard players set $modloader.forge rga.settings 2