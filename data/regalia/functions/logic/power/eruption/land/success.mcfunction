## eruption - land/success
# visuals
playsound minecraft:entity.firework_rocket.large_blast_far player @a ~ ~ ~ 1.0 0.6
execute if score @s rga.p.eruption.type matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #regalia:_g/indestructible run function regalia:logic/block/fading_lava/_p/setup
# finalize
function regalia:logic/power/eruption/land/_f