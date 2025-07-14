## end_portal - prevent/align
execute if score $debug rga.settings matches 1 run tellraw @a[tag=rga.admin] [{"text":" [D> ","color":"yellow"},{"text":"END_PORTAL: Found fountain, aligining.","color":"gray"}]
tp @s ~ ~-2 ~