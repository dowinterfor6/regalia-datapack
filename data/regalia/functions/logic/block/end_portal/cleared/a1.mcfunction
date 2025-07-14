## end_portal - intro/a1
# scores
scoreboard players set $ender_dragon.cleared rga.data 2
# visuals
playsound minecraft:entity.evoker.prepare_attack block @a ~ ~ ~ 3.0 0.7
summon minecraft:text_display ~ ~1.2 ~ {Tags:["rga.b.end_portal","rga.d.text_90"],text:"[{\"text\":\"< DRAGON DEFEATED >\",\"color\":\"dark_purple\",\"bold\":true}]",background:0,shadow:true,see_through:false,alignment:"center",billboard:"vertical",brightness:{block:15,sky:15},shadow_radius:0.0f,shadow_radius:0.0f,view_range:1.0f}