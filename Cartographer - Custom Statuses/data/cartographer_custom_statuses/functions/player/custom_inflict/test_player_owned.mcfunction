scoreboard players set $attacker_find ca.status_var 0
execute on origin if score @s ca.player_id = $attacker_id ca.status_var run scoreboard players set $attacker_find ca.status_var 1

execute unless score $attacker_found ca.status_var matches 1.. if score $attacker_find ca.status_var matches 1.. run tag @s add ca.inflict_cause

execute unless score $attacker_found ca.status_var matches 1.. if score $attacker_find ca.status_var matches 1.. if entity @s[type=#cartographer_custom_statuses:bow_allowed_projectile,tag=!ca.ranged_damage_trident_replace] at @s run function cartographer_custom_statuses:player/custom_inflict/projectile_data
execute unless score $attacker_found ca.status_var matches 1.. if score $attacker_find ca.status_var matches 1.. if entity @s[type=trident] at @s run function cartographer_custom_statuses:player/custom_inflict/get_trident_data
execute unless score $attacker_found ca.status_var matches 1.. if score $attacker_find ca.status_var matches 1.. if entity @s[type=snowball,tag=ca.ranged_damage_trident_replace] at @s on passengers run function cartographer_custom_statuses:player/custom_inflict/get_trident_data