execute unless score $disable_epf_damage ca.gamerule matches 1.. run function cartographer_mob_abilities:helper/epf/damage_reduce/do_reduction

scoreboard players set $explosion ca.dmg_type 0
scoreboard players set $projectile ca.dmg_type 0
scoreboard players set $fire ca.dmg_type 0