## login - first
tell @s running first.mcfunction
# hierarchy
execute if entity @s[name=Donisi] run tag @s add rga.admin
execute if entity @s[name=RegalNomad] run tag @s add rga.admin
execute if entity @s[name=dowinterfor6] run tag @s add rga.admin

# data
origin set @s regalia:size regalia:size/average
# function regalia:config/size/average
# function regalia:config/refresh/run
origin set @s regalia:element regalia:none
# reset
advancement grant @s only regalia:_logic/login