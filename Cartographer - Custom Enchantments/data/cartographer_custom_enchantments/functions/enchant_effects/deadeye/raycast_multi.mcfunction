scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1
tp @s ^ ^ ^1

execute positioned ^ ^ ^ run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_extra_particle_multi

execute positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_extra_particle_multi

execute if entity @s[scores={ca.raycast=1..}] as @e[limit=1,type=#bb:hostile,distance=..1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity_multi
execute if entity @s[scores={ca.raycast=1..}] if score $hit_check ca.deadeye matches 1 run scoreboard players set @s ca.raycast 0

execute if entity @s[scores={ca.raycast=1..}] positioned ^ ^1 ^ as @e[limit=1,type=#bb:hostile,distance=..1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity_multi
execute if entity @s[scores={ca.raycast=1..}] if score $hit_check ca.deadeye matches 1 run scoreboard players set @s ca.raycast 0

execute if entity @s[scores={ca.raycast=1..}] positioned ^ ^-1 ^ as @e[limit=1,type=#bb:hostile,distance=..1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity_multi
execute if entity @s[scores={ca.raycast=1..}] if score $hit_check ca.deadeye matches 1 run scoreboard players set @s ca.raycast 0

scoreboard players set $hit_check ca.deadeye 0

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_multi
execute if entity @s[scores={ca.raycast=1..}] unless block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^ run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_multi_svfx

execute unless entity @s[scores={ca.raycast=1..}] run kill @s

execute if entity @s[scores={ca.raycast=1..}] unless block ~ ~ ~ #bb:can_raycast run kill @s