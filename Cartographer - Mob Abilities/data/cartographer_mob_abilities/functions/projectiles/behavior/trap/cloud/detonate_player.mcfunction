scoreboard players set @s ca.linger_cooldown 40
tag @s remove ability_tagged

tag @s add ca.trap_hit

scoreboard players operation @s ca.damage_queue = $trap_damage_detonate ca.ability_dmg
