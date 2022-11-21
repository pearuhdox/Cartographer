function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds

data modify storage cartographer_mob_abilities:projectiles DataTemplate.Owner set from entity @s Owner

execute unless data entity @s power[0] run function cartographer_mob_abilities:projectiles/target/along_motion
execute if data entity @s power[0] run function cartographer_mob_abilities:projectiles/target/along_power

execute unless data entity @s power[0] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~-1.5 ~
execute if score $witch ca.xyz_convert matches 1.. as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~-1 ~

function cartographer_mob_abilities:projectiles/create/needle

kill @s