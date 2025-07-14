## config - element/earth
# first
data modify storage regalia:data temp.name set value 'Earth Affinity'
execute unless score @s rga.config.element matches 0.. run function regalia:config/element/_first
# scores
execute if data entity @s cardinal_components."origins:origin".OriginLayers[{Layer:"regalia:element",Origin:"regalia:element/earth_t1"}] run scoreboard players set @s rga.config.element 1
execute if data entity @s cardinal_components."origins:origin".OriginLayers[{Layer:"regalia:element",Origin:"regalia:element/earth_t2"}] run scoreboard players set @s rga.config.element 11

execute if data entity @s ForgeCaps."origins:origins".Origins{"regalia:element":"regalia:element/earth_t1"} run scoreboard players set @s rga.config.element 1
execute if data entity @s ForgeCaps."origins:origins".Origins{"regalia:element":"regalia:element/earth_t2"} run scoreboard players set @s rga.config.element 11