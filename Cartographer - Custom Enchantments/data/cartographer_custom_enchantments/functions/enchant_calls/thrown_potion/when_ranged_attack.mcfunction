#Grab important enchant data
function cartographer_custom_enchantments:enchant_calls/thrown_potion/recall_enchants

#Use this to set the attacking target
execute as @a if score @s ca.player_id = $player_id ca.registry run tag @s add ca.pot_attacker
damage @s 0.01 cartographer_custom_enchantments:enchant_damage_bypass by @p[tag=ca.pot_attacker]
tag @a remove ca.pot_attacker

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

#Executioner
execute if score $executioner ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/executioner/branch

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


#Run the Arrow Hit Datapack Hook
#function #minecraft:cartographer_events/player_hit_mob_arrow

#Run the Trident Hit Datapack Hook
#function #minecraft:cartographer_events/player_hit_mob_trident 


#Check this for cleaning Concentration Stacks
scoreboard players add $potion_hit_mob ca.var 1

#Check this for lingering potion did hit check
scoreboard players set $did_linger_inflict ca.var 1