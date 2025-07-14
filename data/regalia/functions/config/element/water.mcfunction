## config - element/water
# first
data modify storage regalia:data temp.name set value 'Water Affinity'
execute unless score @s rga.config.element matches 0.. run function regalia:config/element/_first
# scores
execute if data entity @s cardinal_components."origins:origin".OriginLayers[{Layer:"regalia:element",Origin:"regalia:element/water_t1"}] run scoreboard players set @s rga.config.element 3
execute if data entity @s cardinal_components."origins:origin".OriginLayers[{Layer:"regalia:element",Origin:"regalia:element/water_t2"}] run scoreboard players set @s rga.config.element 13

execute if data entity @s ForgeCaps."origins:origins".Origins{"regalia:element":"regalia:element/water_t1"} run scoreboard players set @s rga.config.element 3
execute if data entity @s ForgeCaps."origins:origins".Origins{"regalia:element":"regalia:element/water_t2"} run scoreboard players set @s rga.config.element 13