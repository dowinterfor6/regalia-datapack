## unlocks - finalize
execute positioned ~ ~1.0 ~ run particle minecraft:note ~ ~ ~ 0.3 0.5 0.3 1 4
playsound minecraft:ui.toast.challenge_complete voice @s ~ ~ ~ 1.0 0.8
# message
execute if score $dataA rga.data matches 1 run tellraw @s [{"text":" [🔓> ","color":"green"},{"text":"Congrats! You have unlocked ","color":"white"},{"text":"[","color":"gold"},{"nbt":"temp.name","storage":"regalia:data","interpret":false,"color":"yellow"},{"text":"]","color":"gold"},{"text":"!","color":"white"}]
execute if score $dataA rga.data matches 2 run tellraw @s [{"text":" [🔓> ","color":"green"},{"text":"Congrats! You have upgraded your ","color":"white"},{"text":"[","color":"gold"},{"nbt":"temp.name","storage":"regalia:data","interpret":false,"color":"yellow"},{"text":"]","color":"gold"},{"text":"!","color":"white"}]