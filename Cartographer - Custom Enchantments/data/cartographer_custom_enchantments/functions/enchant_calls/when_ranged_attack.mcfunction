#Reset All Scores I am Crying
tag @s remove ca.attacked_mob

scoreboard players set $flame ca.var 0

scoreboard players set $frost ca.var 0
scoreboard players set $cauterize ca.var 0
scoreboard players set $shrapnel ca.var 0
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

#Sharpnel
execute if score $cu_en_ranged ca.enabler matches 1.. if score $shrapnel ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/shrapnel/master

#These effects will activate from the entity itself before the player call.
execute if score $cu_en_ranged ca.enabler matches 1.. at @s[type=!player] run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag
execute if score $cu_en_ranged ca.enabler matches 1.. at @s[type=!player] run function cartographer_custom_enchantments:enchant_effects/trident_custom_tag

#Flame
#execute if score $flame ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/flame/master

#Concentration
execute if score $concentration ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/concentration/stack

#Punch - Crossbows
execute if score $cu_en_ranged ca.enabler matches 1.. if score $punch ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect


#Current
execute if score $cu_en_ranged ca.enabler matches 1.. if score $current ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/current/master

#Ricochet
execute if score $cu_en_ranged ca.enabler matches 1.. if score $ricochet ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/ricochet/master

#Wavedash
execute if score $cu_en_ranged ca.enabler matches 1.. if score $wavedash ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/wavedash/teleport_start


#Do On Hit Enchantments Here
scoreboard players operation $fire_aspect ca.weapon_var = $fire_aspect ca.var
scoreboard players operation $knockback ca.weapon_var = $knockback ca.var

scoreboard players operation $executioner ca.weapon_var = $executioner ca.var
scoreboard players operation $first_strike ca.weapon_var = $first_strike ca.var
scoreboard players operation $hex_eater ca.weapon_var = $hex_eater ca.var
scoreboard players operation $tempo_theft ca.weapon_var = $tempo_theft ca.var
scoreboard players operation $cauterize ca.weapon_var = $cauterize ca.var

scoreboard players operation $duelist ca.weapon_var = $duelist ca.var
scoreboard players operation $hunter ca.weapon_var = $hunter ca.var
scoreboard players operation $smite ca.weapon_var = $smite ca.var

scoreboard players set $block_fire_aspect ca.weapon_var 1
scoreboard players set $block_knockback ca.weapon_var 1
scoreboard players set $block_punch ca.weapon_var 1
function cartographer_custom_enchantments:enchant_effects/on_hit/ranged_master

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
scoreboard players set $shrapnel ca.var 0
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