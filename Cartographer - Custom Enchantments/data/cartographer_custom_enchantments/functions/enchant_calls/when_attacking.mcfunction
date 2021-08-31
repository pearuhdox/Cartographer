#Committed
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.committed=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/committed

tag @s add attack
#Concealed Consume
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.concealed=1..,ca.conceal_time=1..}] run function cartographer_custom_enchantments:enchant_effects/concealed/consume
tag @s remove attack

#Fire Aspect - Needs to run before Cauterize
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.fire_aspect=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/fire_aspect
#Cauterize
execute if score $cu_en_passive ca.enabler matches 1.. if entity @s[scores={ca.cauterize=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/cauterize/melee

#Decay
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.decay=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/decay
#Duelist
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.duelist=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/duelist
#Echo
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.echo=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/echo
#Evocation
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.evocation=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/evocation
#Executioner
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.executioner=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/executioner
#Frostbite
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.frostbite=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/frostbite
#Hunter
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.hunter=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/hunter
#Overload
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.overload=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/overload
#Singe
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.singe=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/singe
#Stunning
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.stunning=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/stunning

#Surging Strike - Runs after Stunning to use melee chance calc
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.surge_strike=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/surging_strike


#Transfiguration
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.transfig=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/transfiguration
#Vicious
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.vicious=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/vicious
#Vanquisher
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.vanquisher=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/vanquisher

#Rally - Can trigger on any type of attack.
execute if score $cu_en_passive ca.enabler matches 1.. if entity @s[scores={ca.rally=1..,ca.atk_time=0}] run function cartographer_custom_enchantments:enchant_effects/rally/restore_health

#Tempo Theft Player Effect
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}},scores={ca.tempo_theft=1}] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/player
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}},scores={ca.tempo_theft=2}] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/player
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}},scores={ca.tempo_theft=3}] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/player

#If NOT a projectile attack, cleanse the ranged tags on nearby mobs.
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] as @e[type=#cartographer_core:hostile,distance=..6] at @s run function cartographer_custom_enchantments:enchant_effects/purge_ranged_tags

#Call Invul Timer for Mob Abilities
scoreboard players set $invul_time_check invul 25