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

#Do Custom Ranged Damage
execute if score $ranged_damage ca.var matches 1.. run function cartographer_custom_enchantments:attribute_effects/ranged_damage/setup_damage

#Flame
#execute if score $flame ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/flame/master

#Cauterize - Goes first
scoreboard players operation $cauterize ca.ench_var = $cauterize ca.var
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_cauterize] at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/ranged

#Concentration
execute if score $concentration ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/concentration/stack

#Punch - Crossbows
execute if score $cu_en_ranged ca.enabler matches 1.. if score $punch ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect

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

function cartographer_custom_enchantments:enchant_effects/on_hit/ranged_master



#Run the Arrow Hit Datapack Hook
#function #minecraft:cartographer_events/player_hit_mob_arrow

#Run the Trident Hit Datapack Hook
#function #minecraft:cartographer_events/player_hit_mob_trident 


#Check this for cleaning Concentration Stacks
scoreboard players add $potion_hit_mob ca.var 1

#Check this for lingering potion did hit check
scoreboard players set $did_linger_inflict ca.var 1