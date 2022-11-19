#Runs the grenade projectile passive
execute as @a[limit=1,sort=random,distance=..16] at @s run function cartographer_mob_abilities:abilities/storm/place_x

scoreboard players operation $damage ca.ability_dmg = $projectile_damage ca.ability_dmg

execute as @e[type=area_effect_cloud,tag=ca.storm_lightning_cloud,tag=!setup,distance=..24] at @s run function cartographer_mob_abilities:abilities/storm/cloud_setup

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds

kill @s