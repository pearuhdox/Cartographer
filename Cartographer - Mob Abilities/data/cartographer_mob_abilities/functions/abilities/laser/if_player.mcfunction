summon creeper ~ ~500 ~ {Silent:1b,Tags:["ca.new_laser_explosion","laser_explosion"],ActiveEffects:[{Id:14,Duration:3,Amplifier:0,ShowParticles:false}],ExplosionRadius:3b,Fuse:3,ignited:1b,CustomName:'{"text":"thermal disencouragement"}'}
execute positioned ~ ~500 ~ run tp @e[tag=ca.new_laser_explosion,type=creeper,sort=nearest,limit=1] ~ ~-500 ~

# Delta API Compat
function delta:api/explosion_emitter_particle
function delta:api/explosion_sound

scoreboard players set $laser_detonate ca.var 1

playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 2 1.5
playsound minecraft:entity.warden.tendril_clicks hostile @a[distance=..16] ~ ~ ~ 2 0.65
