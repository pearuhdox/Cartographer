#Reset All Scores I am Crying

scoreboard players set $flame ca.var 0

scoreboard players set $frost ca.var 0
scoreboard players set $cauterize ca.var 0
scoreboard players set $explosive ca.var 0
scoreboard players set $vol_dmg ca.vol_dmg 0
scoreboard players set $tempo_theft ca.var 0
scoreboard players set $punch ca.var 0
scoreboard players set $concentration ca.var 0
scoreboard players set $point_blank ca.var 0
scoreboard players set $sharpshot ca.var 0


scoreboard players set $current ca.var 0
scoreboard players set $ricochet ca.var 0
scoreboard players set $duelist ca.var 0
scoreboard players set $hunter ca.var 0
scoreboard players set $singe ca.var 0
scoreboard players set $frostbite ca.var 0
scoreboard players set $executioner ca.var 0
scoreboard players set $fire_aspect ca.var 0
scoreboard players set $cauterize ca.var 0
scoreboard players set $collapse ca.var 0

scoreboard players set $loyalty ca.var 0
scoreboard players set $wavedash ca.var 0

scoreboard players set $ranged_damage ca.var 0
scoreboard players set $point_blank ca.attr_ranged 0
scoreboard players set $sharpshot ca.attr_ranged 0

scoreboard players set $first_strike ca.var 0
scoreboard players set $hex_eater ca.var 0


execute on attacker run scoreboard players operation $attacker_id ca.var = @s ca.player_id

#Grab All Relevant Data from the projectile in question.
scoreboard players set $attacker_find ca.var 0
scoreboard players set $attacker_found ca.var 0

execute at @s as @e[distance=..32,type=#cartographer_custom_enchantments:bow_allowed_projectile,tag=!ca.ranged_damage_trident_replace,nbt=!{inGround:1b},sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/find_branch
execute unless score $attacker_found ca.var matches 1.. at @s as @e[distance=..32,type=snowball,tag=ca.ranged_damage_trident_replace,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/find_branch
execute unless score $attacker_found ca.var matches 1.. at @s as @e[distance=..32,type=trident,nbt=!{inGround:1b},sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/find_branch


#Point Blank - Runs before Custom Damage
execute if score $point_blank ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/point_blank/player_test
#Sharpshot - Runs before Custom Damage
execute if score $sharpshot ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/sharpshot/player_test


#Do Custom Ranged Damage
execute if score $ranged_damage ca.var matches 1.. run function cartographer_custom_enchantments:attribute_effects/ranged_damage/setup_damage


#First Strike - After Ranged Damage
execute unless entity @s[tag=ca.first_striked] if score $first_strike ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/first_strike/branch

#Hex Eater - After Ranged Damage
execute if score $hex_eater ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/hex_eater/branch


#These effects will activate from the entity itself before the player call.
execute if score $cu_en_ranged ca.enabler matches 1.. at @s[type=!player] run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag
execute if score $cu_en_ranged ca.enabler matches 1.. at @s[type=!player] run function cartographer_custom_enchantments:enchant_effects/trident_custom_tag

#Flame
#execute if score $flame ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/flame/master

#Cauterize - Goes first
scoreboard players operation $cauterize ca.ench_var = $cauterize ca.var
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_cauterize] at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/ranged

#Concentration
execute if score $concentration ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/concentration/stack


#Frost
execute if score $frost ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/frost/master

#Punch - Crossbows
execute if score $cu_en_ranged ca.enabler matches 1.. if score $punch ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect


#Tempo Theft
execute if score $cu_en_ranged ca.enabler matches 1.. if score $tempo_theft ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/tempo_theft/mob

#Explosive
execute if score $cu_en_ranged ca.enabler matches 1.. if score $explosive ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/explosive/master

#Current
execute if score $cu_en_ranged ca.enabler matches 1.. if score $current ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/current/master

#Ricochet
execute if score $cu_en_ranged ca.enabler matches 1.. if score $ricochet ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/ricochet/master

#Duelist - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if score $duelist ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/duelist/ranged

#Hunter - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if score $hunter ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/hunter/ranged

#Smite - Trident
execute if score $ranged_damage ca.var matches 1.. if score $cu_en_ranged ca.enabler matches 1.. if score $smite ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/smite/ranged

#Singe - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if score $singe ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/singe/ranged


#Fire Aspect - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if score $fire_aspect ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/fire_aspect/ranged

#Wavedash
execute if score $cu_en_ranged ca.enabler matches 1.. if score $wavedash ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/wavedash/teleport_start

#Executioner - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if score $executioner ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/executioner/ranged


#Run the Arrow Hit Datapack Hook
function #minecraft:cartographer_events/player_hit_mob_arrow

#Run the Trident Hit Datapack Hook
function #minecraft:cartographer_events/player_hit_mob_trident 

#Run Loyalty Giveback Program
execute if score $loyalty ca.var matches 1.. at @s as @a[distance=..8.5,tag=ca.made_ranged_attack] at @s if score @s ca.loyalty_time matches 0.. run scoreboard players add @s ca.loyalty_time 20
execute if score $loyalty ca.var matches 1.. at @s as @a[distance=..4.5,tag=ca.made_ranged_attack] at @s if score @s ca.loyalty_time matches 0.. run scoreboard players add @s ca.loyalty_time 20

#Reset All Scores I am Crying
scoreboard players set $frost ca.var 0
scoreboard players set $cauterize ca.var 0
scoreboard players set $explosive ca.var 0
scoreboard players set $vol_dmg ca.vol_dmg 0
scoreboard players set $tempo_theft ca.var 0
scoreboard players set $punch ca.var 0

scoreboard players set $current ca.var 0
scoreboard players set $ricochet ca.var 0
scoreboard players set $duelist ca.var 0
scoreboard players set $hunter ca.var 0
scoreboard players set $singe ca.var 0
scoreboard players set $fire_aspect ca.var 0
scoreboard players set $cauterize ca.var 0