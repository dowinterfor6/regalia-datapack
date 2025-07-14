## unlocks - water/tier_2
# data
origin set @s regalia:element regalia:element/water_t2
function regalia:config/element/water
data modify storage regalia:data temp.name set value 'Water Affinity'
# finalize
scoreboard players set $dataA rga.data 2
function regalia:logic/unlocks/_f