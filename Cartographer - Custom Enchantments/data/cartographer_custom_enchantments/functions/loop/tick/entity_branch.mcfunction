#Custom Projectile Ticks
execute as @s[type=#cartographer_core:arrow,tag=custom_arrow] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_visuals
execute as @s[type=trident,tag=custom_trident] at @s run function cartographer_custom_enchantments:enchant_effects/trident_visuals

#Tempo Theft Debuff
execute as @s[type=#cartographer_core:hostile,scores={ca.temp_warp=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/tempo_theft/effect

#Current Drag Effects
execute as @s[type=#cartographer_core:hostile,tag=current_drag] at @s run function cartographer_custom_enchantments:enchant_effects/current_drag

# PROJECTILE SCORE UPDATES
execute if entity @s[type=trident] if entity @s[nbt=!{inGround:1b}] run scoreboard players add @s helper_lifetime 1
scoreboard players add @s[type=armor_stand,tag=hydraul_stopper,scores={helper_lifetime=1..}] helper_lifetime 1

execute as @s[type=arrow,scores={helper_lifetime=2..}] at @s run function cartographer_custom_enchantments:enchant_effects/process_projectile

kill @s[type=armor_stand,tag=hydraul_stopper,scores={helper_lifetime=3..}]

execute as @s[type=trident,tag=loyalty] at @s if entity @s[nbt={inGround:1b}] run function cartographer_custom_enchantments:enchant_effects/loyalty/convert
execute as @s[type=armor_stand,tag=loyalty_projectile] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/projectile

#Evoker Fangs from Evocation - Kill them if they stay alive too long, and "trample" them, increasing their warmup tags as long as a player stands on it.
execute as @s[type=evoker_fangs,tag=from_evocation] at @s run function cartographer_custom_enchantments:enchant_effects/evocation/purge
execute as @s[type=evoker_fangs,tag=from_evocation,distance=..1.25] at @s if entity @a[distance=..1.25] run function cartographer_custom_enchantments:enchant_effects/evocation/trample