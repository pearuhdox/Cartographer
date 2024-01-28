#Grab important enchant data
function cartographer_custom_enchantments:enchant_calls/thrown_potion/recall_enchants

#Use this to set the attacking target
execute as @a if score @s ca.player_id = $player_id ca.registry run tag @s add ca.pot_attacker
execute if score $ranged_damage ca.var matches 1.. run damage @s 0.01 cartographer_custom_enchantments:enchant_damage_bypass by @p[tag=ca.pot_attacker]
tag @a remove ca.pot_attacker

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

#Flame
#execute if score $flame ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/flame/master

#Concentration
execute if score $concentration ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/concentration/stack

#Punch - Crossbows
execute if score $cu_en_ranged ca.enabler matches 1.. if score $punch ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect

#Effects that can be affected by Curse of misfortune, do this check here
scoreboard players operation @s ca.curse_misfortune = $curse_misfortune ca.var

execute unless score @s ca.curse_misfortune matches 1.. run function cartographer_custom_enchantments:enchant_calls/thrown_potion/when_ranged_attack_branch

execute if score @s ca.curse_misfortune matches 1.. run function cartographer_custom_enchantments:enchant_effects/curse_misfortune/other
execute if score @s ca.curse_misfortune matches 1.. if score $success ca.rand_var matches 1.. run function cartographer_custom_enchantments:enchant_calls/thrown_potion/when_ranged_attack_branch

scoreboard players set @s ca.curse_misfortune 0



#Run the Arrow Hit Datapack Hook
#function #minecraft:cartographer_events/player_hit_mob_arrow

#Run the Trident Hit Datapack Hook
#function #minecraft:cartographer_events/player_hit_mob_trident 


#Check this for cleaning Concentration Stacks
scoreboard players add $potion_hit_mob ca.var 1

#Check this for lingering potion did hit check
scoreboard players set $did_linger_inflict ca.var 1