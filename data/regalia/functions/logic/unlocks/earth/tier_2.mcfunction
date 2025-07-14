## unlocks - earth/tier_2
# data
origin set @s regalia:element regalia:element/earth_t2
function regalia:config/element/earth
data modify storage regalia:data temp.name set value 'Earth Affinity'
# finalize
scoreboard players set $dataA rga.data 2
function regalia:logic/unlocks/_f