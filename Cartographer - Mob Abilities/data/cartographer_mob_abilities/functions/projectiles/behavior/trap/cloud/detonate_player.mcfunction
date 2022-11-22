scoreboard players set @s ca.linger_cooldown 40
tag @s remove ability_tagged

scoreboard players operation @s cdl.damage_queue = $trap_damage_detonate ca.ability_dmg

scoreboard players set @s cdl.death_id 310216

function cd:lib/player/damage/normal