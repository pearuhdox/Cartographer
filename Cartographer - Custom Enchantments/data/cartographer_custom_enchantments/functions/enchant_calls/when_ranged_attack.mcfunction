#Reset All Scores I am Crying

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

scoreboard players set $luck ca.var 0

scoreboard players set $ranged_damage ca.var 0
scoreboard players set $point_blank ca.attr_ranged 0
scoreboard players set $sharpshot ca.attr_ranged 0

scoreboard players set $first_strike ca.var 0
scoreboard players set $hex_eater ca.var 0

scoreboard players set $curse_misfortune ca.var 0

execute on attacker run scoreboard players operation $attacker_id ca.var = @s ca.player_id

scoreboard players set @s ca.attr_luck 0 

#Grab All Relevant Data from the projectile in question.
scoreboard players set $attacker_find ca.var 0
scoreboard players set $attacker_found ca.var 0

execute at @s as @e[distance=..32,type=#cartographer_custom_enchantments:bow_allowed_projectile,tag=!ca.ranged_damage_trident_replace,nbt=!{inGround:1b},sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/find_branch
execute unless score $attacker_found ca.var matches 1.. at @s as @e[distance=..32,type=snowball,tag=ca.ranged_damage_trident_replace,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/find_branch
execute unless score $attacker_found ca.var matches 1.. at @s as @e[distance=..32,type=trident,nbt=!{inGround:1b},sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/find_branch

#Copy over luck stat
scoreboard players operation @s ca.attr_luck = $luck ca.var

#Copy over aoe stat
scoreboard players operation @s ca.attr_aoe_size = $aoe_size ca.var

#Point Blank - Runs before Custom Damage
execute if score $point_blank ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/point_blank/player_test
#Sharpshot - Runs before Custom Damage
execute if score $sharpshot ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/sharpshot/player_test

scoreboard players set $success ca.attr_random_crit 0
execute if score $random_crit ca.var matches 1.. run function cartographer_custom_enchantments:enchant_calls/ranged_crit
#Random Crit Vfx
execute if score $success ca.attr_random_crit matches 1.. at @s run function cartographer_custom_enchantments:attribute_effects/random_crit/vfx


#Do Custom Ranged Damage
execute if score $ranged_damage ca.var matches 1.. run function cartographer_custom_enchantments:attribute_effects/ranged_damage/setup_damage

#These effects will activate from the entity itself before the player call.
execute at @s[type=!player] run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag
execute at @s[type=!player] run function cartographer_custom_enchantments:enchant_effects/trident_custom_tag

#Flame
#execute if score $flame ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/flame/master

#Concentration
execute if score $concentration ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/concentration/stack

#Punch - Crossbows
execute if score $punch ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect

#Effects that can be affected by Curse of misfortune, do this check here
scoreboard players operation @s ca.curse_misfortune = $curse_misfortune ca.var

execute unless score @s ca.curse_misfortune matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_branch

execute if score @s ca.curse_misfortune matches 1.. run function cartographer_custom_enchantments:enchant_effects/curse_misfortune/other
execute if score @s ca.curse_misfortune matches 1.. if score $success ca.rand_var matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_branch

scoreboard players set @s ca.curse_misfortune 0

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