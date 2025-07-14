## wither - p/deconstruct
# refund
execute unless score @s rga.dataA matches 2 run loot spawn ~ ~ ~ loot regalia:wither/deconstruct
# visuals
tellraw @a[distance=..50.0] [{"text":" ...The Wither will weather altogether lacking hither nether tether...","color":"#918989","italic":true}]
playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 2.0 0.6
playsound minecraft:entity.player.attack.crit hostile @a ~ ~ ~ 2.0 0.6
# reset
data merge entity @s {Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty"}
tp @s ~ -999 ~
kill @s