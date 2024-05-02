scoreboard players operation @s ca.shade_health_old = @s ca.shade_health
execute store result score @s ca.shade_health run data get entity @s Health

scoreboard players operation $val_2 ca.shade_health_old = @s ca.shade_health_old
scoreboard players operation $val_2 ca.shade_health_old += $2 ca.CONSTANT

scoreboard players operation $diff ca.shade_health = @s ca.shade_health
scoreboard players operation $diff ca.shade_health -= $val_2 ca.shade_health_old

execute if score @s ca.lifetime matches 21.. if predicate cartographer_core:has_absorption run scoreboard players set $revive_health_pot ca.shade_health 1
execute if score @s ca.lifetime matches 21.. if predicate cartographer_charon:has_regeneration run scoreboard players set $revive_health_pot ca.shade_health 1
execute if score @s ca.lifetime matches 21.. if score $diff ca.shade_health matches 1.. run scoreboard players set $revive_health_pot ca.shade_health 1

execute if score @s ca.lifetime matches 21.. if predicate cartographer_core:has_absorption run function cartographer_charon:multiplayer/do_revive
execute if score @s ca.lifetime matches 21.. if predicate cartographer_charon:has_regeneration run function cartographer_charon:multiplayer/do_revive
execute if score @s ca.lifetime matches 21.. if score $diff ca.shade_health matches 1.. run function cartographer_charon:multiplayer/do_revive
