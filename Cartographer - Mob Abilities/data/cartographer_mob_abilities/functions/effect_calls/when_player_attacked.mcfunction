#Touch Passive Check
tag @s add touched

execute if entity @s[scores={ca.hooked=1..}] if entity @e[type=#bb:hostile,tag=hook_broken,distance=..2] run scoreboard players set @s ca.hooked 2

execute if entity @s[tag=ca.hit_by_laser] run function cartographer_mob_abilities:abilities/laser/run_true_damage


#execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] run tag @s add check_custom_shulker_bullet