scoreboard players set @s ca.linger_cooldown 60
tag @s remove ability_tagged

scoreboard players operation @s cdl.damage_queue = $cloud_dmg ca.death_traits
function cd:lib/player/damage/normal