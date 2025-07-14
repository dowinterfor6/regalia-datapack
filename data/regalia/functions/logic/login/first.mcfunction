## login - first
# hierarchy
execute if entity @s[name=Donisi] run tag @s add rga.admin
execute if entity @s[name=RegalNomad] run tag @s add rga.admin
# data
origin set @s regalia:size regalia:size/average
origin set @s regalia:element regalia:none
# reset
advancement grant @s only regalia:_logic/login