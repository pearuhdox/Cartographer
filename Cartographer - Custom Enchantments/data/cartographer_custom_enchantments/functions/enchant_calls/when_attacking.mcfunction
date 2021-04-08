#Committed
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/committed
#Concealed Consume
execute if entity @s[scores={concealed=1..}] run function cartographer_custom_enchantments:enchant_effects/concealed_consume
#Decay
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/decay
#Duelist
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/duelist
#Echo
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/echo
#Evocation
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/evocation
#Executioner
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/executioner
#Frostbite
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/frostbite
#Hunter
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/hunter
#Overload
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/overload
#Surging Strike
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/surging_strike
#Stunning
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/stunning
#Transfiguration
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/transfiguration
#Vicious
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/vicious
#Vanquisher
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/vanquisher

#Tempo Theft Player Effect
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}},scores={tempo_theft=1}] run function cartographer_custom_enchantments:enchant_effects/tempo_theft_player
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}},scores={tempo_theft=2}] run function cartographer_custom_enchantments:enchant_effects/tempo_theft_player
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}},scores={tempo_theft=3}] run function cartographer_custom_enchantments:enchant_effects/tempo_theft_player

#If NOT a projectile attack, cleanse the ranged tags on nearby mobs.
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run execute as @e[type=#cartographer_core:hostile,distance=..6] at @s run function cartographer_custom_enchantments:enchant_effects/purge_ranged_tags