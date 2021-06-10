# This runs to only identify if a mob was hit by a ranged attack.
say testing ranged tag
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run say test success
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run tag @s add is_hit_ranged