tag @s add ability_tagged

scoreboard players set $projectile ca.dmg_type 1
scoreboard players set $explosion ca.dmg_type 1

scoreboard players operation @s cdl.damage_queue = $missile_dmg ca.ability_dmg
function cartographer_mob_abilities:helper/epf/damage_reduce/ask_reduction

function cd:lib/player/damage/normal