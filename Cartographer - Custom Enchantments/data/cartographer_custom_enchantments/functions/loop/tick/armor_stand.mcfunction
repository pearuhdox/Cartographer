scoreboard players add @s[tag=hydraul_stopper,scores={ca.lifetime=1..}] ca.lifetime 1

kill @s[tag=hydraul_stopper,scores={ca.lifetime=3..}]

execute as @s[tag=loyalty_projectile] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/projectile

execute as @s[tag=queue_to_fire_single] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/queue_single

execute as @s[tag=queue_to_fire_multi] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/queue_multi