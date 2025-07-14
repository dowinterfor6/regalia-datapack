## setup - scores

# data
scoreboard objectives add rga.data dummy
scoreboard objectives add rga.settings dummy
scoreboard objectives add rga.hierarchy dummy

# logic
scoreboard objectives add rga.combat.tick dummy
scoreboard objectives add rga.in_dimension dummy
scoreboard objectives add rga.login minecraft.custom:minecraft.leave_game
scoreboard objectives add rga.respawn deathCount
scoreboard objectives add rga.regeneration.interupt dummy
scoreboard objectives add rga.regeneration.status dummy
scoreboard objectives add rga.regeneration.tick dummy

scoreboard objectives add rga.stage dummy
scoreboard objectives add rga.time_tick dummy

scoreboard objectives add rga.food.drink.health dummy
scoreboard objectives add rga.food.drink.regeneration dummy
scoreboard objectives add rga.food.drink.tick dummy
scoreboard objectives add rga.food.snack.health dummy
scoreboard objectives add rga.food.snack.regeneration dummy
scoreboard objectives add rga.food.snack.tick dummy
scoreboard objectives add rga.food.side.health dummy
scoreboard objectives add rga.food.side.regeneration dummy
scoreboard objectives add rga.food.side.tick dummy
scoreboard objectives add rga.food.meal.health dummy
scoreboard objectives add rga.food.meal.regeneration dummy
scoreboard objectives add rga.food.meal.tick dummy

scoreboard objectives add rga.origin.attune.minute dummy
scoreboard objectives add rga.origin.attune.hour dummy
scoreboard objectives add rga.origin.attune.day dummy

# power
scoreboard objectives add rga.p.eruption.type dummy
scoreboard objectives add rga.p.evaporation.has dummy
scoreboard objectives add rga.p.evaporation.tick dummy
scoreboard objectives add rga.p.fueled.health dummy
scoreboard objectives add rga.p.moisturized.health dummy
scoreboard objectives add rga.p.resonance.damage minecraft.custom:minecraft.damage_resisted
scoreboard objectives add rga.p.resonance.tick dummy
scoreboard objectives add rga.p.surface_tension.decay dummy
scoreboard objectives add rga.p.with_the_tides.health dummy
scoreboard objectives add rga.p.with_the_tides.scale dummy

# config
scoreboard objectives add rga.config.version dummy
scoreboard objectives add rga.config.refresh dummy
scoreboard objectives add rga.config.buff.food_max dummy
scoreboard objectives add rga.config.health dummy
scoreboard objectives add rga.config.element dummy
scoreboard objectives add rga.config.keep_inventory dummy
scoreboard objectives add rga.config.regeneration.amount dummy
scoreboard objectives add rga.config.regeneration.delay dummy
scoreboard objectives add rga.config.respawn_end dummy
scoreboard objectives add rga.config.scale.body dummy
scoreboard objectives add rga.config.scale.reach dummy
scoreboard objectives add rga.config.scale.step dummy
scoreboard objectives add rga.config.scale.visibility dummy
scoreboard objectives add rga.config.stature.id dummy
scoreboard objectives add rga.config.stature.health dummy

# stats
scoreboard objectives add rga.stat.deaths deathCount
scoreboard objectives add rga.stat.health health
scoreboard objectives modify rga.stat.health displayname [{"text":"Health","color":"yellow"}]
scoreboard objectives add rga.stat.hunger food
scoreboard objectives add rga.stat.oxygen air
scoreboard objectives add rga.stat.saturation dummy

# triggers
scoreboard objectives add refresh_config trigger
scoreboard objectives modify refresh_config displayname [{"text":"Refresh Config","color":"white"}]

# data
scoreboard objectives add rga.coordX dummy
scoreboard objectives add rga.coordY dummy
scoreboard objectives add rga.coordZ dummy
scoreboard objectives add rga.dataA dummy
scoreboard objectives add rga.dataB dummy
scoreboard objectives add rga.mathA dummy
scoreboard objectives add rga.mathB dummy