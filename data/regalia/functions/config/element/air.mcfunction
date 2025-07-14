## config - element/air
# first
data modify storage regalia:data temp.name set value 'Air Affinity'
execute unless score @s rga.config.element matches 0.. run function regalia:config/element/_first
# scores
execute if data entity @s cardinal_components."origins:origin".OriginLayers[{Layer:"regalia:element",Origin:"regalia:element/air_t1"}] run scoreboard players set @s rga.config.element 0
execute if data entity @s cardinal_components."origins:origin".OriginLayers[{Layer:"regalia:element",Origin:"regalia:element/air_t2"}] run scoreboard players set @s rga.config.element 0

execute if data entity @s ForgeCaps."origins:origins".Origins{"regalia:element":"regalia:element/air_t1"} run scoreboard players set @s rga.config.element 0
execute if data entity @s ForgeCaps."origins:origins".Origins{"regalia:element":"regalia:element/air_t2"} run scoreboard players set @s rga.config.element 10