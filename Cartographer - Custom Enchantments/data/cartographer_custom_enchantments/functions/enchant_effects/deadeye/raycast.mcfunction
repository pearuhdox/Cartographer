scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute positioned ^ ^ ^ run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_extra_particle

execute positioned ^ ^ ^0.33 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_extra_particle

execute positioned ^ ^ ^0.64 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_extra_particle

execute if entity @s[scores={ca.raycast=1..}] as @e[limit=1,type=#bb:hostile,distance=..1] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity
execute if entity @s[scores={ca.raycast=1..}] if score $hit_check ca.deadeye matches 1 run scoreboard players set @s ca.raycast 0

execute if entity @s[scores={ca.raycast=1..}] positioned ^ ^1 ^ as @e[limit=1,type=#bb:hostile,distance=..1] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity
execute if entity @s[scores={ca.raycast=1..}] if score $hit_check ca.deadeye matches 1 run scoreboard players set @s ca.raycast 0

execute if entity @s[scores={ca.raycast=1..}] positioned ^ ^-1 ^ as @e[limit=1,type=#bb:hostile,distance=..1] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity
execute if entity @s[scores={ca.raycast=1..}] if score $hit_check ca.deadeye matches 1 run scoreboard players set @s ca.raycast 0

scoreboard players set $hit_check ca.deadeye 0

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast



execute if entity @s[scores={ca.raycast=1..}] unless block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^ run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_svfx