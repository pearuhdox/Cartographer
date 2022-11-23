execute unless score @s ca.orbit_timer matches 0.. run scoreboard players set @s ca.orbit_timer 0

scoreboard players set $duration_half ca.orbit_timer 20
scoreboard players operation $duration_half ca.orbit_timer *= @s cooldown
scoreboard players operation $duration_half ca.orbit_timer /= $2 ca.CONSTANT

scoreboard players operation $duration ca.orbit_timer = $duration_half ca.orbit_timer
scoreboard players operation $duration ca.orbit_timer *= $2 ca.CONSTANT

execute if score @s ca.orbit_timer > $duration_half ca.orbit_timer as @e[type=#bb:hostile,limit=1,sort=nearest,distance=0.01..12,scores={ca.orbit_timer=..0}] at @s run function cartographer_mob_abilities:abilities/orbit/apply_duration
execute if score @s ca.orbit_timer < $duration_half ca.orbit_timer run function cartographer_mob_abilities:abilities/orbit/apply_duration