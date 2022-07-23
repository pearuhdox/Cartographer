scoreboard players add @s[tag=hydraul_stopper,scores={ca.lifetime=1..}] ca.lifetime 1

kill @s[tag=hydraul_stopper,scores={ca.lifetime=3..}]

execute if entity @s[tag=loyalty_projectile] run function cartographer_custom_enchantments:enchant_effects/loyalty/projectile

execute if entity @s[tag=queue_to_fire_single] run function cartographer_custom_enchantments:enchant_effects/deadeye/queue_single

execute if entity @s[tag=queue_to_fire_multi] run function cartographer_custom_enchantments:enchant_effects/deadeye/queue_multi