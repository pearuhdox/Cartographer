#Runs the grenade projectile passive
function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds

execute unless data entity @s power[0] run function cartographer_mob_abilities:projectiles/target/along_motion
execute if data entity @s power[0] run function cartographer_mob_abilities:projectiles/target/along_power

scoreboard players operation $proj_damage ca.ability_dmg = $projectile_damage ca.ability_dmg

function cartographer_mob_abilities:projectiles/create/lightning

kill @s