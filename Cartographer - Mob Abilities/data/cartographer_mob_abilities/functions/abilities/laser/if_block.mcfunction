summon creeper ~ ~ ~ {Silent:1b,Tags:["laser_explosion"],ActiveEffects:[{Id:14,Duration:20,Amplifier:0,ShowParticles:false}],ExplosionRadius:3b,Fuse:3,ignited:1b,CustomName:'{"text":"thermal disencouragement"}'}

# Delta API Compat
function delta:api/explosion_emitter_particle
function delta:api/explosion_sound

scoreboard players set $laser_detonate ca.var 1
scoreboard players set $laser_blocked ca.var 10

playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 2 1.5
playsound minecraft:entity.warden.tendril_clicks hostile @a[distance=..16] ~ ~ ~ 2 0.65