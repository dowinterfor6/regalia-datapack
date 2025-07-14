## ice - despawn/main
scoreboard players add @s rga.time_tick 1
execute if score @s rga.time_tick matches 3.. run function regalia:logic/block/ice/despawn/run