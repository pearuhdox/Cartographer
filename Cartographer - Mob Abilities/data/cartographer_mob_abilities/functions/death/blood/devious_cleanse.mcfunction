effect clear @s slowness
effect clear @s mining_fatigue
effect clear @s blindness
effect clear @s weakness
effect clear @s poison
effect clear @s wither
effect clear @s bad_omen
effect clear @s nausea
effect clear @s glowing
effect clear @s levitation
effect clear @s unluck
effect clear @s darkness

execute if score @s ca.frost_time matches 1.. run scoreboard players set @s ca.frost_time 1

execute if score @s ca.effect_stun_duration matches 1.. run scoreboard players set @s ca.effect_stun_duration 1

execute if score @s ca.effect_exposed_duration matches 1.. run scoreboard players set @s ca.effect_exposed_duration 1
execute if score @s ca.effect_bleed matches 1.. run scoreboard players set @s ca.effect_bleed 0
execute if score @s ca.effect_shock matches 1.. run scoreboard players set @s ca.effect_shock 0
execute if score @s ca.effect_infect matches 1.. run scoreboard players set @s ca.effect_infect 0

attribute @s minecraft:generic.follow_range modifier remove 0-0-0-1-5