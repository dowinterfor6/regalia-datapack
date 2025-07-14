## config - element/fire
# first
data modify storage regalia:data temp.name set value 'Fire Affinity'
execute unless score @s rga.config.element matches 0.. run function regalia:config/element/_first
# scores
execute if data entity @s cardinal_components."origins:origin".OriginLayers[{Layer:"regalia:element",Origin:"regalia:element/fire_t1"}] run scoreboard players set @s rga.config.element 2
execute if data entity @s cardinal_components."origins:origin".OriginLayers[{Layer:"regalia:element",Origin:"regalia:element/fire_t2"}] run scoreboard players set @s rga.config.element 12

execute if data entity @s ForgeCaps."origins:origins".Origins{"regalia:element":"regalia:element/fire_t1"} run scoreboard players set @s rga.config.element 2
execute if data entity @s ForgeCaps."origins:origins".Origins{"regalia:element":"regalia:element/fire_t2"} run scoreboard players set @s rga.config.element 12