#Committed
execute if entity @s[scores={committed=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/committed
#Concealed Consume
execute if entity @s[scores={concealed=1..}] run function cartographer_custom_enchantments:enchant_effects/concealed/consume
#Decay
execute if entity @s[scores={decay=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/decay
#Duelist
execute if entity @s[scores={duelist=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/duelist
#Echo
execute if entity @s[scores={echo=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/echo
#Evocation
execute if entity @s[scores={evocation=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/evocation
#Executioner
execute if entity @s[scores={executioner=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/executioner
#Frostbite
execute if entity @s[scores={frostbite=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/frostbite
#Hunter
execute if entity @s[scores={hunter=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/hunter
#Overload
execute if entity @s[scores={overload=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/overload
#Surging Strike
execute if entity @s[scores={surging_strike=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/surging_strike
#Stunning
execute if entity @s[scores={stunning=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/stunning
#Transfiguration
execute if entity @s[scores={transfiguration=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/transfiguration
#Vicious
execute if entity @s[scores={vicious=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/vicious
#Vanquisher
execute if entity @s[scores={vanquisher=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/vanquisher

#Melee Opportunist
execute if entity @s[scores={opportunist=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/opportunist/melee

#Ranged Opportunist
execute if entity @s[scores={opportunist=11..},advancements={entityid:player_hurt_entity={is_projectile=true}}] run function cartographer_custom_enchantments:enchant_effects/opportunist/ranged

#Rally - Can trigger on any type of attack.
execute if entity @s[scores={rally=1..,ca.atk_time=0}] run function cartographer_custom_enchantments:enchant_effects/rally/restore_health

#Tempo Theft Player Effect
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}},scores={tempo_theft=1}] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/player
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}},scores={tempo_theft=2}] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/player
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}},scores={tempo_theft=3}] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/player

#If NOT a projectile attack, cleanse the ranged tags on nearby mobs.
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] as @e[type=#cartographer_core:hostile,distance=..6] at @s run function cartographer_custom_enchantments:enchant_effects/purge_ranged_tags