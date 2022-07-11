#function cartographer_mob_abilities:passive/reflect_player
#function cartographer_mob_abilities:passive/reflect_player

execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run scoreboard players set $proj_check invul 1