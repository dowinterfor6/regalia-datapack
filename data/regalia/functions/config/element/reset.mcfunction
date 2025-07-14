## config - element/reset
# scores
execute if data entity @s cardinal_components."origins:origin".OriginLayers[{Layer:"regalia:element",Origin:"origins:empty"}] run scoreboard players reset @s rga.config.element
execute if data entity @s cardinal_components."origins:origin".OriginLayers[{Layer:"regalia:element",Origin:"regalia:none"}] run scoreboard players reset @s rga.config.element

execute if data entity @s ForgeCaps."origins:origins".Origins{"regalia:element":"origins:empty"} run scoreboard players reset @s rga.config.element
execute if data entity @s ForgeCaps."origins:origins".Origins{"regalia:element":"regalia:none"} run scoreboard players reset @s rga.config.element