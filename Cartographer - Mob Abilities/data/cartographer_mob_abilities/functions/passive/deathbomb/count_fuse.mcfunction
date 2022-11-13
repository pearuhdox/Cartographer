execute if score @s ca.deathbomb_fuse matches 1 run playsound minecraft:entity.creeper.primed hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if score @s ca.deathbomb_fuse = @s ca.deathbomb_fuse_max run function cartographer_mob_abilities:passive/deathbomb/setup_death

scoreboard players add @s ca.deathbomb_fuse 1
