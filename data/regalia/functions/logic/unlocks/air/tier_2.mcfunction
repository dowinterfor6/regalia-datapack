## unlocks - air/tier_2
# data
origin set @s regalia:element regalia:element/air_t2
function regalia:config/element/air
data modify storage regalia:data temp.name set value 'Air Affinity'
# finalize
scoreboard players set $dataA rga.data 2
function regalia:logic/unlocks/_f