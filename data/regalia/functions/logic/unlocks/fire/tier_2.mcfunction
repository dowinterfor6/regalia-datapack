## unlocks - fire/tier_2
# data
origin set @s regalia:element regalia:element/fire_t2
function regalia:config/element/fire
data modify storage regalia:data temp.name set value 'Fire Affinity'
# finalize
scoreboard players set $dataA rga.data 2
function regalia:logic/unlocks/_f