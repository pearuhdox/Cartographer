effect clear @s bad_omen
effect clear @s blindness
effect clear @s darkness
effect clear @s levitation
effect clear @s mining_fatigue
effect clear @s poison
effect clear @s slowness
effect clear @s weakness
effect clear @s wither
effect clear @s nausea

execute if predicate cartographer_custom_enchantments:hex_eater/is_on_fire run data modify entity @s Fire set value 0

execute if score @s ca.effect_stun_duration matches 1.. run scoreboard players set @s ca.effect_stun_duration 2
execute if score @s ca.effect_bleed matches 1.. run scoreboard players set @s ca.effect_bleed 0
execute if score @s ca.effect_shock matches 1.. run scoreboard players set @s ca.effect_shock 0
execute if score @s ca.effect_infect matches 1.. run scoreboard players set @s ca.effect_infect 0

execute if score @s ca.charm_time matches 3.. run scoreboard players set @s ca.charm_time 2

execute if score @s ca.effect_shackled matches 1.. run scoreboard players set @s ca.effect_shackled 0
execute if score @s ca.effect_oiled_duration matches 2.. run scoreboard players set @s ca.effect_oiled_duration 1
execute if score @s ca.effect_brittle_duration matches 2.. run scoreboard players set @s ca.effect_brittle_duration 1